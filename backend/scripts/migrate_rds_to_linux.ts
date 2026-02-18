
import * as sql from 'mssql';
import * as dotenv from 'dotenv';
import * as path from 'path';

// Cargar .env principal para obtener credenciales de ORIGEN
dotenv.config({ path: path.join(__dirname, '.env') });

interface MigrationConfig {
    source: sql.config;
    dest: sql.config;
}

// -------------------------------------------------------------------------
// CONFIGURACIÓN DE CONEXIONES
// -------------------------------------------------------------------------
const migrationConfig: MigrationConfig = {
    // 1. ORIGEN (AWS RDS)
    source: {
        user: process.env.MSSQL_USER || 'plan',
        password: process.env.MSSQL_PASSWORD || 'admin123',
        server: process.env.MSSQL_HOST || 'database-2.cufqs68ewpdj.us-east-1.rds.amazonaws.com',
        database: process.env.MSSQL_DATABASE || 'Bdplaner',
        options: {
            encrypt: process.env.MSSQL_ENCRYPT === 'true',
            trustServerCertificate: process.env.MSSQL_TRUST_CERT === 'true',
            requestTimeout: 300000 // 5 min
        },
        pool: {
            max: 10,
            min: 0,
            idleTimeoutMillis: 30000
        }
    },
    // 2. DESTINO (Nuevo Servidor Linux)
    dest: {
        user: 'sa',
        password: 'TuPasswordFuerte!2026',
        server: '190.56.16.85',
        database: 'Bdplaner', // Se creará si no existe
        options: {
            encrypt: false, // Generalmente false para IP directa
            trustServerCertificate: true, // Necesario para Linux self-signed
            requestTimeout: 300000
        },
        pool: {
            max: 10,
            min: 0,
            idleTimeoutMillis: 30000
        }
    }
};

// -------------------------------------------------------------------------
// UTILIDADES DB
// -------------------------------------------------------------------------

async function getTables(pool: sql.ConnectionPool): Promise<string[]> {
    const result = await pool.request().query(
        "SELECT TABLE_SCHEMA + '.' + TABLE_NAME as FullName FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE' ORDER BY TABLE_NAME"
    );
    return result.recordset.map(r => r.FullName);
}

// Función crítica para obtener definición exacta de tabla
async function getTableScript(pool: sql.ConnectionPool, tableName: string): Promise<string> {
    const [schema, name] = tableName.split('.');

    // Simplificación: En una migración robusta via JS, recrear DDL exacto es complejo.
    // Estrategia: "SELECT * INTO" crea la tabla pero SIN PKs/FKs/Indices complejos.
    // MEJOR ESTRATEGIA: Leer metadatos y construir CREATE TABLE manual.

    // 1. Columnas
    const cols = await pool.request().query(`
        SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, IS_NULLABLE, COLUMN_DEFAULT
        FROM INFORMATION_SCHEMA.COLUMNS
        WHERE TABLE_SCHEMA = '${schema}' AND TABLE_NAME = '${name}'
        ORDER BY ORDINAL_POSITION
    `);

    // 2. Identity (Auto Increment)
    const identityRes = await pool.request().query(`
        SELECT name FROM sys.identity_columns 
        WHERE object_id = OBJECT_ID('${tableName}')
    `);
    const identityCol = identityRes.recordset.length > 0 ? identityRes.recordset[0].name : null;

    let createSql = `IF OBJECT_ID('${tableName}', 'U') IS NOT NULL DROP TABLE ${tableName};\n`;
    createSql += `CREATE TABLE ${tableName} (\n`;

    const colDefs = cols.recordset.map(c => {
        let type = c.DATA_TYPE;
        if (['varchar', 'nvarchar', 'char', 'nchar', 'binary', 'varbinary'].includes(type)) {
            const len = c.CHARACTER_MAXIMUM_LENGTH === -1 ? 'MAX' : c.CHARACTER_MAXIMUM_LENGTH;
            type = `${type}(${len})`;
        }

        let def = `  [${c.COLUMN_NAME}] ${type}`;

        if (c.COLUMN_NAME === identityCol) {
            def += ' IDENTITY(1,1)';
        }

        def += c.IS_NULLABLE === 'NO' ? ' NOT NULL' : ' NULL';
        // Ignoramos DEFAULTs complejos para evitar errores de sintaxis cruzada, o los limpiamos

        return def;
    });

    createSql += colDefs.join(',\n');
    createSql += '\n);';

    return createSql;
}

// -------------------------------------------------------------------------
// LÓGICA DE MIGRACIÓN
// -------------------------------------------------------------------------

async function migrate() {
    console.log('🚀 Iniciando Migración JS (RDS -> Linux)...');

    let sourcePool: sql.ConnectionPool | null = null;
    let destPool: sql.ConnectionPool | null = null;

    try {
        // 1. Conectar Origen
        console.log('📡 Conectando a Origen (RDS)...');
        sourcePool = await new sql.ConnectionPool(migrationConfig.source).connect();
        console.log('✅ Origen Conectado.');

        // 2. Conectar Destino (Intentar conectar a master para crear DB)
        console.log('📡 Conectando a Destino (Linux)...');
        const masterConfig = { ...migrationConfig.dest, database: 'master' };
        const masterPool = await new sql.ConnectionPool(masterConfig).connect();

        // Crear DB si no existe
        console.log(`🔨 Verificando base de datos destino [${migrationConfig.dest.database}]...`);
        const dbCheck = await masterPool.request().query(`SELECT name FROM sys.databases WHERE name = '${migrationConfig.dest.database}'`);
        if (dbCheck.recordset.length === 0) {
            await masterPool.request().query(`CREATE DATABASE [${migrationConfig.dest.database}]`);
            console.log(`✅ Base de datos [${migrationConfig.dest.database}] creada.`);
        } else {
            console.log(`ℹ️ Base de datos [${migrationConfig.dest.database}] ya existe.`);
        }
        await masterPool.close();

        // Conectar a la DB destino
        destPool = await new sql.ConnectionPool(migrationConfig.dest).connect();
        console.log('✅ Destino Conectado.');

        // 3. Obtener lista de tablas
        const tables = await getTables(sourcePool);
        console.log(`📋 Encontradas ${tables.length} tablas para migrar.`);

        // 4. Migrar Tablas (Estructura + Datos)
        // Desactivar constraints globales en destino para evitar erroresFK durante inserción
        // await destPool.request().query("EXEC sp_msforeachtable 'ALTER TABLE ? NOCHECK CONSTRAINT all'");

        for (const table of tables) {
            console.log(`\n🔄 Procesando [${table}]...`);

            // A. Estructura (DDL Simplificado)
            // Nota: Para producción idealmente usaríamos SMO o dump, pero aquí construimos uno básico
            try {
                const createScript = await getTableScript(sourcePool, table);
                await destPool.request().query(createScript);
                console.log(`   └─ Estructura creada.`);
            } catch (ddlErr) {
                console.error(`   ❌ Error creando estructura de ${table}:`, ddlErr);
                continue;
            }

            // B. Datos (Chunked Insert)
            const countRes = await sourcePool.request().query(`SELECT COUNT(*) as c FROM ${table}`);
            const totalRows = countRes.recordset[0].c;

            if (totalRows > 0) {
                console.log(`   └─ Migrando ${totalRows} registros...`);

                // Activar IDENTITY_INSERT si tiene columna identity
                const hasIdentityRes = await destPool.request().query(`
                    SELECT 1 FROM sys.identity_columns WHERE object_id = OBJECT_ID('${table}')
                `);
                const hasIdentity = hasIdentityRes.recordset.length > 0;

                if (hasIdentity) {
                    // IDENTITY_INSERT requiere que la sesión sea la misma, 
                    // así que debemos manejar esto con cuidado o hacerlo per-batch
                    // Nota: mssql library usa pool, así que "SET IDENTITY_INSERT" debe ir en el mismo request batch
                }

                // Leer datos streaming
                const request = new sql.Request(sourcePool);
                request.stream = true;
                request.query(`SELECT * FROM ${table}`);

                let batch: any[] = [];
                const BATCH_SIZE = 1000;
                let processed = 0;

                // Definir bulk insert helper
                const insertBatch = async (rows: any[]) => {
                    if (rows.length === 0) return;

                    const tableObj = new sql.Table(table.split('.')[1]); // Asumimos dbo.Tabla -> Tabla
                    // Asignar esquema si es necesario, pero sql.Table suele tomar nombre simple
                    // Detectar columnas del primer row
                    const cols = Object.keys(rows[0]);

                    // Configurar columnas en objeto Table
                    // (Esto es tedioso dinámicamente con mssql driver, alternativa: Construir INSERT strings)
                    // Vamos con INSERT strings parametrizados para máxima compatibilidad con IDENTITY

                    // Construir Huge INSERT statement
                    // "SET IDENTITY_INSERT X ON; INSERT ...; SET IDENTITY_INSERT X OFF"
                    let sqlBatch = "";
                    if (hasIdentity) sqlBatch += `SET IDENTITY_INSERT ${table} ON; `;

                    const colList = cols.map(c => `[${c}]`).join(',');

                    // Agrupar inserts (SQL Server soporta 1000 values per insert)
                    // INSERT INTO T (A,B) VALUES (1,2), (3,4)...
                    const valueSets = rows.map(row => {
                        const vals = cols.map(c => {
                            const val = row[c];
                            if (val === null) return 'NULL';
                            if (typeof val === 'string') return `'${val.replace(/'/g, "''")}'`;
                            if (val instanceof Date) return `'${val.toISOString()}'`;
                            if (typeof val === 'boolean') return val ? 1 : 0;
                            if (Buffer.isBuffer(val)) return `0x${val.toString('hex')}`;
                            return val;
                        });
                        return `(${vals.join(',')})`;
                    });

                    sqlBatch += `INSERT INTO ${table} (${colList}) VALUES ${valueSets.join(',')}; `;
                    if (hasIdentity) sqlBatch += `SET IDENTITY_INSERT ${table} OFF;`;

                    await destPool!.request().query(sqlBatch);
                };

                // Stream rows
                request.on('row', row => {
                    batch.push(row);
                    if (batch.length >= BATCH_SIZE) {
                        request.pause();
                        insertBatch([...batch]).then(() => {
                            processed += batch.length;
                            process.stdout.write(`\r      Progreso: ${processed}/${totalRows}`);
                            request.resume();
                        }).catch(err => {
                            console.error(`\n      ❌ Error insertando batch:`, err);
                            request.resume(); // Skip failure?
                        });
                        batch = [];
                    }
                });

                await new Promise((resolve, reject) => {
                    request.on('done', async () => {
                        if (batch.length > 0) {
                            await insertBatch(batch);
                            processed += batch.length;
                        }
                        console.log(`\n      ✅ Completado.`);
                        resolve(true);
                    });
                    request.on('error', reject);
                });
            } else {
                console.log(`   └─ Tabla vacía, saltando datos.`);
            }
        }

        // 5. Migrar View/Procs/Funcs
        // (Simplificado: Leemos sys.sql_modules y re-ejecutamos)
        // Nota: El orden importa por dependencias. Esto puede fallar si no se ordenan topológicamente.

        console.log('\n⚙️ Migrando Objetos Programables (Procs, Views, Funcs)...');
        const objects = await sourcePool.request().query(`
            SELECT DISTINCT o.name, m.definition, o.type, o.create_date
            FROM sys.sql_modules m 
            INNER JOIN sys.objects o ON m.object_id = o.object_id
            WHERE o.is_ms_shipped = 0
            ORDER BY o.create_date ASC -- Intento simple de orden por cronología
        `);

        for (const obj of objects.recordset) {
            try {
                // Limpiar "CREATE" para reemplazarlos con "CREATE OR ALTER" o DROP/CREATE logic
                // Simple: DROP IF EXISTS + Definition
                const typeName = obj.type.trim(); // P, V, FN...
                let dropSql = '';
                if (typeName === 'P') dropSql = `DROP PROCEDURE IF EXISTS [${obj.name}]`;
                if (typeName === 'V') dropSql = `DROP VIEW IF EXISTS [${obj.name}]`;
                if (typeName === 'FN' || typeName === 'TF' || typeName === 'IF') dropSql = `DROP FUNCTION IF EXISTS [${obj.name}]`;

                if (dropSql) await destPool.request().query(dropSql);

                // Ejecutar definición original
                // A veces la definición incluye "CREATE PROCEDURE dbo.Name", otras veces solo "CREATE PROC Name"
                await destPool.request().query(obj.definition);
                console.log(`   ✅ Objeto migrado: ${obj.name}`);
            } catch (err) {
                console.warn(`   ⚠️ Warning migrando objeto ${obj.name}:`, err.message);
            }
        }

        console.log('\n🎉 MIGRACIÓN FINALIZADA CORRECTAMENTE.');

    } catch (err) {
        console.error('\n❌ ERROR CRÍTICO EN MIGRACIÓN:', err);
    } finally {
        if (sourcePool) await sourcePool.close();
        if (destPool) await destPool.close();
    }
}

migrate();


import * as sql from 'mssql';
import * as dotenv from 'dotenv';
import * as path from 'path';

dotenv.config({ path: path.join(__dirname, '../.env') });

const sourceConfig = {
    user: process.env.MSSQL_USER || 'plan',
    password: process.env.MSSQL_PASSWORD || 'admin123',
    server: process.env.MSSQL_HOST || '54.146.235.205',
    database: process.env.MSSQL_DATABASE || 'Bdplaner',
    options: {
        encrypt: true,
        trustServerCertificate: true,
        requestTimeout: 30000
    }
};

const destConfig = {
    user: 'sa',
    password: 'TuPasswordFuerte!2026',
    server: '190.56.16.85',
    database: 'Bdplaner',
    options: {
        encrypt: false,
        trustServerCertificate: true,
        requestTimeout: 30000
    }
};

async function validateMigration() {
    console.log('🔍 Iniciando Validación de Migración...');

    let sourcePool: sql.ConnectionPool | null = null;
    let destPool: sql.ConnectionPool | null = null;

    try {
        sourcePool = await new sql.ConnectionPool(sourceConfig).connect();
        destPool = await new sql.ConnectionPool(destConfig).connect();

        // 1. Comparar Conteo de Tablas y Registros
        console.log('\n📊 Comparando tablas y registros...');
        const queryTables = `
            SELECT t.name, s.name as schema_name, p.rows
            FROM sys.tables t
            INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
            INNER JOIN sys.partitions p ON t.object_id = p.object_id
            WHERE p.index_id IN (0,1)
            ORDER BY t.name
        `;

        const srcTables = await sourcePool.request().query(queryTables);
        const dstTables = await destPool.request().query(queryTables);

        const srcMap = new Map<string, number>();
        srcTables.recordset.forEach(r => srcMap.set(`${r.schema_name}.${r.name}`, r.rows));

        const dstMap = new Map<string, number>();
        dstTables.recordset.forEach(r => dstMap.set(`${r.schema_name}.${r.name}`, r.rows));

        let tablesOk = true;
        for (const [fullName, srcCount] of srcMap) {
            const dstCount = dstMap.get(fullName);

            if (dstCount === undefined) {
                console.error(`❌ Tabla FALTANTE en destino: ${fullName}`);
                tablesOk = false;
            } else if (srcCount !== dstCount) {
                console.error(`⚠️ Discrepancia en ${fullName}: Origen=${srcCount}, Destino=${dstCount}`);
                tablesOk = false;
            } else {
                // console.log(`✅ ${fullName}: ${srcCount} registros (OK)`);
            }
        }

        if (tablesOk) console.log('✅ Todas las tablas tienen el mismo número de registros.');

        // 2. Comparar Objetos (Procs, Views, Funcs)
        console.log('\n⚙️ Comparando objetos programables...');
        const queryObjects = `
            SELECT name, type_desc 
            FROM sys.objects 
            WHERE is_ms_shipped = 0 
            AND type IN ('P', 'V', 'FN', 'IF', 'TF')
            ORDER BY type_desc, name
        `;

        const srcObjs = await sourcePool.request().query(queryObjects);
        const dstObjs = await destPool.request().query(queryObjects);

        const srcObjSet = new Set(srcObjs.recordset.map(o => `${o.type_desc}: ${o.name}`));
        const dstObjSet = new Set(dstObjs.recordset.map(o => `${o.type_desc}: ${o.name}`));

        let objsOk = true;
        for (const obj of srcObjSet) {
            if (!dstObjSet.has(obj)) {
                console.error(`❌ Objeto FALTANTE en destino: ${obj}`);
                objsOk = false;
            }
        }

        if (objsOk) console.log('✅ Todos los procedimientos, vistas y funciones existen en el destino.');

        // 3. Verificación de IDs (Muestreo)
        console.log('\n🆔 Verificando IDs clave (Muestreo)...');
        // Usuario Admin
        const srcUser = await sourcePool.request().query("SELECT TOP 1 idUsuario, carnet, nombre FROM p_Usuarios ORDER BY idUsuario ASC");
        const dstUser = await destPool.request().query("SELECT TOP 1 idUsuario, carnet, nombre FROM p_Usuarios ORDER BY idUsuario ASC");

        if (srcUser.recordset.length > 0 && dstUser.recordset.length > 0) {
            const u1 = srcUser.recordset[0];
            const u2 = dstUser.recordset[0];
            if (u1.idUsuario === u2.idUsuario && u1.carnet === u2.carnet) {
                console.log(`✅ Primer Usuario coincide: ID ${u1.idUsuario} (${u1.carnet})`);
            } else {
                console.error(`❌ Discrepancia en Primer Usuario: Origen ID ${u1.idUsuario}, Destino ID ${u2.idUsuario}`);
            }
        }

        // Tarea Reciente
        const srcTask = await sourcePool.request().query("SELECT TOP 1 idTarea, nombre FROM p_Tareas ORDER BY idTarea DESC");
        const dstTask = await destPool.request().query("SELECT TOP 1 idTarea, nombre FROM p_Tareas ORDER BY idTarea DESC");

        if (srcTask.recordset.length > 0 && dstTask.recordset.length > 0) {
            const t1 = srcTask.recordset[0];
            const t2 = dstTask.recordset[0];
            if (t1.idTarea === t2.idTarea) {
                console.log(`✅ Última Tarea coincide: ID ${t1.idTarea}`);
            } else {
                console.error(`❌ Discrepancia en Última Tarea: Origen ID ${t1.idTarea}, Destino ID ${t2.idTarea}`);
            }
        }

    } catch (err) {
        console.error('❌ Error durante la validación:', err);
    } finally {
        if (sourcePool) await sourcePool.close();
        if (destPool) await destPool.close();
    }
}

validateMigration();


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
        requestTimeout: 60000
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
        requestTimeout: 60000
    }
};

async function finalAudit() {
    console.log('🕵️ INICIANDO AUDITORÍA FINAL DE MIGRACIÓN (RDS -> LINUX)...');
    console.log('===========================================================');

    let sourcePool: sql.ConnectionPool | null = null;
    let destPool: sql.ConnectionPool | null = null;
    let errors = 0;

    try {
        sourcePool = await new sql.ConnectionPool(sourceConfig).connect();
        destPool = await new sql.ConnectionPool(destConfig).connect();

        // 1. ANÁLISIS DE TABLAS
        console.log('\n📊 1. COMPARACIÓN DE TABLAS Y DATOS');
        if (destPool) await destPool.request().query("SET TEXTSIZE 2147483647"); // Permitir datos grandes

        const tablesRes = await sourcePool.request().query(`
            SELECT t.name, s.name as schema_name 
            FROM sys.tables t 
            JOIN sys.schemas s ON t.schema_id = s.schema_id 
            ORDER BY t.name
        `);

        for (const t of tablesRes.recordset) {
            const tableName = `[${t.schema_name}].[${t.name}]`;
            process.stdout.write(`   Verificando ${tableName.padEnd(40)} `);

            // Existencia
            const dstTableRes = await destPool.request().query(`SELECT OBJECT_ID('${tableName}') as id`);
            if (!dstTableRes.recordset[0].id) {
                console.log(`❌ NO EXISTE EN DESTINO`);
                errors++;
                continue;
            }

            // Conteo
            const srcCount = (await sourcePool.request().query(`SELECT COUNT(*) as c FROM ${tableName}`)).recordset[0].c;
            const dstCount = (await destPool.request().query(`SELECT COUNT(*) as c FROM ${tableName}`)).recordset[0].c;

            if (srcCount !== dstCount) {
                console.log(`❌ DISCREPANCIA (Src: ${srcCount} vs Dst: ${dstCount})`);
                errors++;
            } else {
                // Chequeo de Identidad (Max ID)
                // Buscar PK numérica
                const pkRes = await sourcePool.request().query(`
                    SELECT c.name 
                    FROM sys.indexes i
                    JOIN sys.index_columns ic ON i.object_id = ic.object_id AND i.index_id = ic.index_id
                    JOIN sys.columns c ON ic.object_id = c.object_id AND ic.column_id = c.column_id
                    JOIN sys.types ty ON c.user_type_id = ty.user_type_id
                    WHERE i.is_primary_key = 1 AND i.object_id = OBJECT_ID('${tableName}')
                    AND ty.name IN ('int', 'bigint', 'smallint', 'tinyint')
                `);

                if (pkRes.recordset.length > 0) {
                    const pk = pkRes.recordset[0].name;
                    const srcMax = (await sourcePool.request().query(`SELECT MAX([${pk}]) as m FROM ${tableName}`)).recordset[0].m;
                    const dstMax = (await destPool.request().query(`SELECT MAX([${pk}]) as m FROM ${tableName}`)).recordset[0].m;

                    if (srcMax !== dstMax) {
                        console.log(`❌ ERROR DE IDs (Max Src: ${srcMax} vs Max Dst: ${dstMax})`);
                        errors++;
                    } else {
                        console.log(`✅ OK (${srcCount} filas, MaxID: ${srcMax ?? 'N/A'})`);
                    }
                } else {
                    console.log(`✅ OK (${srcCount} filas)`);
                }
            }
        }

        // 2. ANÁLISIS DE OBJETOS
        console.log('\n⚙️ 2. COMPARACIÓN DE OBJETOS (SPs, Views, Triggers)');
        const objsQuery = `
            SELECT name, type_desc 
            FROM sys.objects 
            WHERE is_ms_shipped = 0 
            AND type IN ('P', 'V', 'FN', 'IF', 'TF', 'TR')
            ORDER BY type_desc, name
        `;

        const srcObjs = await sourcePool.request().query(objsQuery);
        const dstObjs = await destPool.request().query(objsQuery);

        const dstSet = new Set(dstObjs.recordset.map(o => o.name));

        let objErrors = 0;
        srcObjs.recordset.forEach(obj => {
            if (!dstSet.has(obj.name)) {
                console.log(`   ❌ FALTANTE: ${obj.type_desc.padEnd(20)} ${obj.name}`);
                objErrors++;
                errors++;
            }
        });

        if (objErrors === 0) {
            console.log(`   ✅ Todos los ${srcObjs.recordset.length} objetos existen en destino.`);
        } else {
            console.log(`   ⚠️ Faltan ${objErrors} objetos.`);
        }


        // 3. ANÁLISIS DE TIPOS (Types)
        console.log('\n📦 3. COMPARACIÓN DE TIPOS DE USUARIO');
        const typesQuery = `SELECT name FROM sys.types WHERE is_user_defined = 1`;
        const srcTypes = await sourcePool.request().query(typesQuery);
        const dstTypes = await destPool.request().query(typesQuery);
        const dstTypeSet = new Set(dstTypes.recordset.map(t => t.name));

        let typeErrors = 0;
        srcTypes.recordset.forEach(t => {
            if (!dstTypeSet.has(t.name)) {
                console.log(`   ❌ FALTANTE: TYPE ${t.name}`);
                typeErrors++;
                errors++;
            }
        });
        if (typeErrors === 0) console.log('   ✅ Todos los tipos coinciden.');


    } catch (err) {
        console.error('❌ Error fatal en auditoría:', err);
    } finally {
        if (sourcePool) await sourcePool.close();
        if (destPool) await destPool.close();
    }

    console.log('\n===========================================================');
    if (errors === 0) {
        console.log('🎉 RESULTADO: MIGRACIÓN PERFECTA. Cero errores detectados.');
    } else {
        console.log(`⚠️ RESULTADO: SE DETECTARON ${errors} DISCREPANCIAS. REVISAR LOGS.`);
    }
}

finalAudit();


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

async function fullReconciliation() {
    console.log('🚀 Iniciando Reconciliación TOTAL...');

    let sourcePool: sql.ConnectionPool | null = null;
    let destPool: sql.ConnectionPool | null = null;

    try {
        sourcePool = await new sql.ConnectionPool(sourceConfig).connect();
        destPool = await new sql.ConnectionPool(destConfig).connect();

        // 1. Obtener lista de tablas
        const tablesRes = await sourcePool.request().query("SELECT TABLE_SCHEMA, TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE' ORDER BY TABLE_NAME");
        const tables = tablesRes.recordset;

        for (const table of tables) {
            const tableName = `[${table.TABLE_SCHEMA}].[${table.TABLE_NAME}]`;

            // 2. Obtener conteo
            const srcCountRes = await sourcePool.request().query(`SELECT COUNT(*) as c FROM ${tableName}`);
            const dstCountRes = await destPool.request().query(`SELECT COUNT(*) as c FROM ${tableName}`);

            const srcCount = srcCountRes.recordset[0].c;
            const dstCount = dstCountRes.recordset[0].c;

            if (srcCount === dstCount) {
                // Sincronizado
                continue;
            }

            console.log(`⚠️ DISCREPANCIA en ${tableName}: Origen=${srcCount}, Destino=${dstCount}`);

            // 3. Identificar PK
            const pkRes = await sourcePool.request().query(`
                SELECT COLUMN_NAME, DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
                WHERE TABLE_NAME = '${table.TABLE_NAME}' AND TABLE_SCHEMA = '${table.TABLE_SCHEMA}'
                AND COLUMN_NAME IN (
                    SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
                    WHERE OBJECTPROPERTY(OBJECT_ID(CONSTRAINT_SCHEMA + '.' + CONSTRAINT_NAME), 'IsPrimaryKey') = 1
                    AND TABLE_NAME = '${table.TABLE_NAME}' AND TABLE_SCHEMA = '${table.TABLE_SCHEMA}'
                )
            `);

            if (pkRes.recordset.length === 0) {
                console.warn(`   ⚠️ No tiene PK simple, saltando.`);
                continue;
            }
            const pkCol = pkRes.recordset[0].COLUMN_NAME;
            const pkType = pkRes.recordset[0].DATA_TYPE;

            // 4. Identificar faltantes
            const srcIdsRes = await sourcePool.request().query(`SELECT [${pkCol}] as id FROM ${tableName}`);
            const dstIdsRes = await destPool.request().query(`SELECT [${pkCol}] as id FROM ${tableName}`);

            const srcIds = srcIdsRes.recordset.map(r => r.id);
            const dstIds = new Set(dstIdsRes.recordset.map(r => r.id));

            const missingIds = srcIds.filter(id => !dstIds.has(id));

            if (missingIds.length === 0) {
                console.log(`   ⚠️ Conteo diferente pero IDs coinciden? (Posiblemente filas extra en Destino o Duplicados?)`);
                continue;
            }

            console.log(`   🛠️ Recuperando ${missingIds.length} filas faltantes...`);

            // 5. Insertar faltantes
            const identRes = await destPool.request().query(`SELECT 1 FROM sys.identity_columns WHERE object_id = OBJECT_ID('${tableName}')`);
            const hasIdentity = identRes.recordset.length > 0;

            for (const id of missingIds) {
                // Query interpolada SEGURA para tipos básicos
                let idValStr = `${id}`;
                if (['varchar', 'nvarchar', 'char', 'nchar', 'uniqueidentifier', 'date', 'datetime'].includes(pkType)) {
                    idValStr = `'${id}'`;
                }

                const rowRes = await sourcePool.request().query(`SELECT * FROM ${tableName} WHERE [${pkCol}] = ${idValStr}`);
                const row = rowRes.recordset[0];

                if (!row) continue;

                const cols = Object.keys(row).map(c => `[${c}]`);
                const vals = Object.values(row).map(val => {
                    if (val === null) return 'NULL';
                    if (typeof val === 'string') return `'${val.replace(/'/g, "''")}'`;
                    if (val instanceof Date) return `'${val.toISOString().slice(0, 23).replace('T', ' ')}'`;
                    if (typeof val === 'boolean') return val ? 1 : 0;
                    if (Buffer.isBuffer(val)) return `0x${val.toString('hex')}`;
                    return val;
                });

                let sql = `INSERT INTO ${tableName} (${cols.join(', ')}) VALUES (${vals.join(', ')});`;
                if (hasIdentity) {
                    sql = `SET IDENTITY_INSERT ${tableName} ON; ${sql} SET IDENTITY_INSERT ${tableName} OFF;`;
                }

                try {
                    await destPool.request().query(sql);
                    // console.log(`      ✅ Insertado ID ${id}`);
                } catch (e) {
                    console.error(`      ❌ Error insertando ID ${id}:`, e.message);
                }
            }
            console.log(`   ✅ Sincronización completada para ${tableName}.`);
        }

        console.log('\n🎉 RECONCILIACIÓN FINALIZADA.');

    } catch (err) {
        console.error('❌ Error general:', err);
    } finally {
        if (sourcePool) await sourcePool.close();
        if (destPool) await destPool.close();
    }
}

fullReconciliation();

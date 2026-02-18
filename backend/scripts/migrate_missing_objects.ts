
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

async function migrateMissingObjects() {
    console.log('⚙️ Migrando Objetos Faltantes...');

    let sourcePool: sql.ConnectionPool | null = null;
    let destPool: sql.ConnectionPool | null = null;

    try {
        sourcePool = await new sql.ConnectionPool(sourceConfig).connect();
        destPool = await new sql.ConnectionPool(destConfig).connect();

        // 1. Obtener lista de objetos en ambos lados
        const query = `SELECT name, type, type_desc FROM sys.objects WHERE is_ms_shipped = 0 AND type IN ('P', 'V', 'FN', 'IF', 'TF')`;
        const srcObjs = await sourcePool.request().query(query);
        const dstObjs = await destPool.request().query(query);

        const dstSet = new Set(dstObjs.recordset.map(o => o.name));
        const missing = srcObjs.recordset.filter(o => !dstSet.has(o.name));

        if (missing.length === 0) {
            console.log('✅ No faltan objetos.');
            return;
        }

        console.log(`⚠️ Faltan ${missing.length} objetos: ${missing.map(o => o.name).join(', ')}`);

        // 2. Migrar cada uno
        for (const obj of missing) {
            console.log(`   Migrando ${obj.type_desc}: ${obj.name}...`);

            // Obtener definición
            const defRes = await sourcePool.request().query(`SELECT definition FROM sys.sql_modules WHERE object_id = OBJECT_ID('${obj.name}')`);
            let definition = defRes.recordset[0]?.definition;

            if (!definition) {
                console.warn(`      ❌ No se encontró definición para ${obj.name}`);
                continue;
            }

            // Limpiar CREATE/ALTER
            // SQL Server permite "CREATE OR ALTER" en versiones recientes (2016+). RDS y 2022 lo soportan.
            // Si la definición empieza con CREATE, la reemplazamos con CREATE OR ALTER para evitar errores si ya existe (aunque sabemos que falta).
            // Pero si falta, CREATE está bien.

            try {
                await destPool.request().query(definition);
                console.log(`      ✅ Creado exitosamente.`);
            } catch (err) {
                console.error(`      ❌ Error creando ${obj.name}:`, err.message);
            }
        }

    } catch (err) {
        console.error('❌ Error general:', err);
    } finally {
        if (sourcePool) await sourcePool.close();
        if (destPool) await destPool.close();
    }
}

migrateMissingObjects();

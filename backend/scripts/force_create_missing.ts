
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

async function forceCreateMissing() {
    console.log('🔧 Intentando Recuperación Forzada de Objetos Inv_* ...');

    let sourcePool: sql.ConnectionPool | null = null;
    let destPool: sql.ConnectionPool | null = null;

    try {
        sourcePool = await new sql.ConnectionPool(sourceConfig).connect();
        destPool = await new sql.ConnectionPool(destConfig).connect();

        const targets = [
            'Inv_sp_dashboard_resumen',
            'Inv_sp_rep_ot_sla_tiempos'
        ];

        for (const name of targets) {
            console.log(`\n📄 Obteniendo definición de ${name}...`);
            const defRes = await sourcePool.request().query(`SELECT definition FROM sys.sql_modules WHERE object_id = OBJECT_ID('${name}')`);

            if (defRes.recordset.length === 0) {
                console.error(`   ❌ No encontrado en origen.`);
                continue;
            }

            let def = defRes.recordset[0].definition;

            // Intentar creación directa
            try {
                // Primero DROP para evitar conflictos de "CREATE must be first statement" si usamos sp_executesql
                await destPool.request().query(`DROP PROCEDURE IF EXISTS ${name}`);

                // Ejecutar CREATE
                await destPool.request().query(def);
                console.log(`   ✅ ${name} CREADO EXITOSAMENTE.`);
            } catch (err) {
                console.error(`   ❌ Falló creación de ${name}:`);
                console.error(`      Error: ${err.message}`);

                // Análisis de error común: Columnas inválidas
                if (err.message.includes('Invalid column name')) {
                    console.log('      💡 Pista: Parece que este SP referencia columnas que no existen en las tablas migradas.');
                    console.log('      Posible causa: El esquema de tablas en RDS cambió pero el SP quedó desactualizado.');
                }
            }
        }

    } catch (err) {
        console.error('❌ Error general:', err);
    } finally {
        if (sourcePool) await sourcePool.close();
        if (destPool) await destPool.close();
    }
}

forceCreateMissing();

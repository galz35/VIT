
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
        requestTimeout: 10000
    }
};

const destConfig = {
    user: 'sa',
    password: 'TuPasswordFuerte!2026',
    server: '190.56.16.85',
    database: 'master', // Probamos master primero
    options: {
        encrypt: false,
        trustServerCertificate: true,
        requestTimeout: 10000
    }
};

async function testConnections() {
    console.log('🔍 Probando conexiones...');

    // 1. Probar Origen
    console.log('\n--- ORIGEN (AWS RDS) ---');
    try {
        const pool = await sql.connect(sourceConfig);
        console.log('✅ Conexión exitosa a RDS.');
        const res = await pool.request().query("SELECT COUNT(*) as count FROM sys.tables");
        console.log(`📊 Tablas encontradas en RDS: ${res.recordset[0].count}`);
        await pool.close();
    } catch (err) {
        console.error('❌ Error conectando a RDS:', err.message);
    }

    // 2. Probar Destino
    console.log('\n--- DESTINO (LINUX SERVER) ---');
    try {
        const pool = await sql.connect(destConfig);
        console.log('✅ Conexión exitosa al Servidor Linux.');
        const res = await pool.request().query("SELECT @@VERSION as version");
        console.log(`🖥️ Versión SQL Server: ${res.recordset[0].version.split('\n')[0]}`);

        // Verificar si la base de datos existe
        const dbRes = await pool.request().query("SELECT name FROM sys.databases WHERE name = 'Bdplaner'");
        if (dbRes.recordset.length > 0) {
            console.log('📂 La base de datos "Bdplaner" YA existe en el destino.');
        } else {
            console.log('📂 La base de datos "Bdplaner" NO existe (el script de migración la creará).');
        }

        await pool.close();
    } catch (err) {
        console.error('❌ Error conectando al Servidor Linux:', err.message);
        console.log('💡 Sugerencia: Verifica que el puerto 1433 esté abierto en el firewall de Linux y que el usuario sa esté habilitado.');
    }
}

testConnections();

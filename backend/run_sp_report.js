
const sql = require('mssql');
require('dotenv').config();

async function runSP() {
    const config = {
        server: process.env.MSSQL_HOST,
        port: parseInt(process.env.MSSQL_PORT),
        user: process.env.MSSQL_USER,
        password: process.env.MSSQL_PASSWORD,
        database: process.env.MSSQL_DATABASE,
        options: {
            encrypt: process.env.MSSQL_ENCRYPT === 'true',
            trustServerCertificate: true
        }
    };

    try {
        let pool = await sql.connect(config);
        const carnet = '1008269';
        const fecha = new Date().toISOString().split('T')[0];

        console.log(`\n=== EJECUTANDO sp_Equipo_ObtenerInforme PARA ${carnet} CON FECHA ${fecha} ===`);
        let result = await pool.request()
            .input('carnetsList', sql.NVarChar, carnet)
            .input('fecha', sql.DateTime, new Date(fecha))
            .execute('sp_Equipo_ObtenerInforme');

        console.log(result.recordset);

        await sql.close();
    } catch (err) {
        console.error(err);
    }
}

runSP();

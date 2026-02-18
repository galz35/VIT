
const sql = require('mssql');
require('dotenv').config();

async function getSPDefinition() {
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

        console.log('--- DEFINICION DE sp_Equipo_ObtenerInforme ---');
        let res = await pool.request()
            .input('name', sql.NVarChar, 'sp_Equipo_ObtenerInforme')
            .query("SELECT OBJECT_DEFINITION(OBJECT_ID(@name)) as definition");

        console.log(res.recordset[0].definition);

        await sql.close();
    } catch (err) {
        console.error(err);
    }
}

getSPDefinition();

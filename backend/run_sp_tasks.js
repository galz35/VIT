
const sql = require('mssql');
require('dotenv').config();

async function runSPTasks() {
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

        console.log(`\n=== EJECUTANDO sp_Tareas_ObtenerMultiplesUsuarios PARA ${carnet} ===`);
        let result = await pool.request()
            .input('carnetsList', sql.NVarChar, carnet)
            .execute('sp_Tareas_ObtenerMultiplesUsuarios');

        console.log('Total de tareas devueltas por el SP:', result.recordset.length);

        // Count by state
        const stats = {};
        result.recordset.forEach(t => {
            stats[t.estado] = (stats[t.estado] || 0) + 1;
        });
        console.log('Estadísticas por estado:', stats);

        await sql.close();
    } catch (err) {
        console.error(err);
    }
}

runSPTasks();

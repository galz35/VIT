
const sql = require('mssql');
require('dotenv').config();

async function debugIslenyV2() {
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

        console.log(`\n=== ANALIZANDO DUPLICADOS EN ASIGNACIONES PARA CARNET ${carnet} ===`);
        let dupResult = await pool.request()
            .input('carnet', sql.NVarChar, carnet)
            .query(`
                SELECT idTarea, COUNT(*) as conteo
                FROM p_TareaAsignados
                WHERE carnet = @carnet
                GROUP BY idTarea
                HAVING COUNT(*) > 1
            `);

        if (dupResult.recordset.length > 0) {
            console.log('¡ENCONTRADOS DUPLICADOS!');
            console.log(dupResult.recordset);

            const taskIds = dupResult.recordset.map(r => r.idTarea).join(',');
            let details = await pool.request().query(`
                SELECT idTarea, carnet, tipo 
                FROM p_TareaAsignados 
                WHERE carnet = '${carnet}' AND idTarea IN (${taskIds})
            `);
            console.log('Detalles de duplicados:');
            console.log(details.recordset);
        } else {
            console.log('No se encontraron idTarea duplicados en p_TareaAsignados para este carnet.');
        }

        console.log('\n--- VERIFICANDO TODOS LOS ESTADOS DE TAREAS ACTIVAS ---');
        let statusResult = await pool.request()
            .input('carnet', sql.NVarChar, carnet)
            .query(`
                SELECT t.estado, COUNT(*) as total
                FROM p_Tareas t
                INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
                WHERE ta.carnet = @carnet AND t.activo = 1
                GROUP BY t.estado
            `);
        console.log(statusResult.recordset);

        await sql.close();
    } catch (err) {
        console.error(err);
    }
}

debugIslenyV2();

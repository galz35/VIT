
const sql = require('mssql');
require('dotenv').config();

async function debugIslenyV3() {
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

        console.log(`\n=== TAREAS EN p_Tareas CON carnet/idUsuario RELACIONADO ===`);

        // CREADOR
        let creatorResult = await pool.request()
            .input('carnet', sql.NVarChar, carnet)
            .query(`SELECT COUNT(*) as total FROM p_Tareas WHERE creadorCarnet = @carnet AND activo = 1`);
        console.log('Total como Creador (Activas):', creatorResult.recordset[0].total);

        // ASIGNADO (via ta)
        let assignedResult = await pool.request()
            .input('carnet', sql.NVarChar, carnet)
            .query(`
                SELECT COUNT(DISTINCT t.idTarea) as total 
                FROM p_Tareas t 
                JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea 
                WHERE ta.carnet = @carnet AND t.activo = 1
            `);
        console.log('Total como Asignado (Activas):', assignedResult.recordset[0].total);

        // Tareas que están en p_Tareas pero NO en p_TareaAsignados para ella, donde ella es la creadora
        let orphansResult = await pool.request()
            .input('carnet', sql.NVarChar, carnet)
            .query(`
                SELECT COUNT(*) as total 
                FROM p_Tareas 
                WHERE creadorCarnet = @carnet AND activo = 1 
                AND idTarea NOT IN (SELECT idTarea FROM p_TareaAsignados WHERE carnet = @carnet)
            `);
        console.log('Tareas creadas por ella pero NO asignadas a ella (Activas):', orphansResult.recordset[0].total);

        // Tareas en p_CheckinTareas
        let checkinTasksResult = await pool.request()
            .input('carnet', sql.NVarChar, carnet)
            .query(`
                SELECT COUNT(DISTINCT ct.idTarea) as total 
                FROM p_CheckinTareas ct
                JOIN p_Checkins c ON ct.idCheckin = c.idCheckin
                WHERE c.usuarioCarnet = @carnet
            `);
        console.log('Total tareas en sus Checkins (Histórico):', checkinTasksResult.recordset[0].total);

        // Tareas ACTIVAS en sus Checkins
        let checkinActiveTasksResult = await pool.request()
            .input('carnet', sql.NVarChar, carnet)
            .query(`
                SELECT COUNT(DISTINCT ct.idTarea) as total 
                FROM p_CheckinTareas ct
                JOIN p_Checkins c ON ct.idCheckin = c.idCheckin
                JOIN p_Tareas t ON ct.idTarea = t.idTarea
                WHERE c.usuarioCarnet = @carnet AND t.activo = 1 AND t.estado NOT IN ('Hecha', 'Descartada')
            `);
        console.log('Total tareas activas en sus Checkins:', checkinActiveTasksResult.recordset[0].total);

        await sql.close();
    } catch (err) {
        console.error(err);
    }
}

debugIslenyV3();

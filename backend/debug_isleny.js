
const sql = require('mssql');
require('dotenv').config();

async function debugIsleny() {
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
        const term = '%isleny%';

        console.log('--- BUSCANDO USUARIO ---');
        let userResult = await pool.request()
            .input('term', sql.NVarChar, term)
            .query("SELECT idUsuario, carnet, nombreCompleto, correo FROM p_Usuarios WHERE correo LIKE @term OR nombreCompleto LIKE @term");

        if (userResult.recordset.length === 0) {
            console.log('Usuario no encontrado');
            await sql.close();
            return;
        }

        console.log('Usuarios encontrados:', userResult.recordset.length);
        userResult.recordset.forEach(u => console.log(`- [${u.carnet}] ${u.nombreCompleto} (${u.correo})`));

        for (const user of userResult.recordset) {
            const carnet = user.carnet;
            console.log(`\n=== INVESTIGANDO CARNET ${carnet} (${user.nombreCompleto}) ===`);

            let tasksResult = await pool.request()
                .input('carnet', sql.NVarChar, carnet)
                .query(`
                    SELECT t.idTarea, t.nombre, t.estado, t.fechaObjetivo, t.idProyecto
                    FROM p_Tareas t
                    INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
                    WHERE ta.carnet = @carnet AND t.activo = 1
                `);

            const tasks = tasksResult.recordset;
            console.log('Total tareas activas asignadas:', tasks.length);

            const planificadas = tasks.filter(t =>
                ['Pendiente', 'EnCurso', 'Bloqueada', 'Revision', 'Pausa'].includes(t.estado) &&
                (t.fechaObjetivo === null || new Date(t.fechaObjetivo) <= new Date())
            );

            console.log('Planificadas (según sp_Equipo_ObtenerInforme):', planificadas.length);

            if (planificadas.length > 0) {
                console.log('Detalle Planificadas:');
                planificadas.forEach(t => {
                    console.log(`  - [${t.idTarea}] ${t.nombre} | Estado: ${t.estado} | F.Objetivo: ${t.fechaObjetivo}`);
                });
            }
        }

        await sql.close();
    } catch (err) {
        console.error(err);
    }
}

debugIsleny();

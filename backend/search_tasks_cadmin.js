const sql = require('mssql');
const config = {
    user: 'plan',
    password: 'admin123',
    server: 'database-2.cufqs68ewpdj.us-east-1.rds.amazonaws.com',
    database: 'Bdplaner',
    options: {
        encrypt: true,
        trustServerCertificate: true
    }
};

async function run() {
    try {
        await sql.connect(config);
        const query = `
            SELECT t.idTarea, t.nombre, t.fechaObjetivo, t.estado, ta.carnet 
            FROM p_Tareas t
            LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
            WHERE (ta.carnet = 'CADMIN01' OR t.creadorCarnet = 'CADMIN01' OR t.idCreador = 44)
              AND t.activo = 1
              AND t.estado NOT IN ('Hecha', 'Completada', 'Descartada')
        `;
        const res = await sql.query(query);
        const results = res.recordset.map(t => ({
            id: t.idTarea,
            name: t.nombre,
            date: t.fechaObjetivo,
            status: t.estado
        }));

        console.log('--- ALL ACTIVE TASKS FOR CADMIN01 ---');
        console.log(JSON.stringify(results, null, 1));
    } catch (err) {
        console.error(err);
    } finally {
        await sql.close();
    }
}
run();

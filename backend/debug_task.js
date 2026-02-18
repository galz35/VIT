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
        const res = await sql.query("SELECT idTarea, nombre, fechaObjetivo, estado, creadorCarnet FROM p_Tareas WHERE idTarea = 161");
        console.log('TASK 161:', JSON.stringify(res.recordset, null, 2));

        const res2 = await sql.query("SELECT TOP 5 idTarea, nombre, fechaObjetivo, estado FROM p_Tareas WHERE idProyecto = (SELECT idProyecto FROM p_Tareas WHERE idTarea = 161)");
        console.log('PROJECT TASKS:', JSON.stringify(res2.recordset, null, 2));

        const res3 = await sql.query("SELECT GETDATE() as serverTime");
        console.log('SERVER TIME:', res3.recordset[0].serverTime);
    } catch (err) {
        console.error(err);
    } finally {
        await sql.close();
    }
}
run();

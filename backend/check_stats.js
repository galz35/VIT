const sql = require('mssql');

const config = {
    user: 'plan',
    password: 'admin123',
    server: '54.146.235.205',
    database: 'Bdplaner',
    options: {
        encrypt: true,
        trustServerCertificate: true
    }
};

async function run() {
    try {
        await sql.connect(config);

        console.log('--- TABLE COUNTS ---');
        const counts = await sql.query(`
            SELECT 'p_Usuarios' as t, COUNT(*) as c FROM p_Usuarios
            UNION ALL SELECT 'p_Tareas', COUNT(*) FROM p_Tareas
            UNION ALL SELECT 'p_TareaAvances', COUNT(*) FROM p_TareaAvances
            UNION ALL SELECT 'p_TareaAsignados', COUNT(*) FROM p_TareaAsignados
            UNION ALL SELECT 'p_Proyectos', COUNT(*) FROM p_Proyectos
        `);
        console.table(counts.recordset);

        console.log('\n--- INDEXES for p_TareaAvances ---');
        const idxAvances = await sql.query("SELECT name, type_desc FROM sys.indexes WHERE object_id = OBJECT_ID('p_TareaAvances')");
        console.table(idxAvances.recordset);

        console.log('\n--- INDEXES for p_Tareas ---');
        const idxTareas = await sql.query("SELECT name, type_desc FROM sys.indexes WHERE object_id = OBJECT_ID('p_Tareas')");
        console.table(idxTareas.recordset);

    } catch (e) {
        console.error('Error:', e);
    } finally {
        await sql.close();
    }
}

run();

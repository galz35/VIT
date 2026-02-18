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

        console.log('\n--- INDEXES for p_Auditoria ---');
        const res = await sql.query("SELECT name, type_desc FROM sys.indexes WHERE object_id = OBJECT_ID('p_Auditoria')");
        console.table(res.recordset);

    } catch (e) {
        console.error('Error:', e);
    } finally {
        await sql.close();
    }
}

run();

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
        const res = await sql.query("SELECT COUNT(*) as c FROM p_Auditoria");
        console.log(`Auditoria count: ${res.recordset[0].c}`);
    } catch (e) {
        console.error('Error:', e);
    } finally {
        await sql.close();
    }
}

run();

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
        const result = await sql.query(`
            SELECT idUsuario, nombre, correo, activo 
            FROM p_Usuarios 
            WHERE nombre LIKE '%Gustavo%' OR correo LIKE '%gustavo%'
        `);
        console.log(result.recordset);
        process.exit(0);
    } catch (err) {
        console.error(err);
        process.exit(1);
    }
}
run();

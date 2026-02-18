
const sql = require('mssql');
require('dotenv').config();

async function debugIslenyV4() {
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
        const idUsuario = 153; // Isleny's ID from debug_isleny.js (Wait, let me check)
        // From debug_isleny.js: - [1008269] ISLENY PATRICIA HERNANDEZ GONZALEZ
        // I need her idUsuario.

        console.log('--- BUSCANDO idUsuario ---');
        let userRes = await pool.request().query("SELECT idUsuario FROM p_Usuarios WHERE carnet = '1008269'");
        const uid = userRes.recordset[0].idUsuario;
        console.log('idUsuario:', uid);

        console.log('\n--- TAREAS EN p_Tareas CON idAsignado (LEGACY) ---');
        let legacyResult = await pool.request()
            .input('uid', sql.Int, uid)
            .query(`SELECT COUNT(*) as total FROM p_Tareas WHERE idAsignado = @uid AND activo = 1`);
        console.log('Total con idAsignado (Activas):', legacyResult.recordset[0].total);

        console.log('\n--- VERIFICANDO SI ta.carnet TIENE DUPLICADOS POR TAREA (Múltiples Roles) ---');
        let multiRoleResult = await pool.request()
            .input('carnet', sql.NVarChar, '1008269')
            .query(`
                SELECT idTarea, COUNT(*) as count 
                FROM p_TareaAsignados 
                WHERE carnet = @carnet 
                GROUP BY idTarea 
                HAVING COUNT(*) > 1
            `);
        console.log('Tareas con múltiples asignaciones (ej: Responsable + Ejecutor):', multiRoleResult.recordset.length);

        await sql.close();
    } catch (err) {
        console.error(err);
    }
}

debugIslenyV4();

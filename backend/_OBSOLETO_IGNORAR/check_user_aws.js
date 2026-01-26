const sql = require('mssql');

const config = {
    user: 'plan',
    password: 'admin123',
    server: '54.146.235.205',
    database: 'Bdplaner',
    options: {
        encrypt: true, // AWS RDS suele requerir esto
        trustServerCertificate: true // Importante para certificados autofirmados
    }
};

async function run() {
    try {
        console.log('Conectando a AWS RDS...');
        await sql.connect(config);
        console.log('Conectado. Buscando usuario gustavo.lira@clara.com.ni...');

        const result = await sql.query(`
            SELECT idUsuario, nombre, correo, activo, carnet 
            FROM p_Usuarios 
            WHERE correo = 'gustavo.lira@clara.com.ni'
        `);

        console.log('--- RESULTADO ---');
        if (result.recordset.length > 0) {
            console.log(result.recordset[0]);
        } else {
            console.log('❌ Usuario NO encontrado en p_Usuarios.');

            // Ver si existe con otro correo o si la tabla está vacía
            const count = await sql.query('SELECT COUNT(*) as total FROM p_Usuarios');
            console.log(`Total usuarios en tabla: ${count.recordset[0].total}`);

            // Listar primeros 5 para ver ejemplo
            const sample = await sql.query('SELECT TOP 5 idUsuario, correo, activo FROM p_Usuarios');
            console.log('Ejemplo de usuarios:', sample.recordset);
        }

        process.exit(0);
    } catch (err) {
        console.error('❌ Error de conexión o consulta:', err.message);
        process.exit(1);
    }
}

run();

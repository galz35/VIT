
const { Client } = require('pg');

async function checkUser() {
    const client = new Client({
        host: 'aws-0-us-west-2.pooler.supabase.com',
        port: 6543,
        user: 'postgres.ddmeodlpdxgmadduwdas',
        password: "92li!ra$Gu2",
        database: 'postgres',
        ssl: { rejectUnauthorized: false }
    });

    try {
        await client.connect();
        console.log('Connected to DB');

        const query = `
      SELECT u."idUsuario", u.nombre, u.correo, u.carnet, u."rolGlobal", r.nombre as rol_entidad
      FROM "p_Usuarios" u
      LEFT JOIN "p_Roles" r ON u."rolIdRol" = r."idRol"
      WHERE u.correo = $1
    `;

        const res = await client.query(query, ['gustavo.lira@claro.com.ni']);
        console.log('User Profile found:');
        console.table(res.rows);

    } catch (err) {
        console.error('Error executing query', err.stack);
    } finally {
        await client.end();
    }
}

checkUser();

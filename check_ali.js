
const { Client } = require('pg');

async function checkAli() {
    const client = new Client({
        host: 'aws-0-us-west-2.pooler.supabase.com',
        port: 6543,
        user: 'postgres.ddmeodlpdxgmadduwdas',
        password: "92li!ra$Gu2",
        database: 'postgres',
        ssl: {
            rejectUnauthorized: false
        }
    });

    try {
        await client.connect();

        console.log('--- BUSCANDO A ALI ---');
        const aliRes = await client.query('SELECT * FROM "p_Usuarios" WHERE correo = $1', ['ali.rodriguez@claro.com.ni']);
        console.log('Ali User Record:', JSON.stringify(aliRes.rows[0], null, 2));

        if (aliRes.rows[0]) {
            const carnet = aliRes.rows[0].carnet;
            console.log(`\n--- SUBORDINADOS PARA CARNET: ${carnet} ---`);
            const subsRes = await client.query('SELECT carnet, correo, "nombreCompleto", activo FROM "p_Usuarios" WHERE "jefeCarnet" = $1', [carnet]);
            console.log(`Subordinates found: ${subsRes.rows.length}`);
            subsRes.rows.forEach(s => console.log(` - ${s.nombreCompleto} (${s.correo}) [Activo: ${s.activo}]`));
        } else {
            console.log('ALI NO ENCONTRADO EN p_Usuarios');
        }

        await client.end();
    } catch (err) {
        console.error('Error:', err);
    }
}

checkAli();

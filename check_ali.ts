
import { DataSource } from 'typeorm';
import { Usuario } from './backend/src/auth/entities/usuario.entity';

async function checkAli() {
    const ds = new DataSource({
        type: 'postgres',
        host: 'aws-0-us-west-2.pooler.supabase.com',
        port: 6543,
        username: 'postgres.ddmeodlpdxgmadduwdas',
        password: "92li!ra$Gu2",
        database: 'postgres',
        ssl: true,
        synchronize: false,
        entities: [Usuario],
    });

    try {
        await ds.initialize();
        const user = await ds.getRepository(Usuario).findOne({
            where: { correo: 'ali.rodriguez@claro.com.ni' }
        });
        console.log('Ali User Record:', JSON.stringify(user, null, 2));

        if (user && user.carnet) {
            // Check subordinates
            const subs = await ds.getRepository(Usuario).find({
                where: { jefeCarnet: user.carnet }
            });
            console.log(`Subordinates found for carnet ${user.carnet}:`, subs.length);
            subs.forEach(s => console.log(` - ${s.nombreCompleto} (${s.correo})`));
        }

        await ds.destroy();
    } catch (err) {
        console.error('Error connecting to DB:', err);
    }
}

checkAli();

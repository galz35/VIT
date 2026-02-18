const sql = require('mssql');
const fs = require('fs');

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
        console.log('Connecting...');
        await sql.connect(config);
        console.log('Connected. Reading SQL...');

        const script = fs.readFileSync('./sql/fix_agenda_v3.sql', 'utf8');
        // Split by GO on a line by itself
        const batches = script.split(/[\r\n]+GO[\r\n]*/i);

        console.log(`Found ${batches.length} batches.`);

        for (const batch of batches) {
            if (batch.trim()) {
                try {
                    await sql.query(batch);
                    console.log('Executed batch.');
                } catch (err) {
                    console.error('Batch error:', err.message);
                }
            }
        }
        console.log('Done.');
    } catch (err) {
        console.error('Fatal error:', err);
    } finally {
        await sql.close();
    }
}

run();

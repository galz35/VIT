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
        console.log('Applying Fix V4...');

        const script = fs.readFileSync('./sql/fix_agenda_v4.sql', 'utf8');
        const batches = script.split(/[\r\n]+GO[\r\n]*/i);

        for (const batch of batches) {
            if (batch.trim()) {
                await sql.query(batch);
                console.log('Executed batch.');
            }
        }
        console.log('Done.');
    } catch (err) {
        console.error('Fatal:', err);
    } finally {
        await sql.close();
    }
}

run();

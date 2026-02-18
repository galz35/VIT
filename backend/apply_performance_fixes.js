const sql = require('mssql');
const fs = require('fs');
const path = require('path');

const config = {
    user: 'plan',
    password: 'admin123',
    server: '54.146.235.205',
    database: 'Bdplaner',
    options: {
        encrypt: true,
        trustServerCertificate: true,
        connectTimeout: 30000,
        requestTimeout: 60000
    }
};

async function run() {
    try {
        await sql.connect(config);
        const scriptPath = path.join(__dirname, 'performance_audit', 'FIX_SLOW_SELECTS.sql');
        const script = fs.readFileSync(scriptPath, 'utf8');

        // Split by GO
        const batches = script.split(/^\s*GO\s*$/im);

        for (const batch of batches) {
            if (batch.trim()) {
                console.log(`Executing batch: ${batch.substring(0, 50)}...`);
                await sql.query(batch);
            }
        }
        console.log('SQL Applied successfully');

    } catch (e) {
        console.error('Error applying SQL:', e);
    } finally {
        await sql.close();
    }
}

run();

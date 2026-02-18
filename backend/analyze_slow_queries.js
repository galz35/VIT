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

        // Target date based on user local time: 2026-02-17
        const targetDate = '2026-02-17';
        console.log(`--- SLOW QUERIES REPORT FOR ${targetDate} ---`);

        const res = await sql.query(`
            SELECT * 
            FROM dbo.p_SlowQueries 
            WHERE CAST(fecha AS DATE) = '${targetDate}'
            ORDER BY duracionMS DESC
        `);

        if (res.recordset.length === 0) {
            console.log(`No slow queries found in p_SlowQueries for ${targetDate}.`);

            // Show last 10 queries overall to see what's actually in there
            const last10 = await sql.query("SELECT TOP 10 * FROM dbo.p_SlowQueries ORDER BY fecha DESC");
            if (last10.recordset.length > 0) {
                console.log('\nLast 10 items in table (for context):');
                last10.recordset.forEach(r => {
                    console.log(`[${r.fecha.toISOString()}] ${r.origen} (${r.duracionMS}ms) - ${r.sqlText ? r.sqlText.substring(0, 50) : 'N/A'}`);
                });
            }
        } else {
            console.log(`Found ${res.recordset.length} slow queries on ${targetDate}:\n`);
            for (const row of res.recordset) {
                const preview = row.sqlText ? row.sqlText.substring(0, 150) : 'N/A';
                console.log(`--------------------------------------------------`);
                console.log(`[${row.fecha.toISOString()}] Origen: ${row.origen} | Duración: ${row.duracionMS}ms | Tipo: ${row.tipo}`);
                console.log(`SQL: ${row.sqlText}`);
                console.log(`PARAMS: ${row.parametros}`);
            }
        }

    } catch (e) {
        console.error('Error:', e);
    } finally {
        await sql.close();
    }
}

run();

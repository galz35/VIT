
import * as sql from 'mssql';
import * as dotenv from 'dotenv';
import * as path from 'path';

dotenv.config({ path: path.join(__dirname, '../.env') });

const sourceConfig = {
    user: process.env.MSSQL_USER || 'plan',
    password: process.env.MSSQL_PASSWORD || 'admin123',
    server: process.env.MSSQL_HOST || '54.146.235.205',
    database: process.env.MSSQL_DATABASE || 'Bdplaner',
    options: {
        encrypt: true,
        trustServerCertificate: true,
        requestTimeout: 30000
    }
};

const destConfig = {
    user: 'sa',
    password: 'TuPasswordFuerte!2026',
    server: '190.56.16.85',
    database: 'Bdplaner',
    options: {
        encrypt: false,
        trustServerCertificate: true,
        requestTimeout: 30000
    }
};

async function reconcileTasks() {
    console.log('🔍 Reconciliando Tabla p_Tareas (In-Memory Diff)...');

    let sourcePool: sql.ConnectionPool | null = null;
    let destPool: sql.ConnectionPool | null = null;

    try {
        sourcePool = await new sql.ConnectionPool(sourceConfig).connect();
        destPool = await new sql.ConnectionPool(destConfig).connect();

        // 1. Obtener todos los IDs de ambos lados
        const srcRes = await sourcePool.request().query('SELECT idTarea FROM p_Tareas');
        const dstRes = await destPool.request().query('SELECT idTarea FROM p_Tareas');

        const srcIds = srcRes.recordset.map(r => r.idTarea);
        const dstIds = new Set(dstRes.recordset.map(r => r.idTarea));

        // 2. Encontrar faltantes
        const missingIds = srcIds.filter(id => !dstIds.has(id));

        if (missingIds.length === 0) {
            console.log('✅ No faltan tareas. Sincronizado.');
            return;
        }

        console.log(`⚠️ Faltan ${missingIds.length} tareas: ${missingIds.join(', ')}`);

        // 3. Insertar faltantes
        for (const id of missingIds) {
            console.log(`   Recuperando tarea ${id}...`);
            const rowRes = await sourcePool.request().query(`SELECT * FROM p_Tareas WHERE idTarea = ${id}`);
            const row = rowRes.recordset[0];

            if (!row) continue;

            // Build Insert SQL
            const cols = Object.keys(row).map(c => `[${c}]`);
            const vals = Object.values(row).map(val => {
                if (val === null) return 'NULL';
                if (typeof val === 'string') return `'${val.replace(/'/g, "''")}'`;
                if (val instanceof Date) return `'${val.toISOString().slice(0, 23).replace('T', ' ')}'`; // Format YYYY-MM-DD HH:mm:ss.ms
                if (typeof val === 'boolean') return val ? 1 : 0;
                if (Buffer.isBuffer(val)) return `0x${val.toString('hex')}`;
                return val;
            });

            await destPool.request().query(`
                SET IDENTITY_INSERT p_Tareas ON;
                INSERT INTO p_Tareas (${cols.join(', ')}) VALUES (${vals.join(', ')});
                SET IDENTITY_INSERT p_Tareas OFF;
            `);
            console.log(`   ✅ Tarea ${id} insertada exitosamente.`);
        }

    } catch (err) {
        console.error('❌ Error reconciliando:', err);
    } finally {
        if (sourcePool) await sourcePool.close();
        if (destPool) await destPool.close();
    }
}

reconcileTasks();

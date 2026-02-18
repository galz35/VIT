
import * as sql from 'mssql';
import * as dotenv from 'dotenv';
import * as path from 'path';

dotenv.config({ path: path.join(__dirname, '../.env') });

const config = {
    user: 'sa',
    password: 'TuPasswordFuerte!2026',
    server: '190.56.16.85',
    database: 'master', // Contexto Master para operar entre DBs
    options: {
        encrypt: false,
        trustServerCertificate: true,
        requestTimeout: 120000
    }
};

async function deepCleanup() {
    console.log('👷 INICIANDO LIMPIEZA PROFUNDA DE RESIDUOS DE INVENTARIO (Inv_*)');

    let pool: sql.ConnectionPool | null = null;
    let movedCount = 0;

    try {
        pool = await new sql.ConnectionPool(config).connect();

        // 1. REVISAR TRIGGERS
        console.log('\nSTEP 1: Revisando Triggers Inv_* ...');
        const triggersRes = await pool.request().query(`
            SELECT t.name, m.definition, o.name as parent_table
            FROM [Bdplaner].sys.triggers t
            JOIN [Bdplaner].sys.sql_modules m ON t.object_id = m.object_id
            JOIN [Bdplaner].sys.objects o ON t.parent_id = o.object_id
            WHERE t.name LIKE 'Inv_%'
        `);

        for (const trig of triggersRes.recordset) {
            console.log(`   🚨 Encontrado Trigger: ${trig.name} (en tabla ${trig.parent_table})`);

            // Intentar Mover a BdInventario
            // Nota: Triggers dependen de que la tabla padre EXISTE en BdInventario.
            // Si la tabla padre no es 'Inv_', el trigger no debería estar en 'BdInventario' tal cual.
            // Asumimos que si empieza con Inv_, es de inventario.

            // Verificar si tabla padre existe en BdInventario
            const parentCheck = await pool.request().query(`SELECT OBJECT_ID('[BdInventario].dbo.[${trig.parent_table}]') as id`);

            if (parentCheck.recordset[0]?.id) {
                try {
                    const def = trig.definition.replace(/'/g, "''");
                    await pool.request().query(`USE [BdInventario]; EXEC('${def}');`);
                    console.log(`      ✅ Recopiado a BdInventario.`);

                    await pool.request().query(`USE [Bdplaner]; DROP TRIGGER [${trig.name}]`);
                    console.log(`      🗑️ Borrado de Bdplaner.`);
                    movedCount++;
                } catch (err) {
                    console.error(`      ❌ Error moviendo trigger: ${err.message}`);
                }
            } else {
                console.warn(`      ⚠️ La tabla padre [${trig.parent_table}] NO existe en BdInventario. NO se puede mover el trigger.`);
            }
        }

        // 2. REVISAR VISTAS / FUNCIONES / PROCS (Segunda Pasada)
        console.log('\nSTEP 2: Revisando Vistas/Funciones/Procs restantes...');
        const objsRes = await pool.request().query(`
            SELECT name, type_desc, m.definition
            FROM [Bdplaner].sys.objects o
            JOIN [Bdplaner].sys.sql_modules m ON o.object_id = m.object_id
            WHERE o.name LIKE 'Inv_%' AND o.type IN ('V', 'FN', 'IF', 'TF', 'P')
        `);

        for (const obj of objsRes.recordset) {
            console.log(`   🚨 Encontrado Residuo: ${obj.type_desc} -> ${obj.name}`);

            try {
                // Crear en BdInventario
                const def = obj.definition.replace(/'/g, "''");
                await pool.request().query(`USE [BdInventario]; EXEC('${def}');`);
                console.log(`      ✅ Movido a BdInventario.`);

                // Borrar
                let typeSql = '';
                if (obj.type_desc.includes('VIEW')) typeSql = 'VIEW';
                if (obj.type_desc.includes('FUNCTION')) typeSql = 'FUNCTION';
                if (obj.type_desc.includes('PROCEDURE')) typeSql = 'PROCEDURE';

                await pool.request().query(`USE [Bdplaner]; DROP ${typeSql} [${obj.name}]`);
                console.log(`      🗑️ Borrado de Bdplaner.`);
                movedCount++;
            } catch (err) {
                console.error(`      ❌ Error moviendo objeto (probablemente dependencias cíclicas): ${err.message}`);
                // Intento forzado de drop si ya existe en destino
                try {
                    await pool.request().query(`USE [Bdplaner]; DROP ${obj.type_desc.includes('VIEW') ? 'VIEW' : 'PROCEDURE'} [${obj.name}]`);
                    console.log(`      🗑️ Borrado forzado (ya existía o estaba roto).`);
                } catch (e) { }
            }
        }

        // 3. REVISAR TABLAS (Segunda Pasada)
        console.log('\nSTEP 3: Revisando Tablas restantes...');
        const tablesRes = await pool.request().query(`
            SELECT name FROM [Bdplaner].sys.tables WHERE name LIKE 'Inv_%'
        `);

        for (const t of tablesRes.recordset) {
            console.log(`   🚨 Encontrada Tabla Residuo: ${t.name}`);
            // Mover si no existe
            const check = await pool.request().query(`SELECT OBJECT_ID('[BdInventario].dbo.[${t.name}]') as id`);
            if (!check.recordset[0]?.id) {
                await pool.request().query(`SELECT * INTO [BdInventario].dbo.[${t.name}] FROM [Bdplaner].dbo.[${t.name}]`);
                console.log(`      ✅ Movida a BdInventario.`);
            }
            // Drop
            try {
                await pool.request().query(`USE [Bdplaner]; DROP TABLE [${t.name}]`);
                console.log(`      🗑️ Borrada de Bdplaner.`);
                movedCount++;
            } catch (e) {
                console.error(`      ❌ No se pudo borrar tabla (FK activa): ${e.message}`);
            }
        }


        if (movedCount === 0) {
            console.log('\n✅ LIMPIEZA TOTAL VERIFICADA: No quedan objetos Inv_* en Bdplaner.');
        } else {
            console.log(`\n🧹 LIMPIEZA FINALIZADA: Se movieron/borraron ${movedCount} objetos residuales.`);
        }

    } catch (err) {
        console.error('❌ Error general:', err);
    } finally {
        if (pool) await pool.close();
    }
}

deepCleanup();

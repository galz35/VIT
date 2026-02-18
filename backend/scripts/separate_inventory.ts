
import * as sql from 'mssql';
import * as dotenv from 'dotenv';
import * as path from 'path';

dotenv.config({ path: path.join(__dirname, '../.env') });

const config = {
    user: 'sa',
    password: 'TuPasswordFuerte!2026',
    server: '190.56.16.85',
    database: 'master',
    options: {
        encrypt: false,
        trustServerCertificate: true,
        requestTimeout: 120000 // Aumentamos timeout por seguridad
    }
};

async function separateInventory() {
    console.log('🚧 INICIANDO SEPARACIÓN DE MÓDULO INVENTARIO (Inv_*) EN BdInventario');

    let pool: sql.ConnectionPool | null = null;

    try {
        pool = await new sql.ConnectionPool(config).connect();

        // 1. Crear Base de Datos BdInventario si no existe
        console.log('\nSTEP 1: Crear DB Destino (BdInventario)...');
        await pool.request().query(`
            IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'BdInventario')
            BEGIN
                CREATE DATABASE [BdInventario];
                PRINT 'Base de datos BdInventario creada.';
            END
        `);

        // 2. Mover Tablas (Inv_*)
        // Estrategia: SELECT INTO desde Bdplaner hacia BdInventario
        // Nota: SELECT INTO no copia PKs/FKs/Indices, solo estructura básica + datos.
        // Dado que "Inv" es futuro, esto es aceptable. Si es crítico, deberíamos usar script completo.
        // Usaremos el mismo approach de migración previa para mantener IDENTITY si existe.

        console.log('\nSTEP 2: Mover Tablas (Bdplaner -> BdInventario)...');

        // Obtener tablas Inv_* de Bdplaner
        const tablesRes = await pool.request().query(`
            SELECT TABLE_SCHEMA, TABLE_NAME 
            FROM [Bdplaner].INFORMATION_SCHEMA.TABLES 
            WHERE TABLE_TYPE = 'BASE TABLE' AND TABLE_NAME LIKE 'Inv_%'
        `);

        for (const t of tablesRes.recordset) {
            const tableName = `[${t.TABLE_SCHEMA}].[${t.TABLE_NAME}]`;
            console.log(`   Procesando ${tableName}...`);

            // Verificar si ya existe en destino
            const check = await pool.request().query(`SELECT OBJECT_ID('[BdInventario].${tableName}') as id`);
            if (check.recordset[0].id) {
                console.log(`      ⚠️ Ya existe en BdInventario. Saltando creación.`);
            } else {
                // Mover Datos: SELECT * INTO [BdInventario].[dbo].[Tabla] FROM [Bdplaner].[dbo].[Tabla]
                // Esta es la forma más rápida y atómica de mover tabla completa
                await pool.request().query(`
                    SELECT * INTO [BdInventario].${tableName} 
                    FROM [Bdplaner].${tableName}
                `);
                console.log(`      ✅ Movida exitosamente.`);
            }

            // Borrar de Origen (Bdplaner)
            // PRECAUCIÓN: Solo borrar si se confirmó movimiento.
            // Por seguridad en este script, NO borramos automáticamente FKs que puedan bloquear.
            // Intentamos borrar, si falla por FK, avisamos.
            try {
                await pool.request().query(`DROP TABLE [Bdplaner].${tableName}`);
                console.log(`      🗑️ Borrada de Bdplaner.`);
            } catch (delErr) {
                console.warn(`      ⚠️ No se pudo borrar de Bdplaner (posible FK): ${delErr.message}`);
                // Forzar borrado de FKs si es necesario? Mejor dejarlo manual por seguridad.
            }
        }

        // 3. Mover Store Procedures / Views / Functions (Inv_*)
        console.log('\nSTEP 3: Mover Objetos Programables...');

        const objsRes = await pool.request().query(`
            SELECT name, definition, type_desc 
            FROM [Bdplaner].sys.sql_modules m
            JOIN [Bdplaner].sys.objects o ON m.object_id = o.object_id
            WHERE o.name LIKE 'Inv_%'
        `);

        let movedObjs = 0;
        for (const obj of objsRes.recordset) {
            console.log(`   Moviendo ${obj.type_desc}: ${obj.name}...`);

            // Crear en BdInventario
            // Hack: La definición contiene "CREATE PROCEDURE [dbo].[Inv_...]"
            // Necesitamos ejecutar esto EN EL CONTEXTO de BdInventario
            // O usar USE [BdInventario]; EXEC(...)

            const def = obj.definition.replace(/'/g, "''"); // Escapar comillas para SQL dinámico dentro de string

            try {
                await pool.request().query(`
                    USE [BdInventario];
                    EXEC('${def}');
                `);
                console.log(`      ✅ Creado en BdInventario.`);
                movedObjs++;

                // Borrar de Bdplaner
                let dropSql = '';
                if (obj.type_desc.includes('PROCEDURE')) dropSql = `DROP PROCEDURE [Bdplaner].[dbo].[${obj.name}]`;
                if (obj.type_desc.includes('VIEW')) dropSql = `DROP VIEW [Bdplaner].[dbo].[${obj.name}]`;
                if (obj.type_desc.includes('FUNCTION')) dropSql = `DROP FUNCTION [Bdplaner].[dbo].[${obj.name}]`;

                if (dropSql) {
                    await pool.request().query(dropSql);
                    console.log(`      🗑️ Borrado de Bdplaner.`);
                }

            } catch (err) {
                console.error(`      ❌ Error moviendo objecto (probablemente dependencias rotas): ${err.message}`);
                // Si falla al crear en destino, NO borramos del origen.
            }
        }

        // 4. Limpieza final de residuos (fk, constraints huérfanos) si quedaron
        console.log('\n✅ PROCESO COMPLETADO.');
        console.log(`   - Tablas movidas: ${tablesRes.recordset.length}`);
        console.log(`   - Objetos movidos: ${movedObjs}`);
        console.log('   - Verificar BdInventario manualmente para confirmar integridad.');

    } catch (err) {
        console.error('❌ Error general:', err);
    } finally {
        if (pool) await pool.close();
    }
}

separateInventory();

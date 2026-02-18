
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

async function migrateTypes() {
    console.log('⚙️ Migrando Tipos de Datos de Usuario (UDDTs / TVPs)...');

    let sourcePool: sql.ConnectionPool | null = null;
    let destPool: sql.ConnectionPool | null = null;

    try {
        sourcePool = await new sql.ConnectionPool(sourceConfig).connect();
        destPool = await new sql.ConnectionPool(destConfig).connect();

        // 1. Obtener Tipos Tabla (TVP)
        const typesRes = await sourcePool.request().query(`
            SELECT 
                t.name, 
                s.name as schema_name,
                STUFF((SELECT ',' + c.name + ' ' + 
                    CASE 
                        WHEN ty.name IN ('varchar','nvarchar','char','nchar','binary','varbinary') THEN ty.name + '(' + CASE WHEN c.max_length = -1 THEN 'MAX' ELSE CAST(c.max_length/CASE WHEN ty.name LIKE 'n%' THEN 2 ELSE 1 END AS VARCHAR) END + ')'
                        WHEN ty.name IN ('decimal','numeric') THEN ty.name + '(' + CAST(c.precision AS VARCHAR) + ',' + CAST(c.scale AS VARCHAR) + ')'
                        ELSE ty.name 
                    END + 
                    CASE WHEN c.is_nullable = 1 THEN ' NULL' ELSE ' NOT NULL' END
                    FROM sys.columns c
                    JOIN sys.types ty ON c.user_type_id = ty.user_type_id
                    WHERE c.object_id = t.type_table_object_id
                    ORDER BY c.column_id
                    FOR XML PATH('')), 1, 1, '') as cols
            FROM sys.table_types t
            JOIN sys.schemas s ON t.schema_id = s.schema_id
            WHERE t.is_user_defined = 1
        `);

        for (const type of typesRes.recordset) {
            console.log(`Verificando Tipo: [${type.schema_name}].[${type.name}]...`);

            // Check if exists
            const exists = await destPool.request().query(`
                SELECT 1 FROM sys.table_types t 
                JOIN sys.schemas s ON t.schema_id = s.schema_id
                WHERE t.name = '${type.name}' AND s.name = '${type.schema_name}'
            `);

            if (exists.recordset.length > 0) {
                // console.log(`   ✅ Ya existe.`);
                continue;
            }

            console.log(`   🛠️ Creando Tipo [${type.name}]...`);
            try {
                const sql = `CREATE TYPE [${type.schema_name}].[${type.name}] AS TABLE (${type.cols})`;
                await destPool.request().query(sql);
                console.log(`      ✅ Creado.`);
            } catch (err) {
                console.error(`      ❌ Error creando tipo ${type.name}:`, err.message);
            }
        }

    } catch (err) {
        console.error('❌ Error general:', err);
    } finally {
        if (sourcePool) await sourcePool.close();
        if (destPool) await destPool.close();
    }
}

migrateTypes();

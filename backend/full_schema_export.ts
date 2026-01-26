import * as sql from 'mssql';
import * as dotenv from 'dotenv';
import * as path from 'path';
import * as fs from 'fs';

dotenv.config({ path: path.join(__dirname, '.env') });

const config = {
    user: process.env.MSSQL_USER,
    password: process.env.MSSQL_PASSWORD,
    server: process.env.MSSQL_HOST || 'localhost',
    database: process.env.MSSQL_DATABASE || 'Bdplaner',
    options: {
        encrypt: true,
        trustServerCertificate: true,
        requestTimeout: 60000
    }
};

const OUTPUT_FILE = path.join('d:\\planificacion', 'respaldo sql server', 'ESTRUCTURA_REAL_COMPLETA.sql');

async function exportFullSchema() {
    const stream = fs.createWriteStream(OUTPUT_FILE, { encoding: 'utf8' });

    try {
        console.log('🚀 Iniciando exportación de esquema completo a archivo único...');
        const pool = await sql.connect(config);

        stream.write(`-- ESTRUCTURA COMPLETA DE LA BASE DE DATOS: ${config.database}\n`);
        stream.write(`-- Fecha: ${new Date().toISOString()}\n\n`);
        stream.write(`USE [${config.database}];\nGO\n\n`);

        // 1. TABLAS
        console.log('📦 Extrayendo tablas...');
        const tables = await pool.request().query(`
            SELECT s.name as esquema, o.name as nombre 
            FROM sys.objects o JOIN sys.schemas s ON s.schema_id = o.schema_id 
            WHERE o.type = 'U' AND o.is_ms_shipped = 0 ORDER BY o.name
        `);

        for (const table of tables.recordset) {
            stream.write(`-- ******************************************************\n`);
            stream.write(`-- TABLA: [${table.esquema}].[${table.nombre}]\n`);
            stream.write(`-- ******************************************************\n`);
            const ddl = await generarScriptTabla(pool, table.esquema, table.nombre);
            stream.write(ddl + '\n\n');
        }

        // 2. VISTAS
        console.log('👁️ Extrayendo vistas...');
        const views = await pool.request().query(`
            SELECT s.name as esquema, o.name as nombre 
            FROM sys.objects o JOIN sys.schemas s ON s.schema_id = o.schema_id 
            WHERE o.type = 'V' AND o.is_ms_shipped = 0 ORDER BY o.name
        `);
        for (const v of views.recordset) {
            stream.write(`-- VISTA: [${v.esquema}].[${v.nombre}]\n`);
            const ddl = await generarScriptModulo(pool, v.esquema, v.nombre);
            stream.write(ddl + '\n\n');
        }

        // 3. FUNCIONES
        console.log('🔧 Extrayendo funciones...');
        const funcs = await pool.request().query(`
            SELECT s.name as esquema, o.name as nombre 
            FROM sys.objects o JOIN sys.schemas s ON s.schema_id = o.schema_id 
            WHERE o.type IN ('FN', 'IF', 'TF') AND o.is_ms_shipped = 0 ORDER BY o.name
        `);
        for (const f of funcs.recordset) {
            stream.write(`-- FUNCION: [${f.esquema}].[${f.nombre}]\n`);
            const ddl = await generarScriptModulo(pool, f.esquema, f.nombre);
            stream.write(ddl + '\n\n');
        }

        // 4. PROCEDIMIENTOS
        console.log('⚡ Extrayendo procedimientos...');
        const procs = await pool.request().query(`
            SELECT s.name as esquema, o.name as nombre 
            FROM sys.objects o JOIN sys.schemas s ON s.schema_id = o.schema_id 
            WHERE o.type = 'P' AND o.is_ms_shipped = 0 ORDER BY o.name
        `);
        for (const p of procs.recordset) {
            stream.write(`-- PROCEDIMIENTO: [${p.esquema}].[${p.nombre}]\n`);
            const ddl = await generarScriptModulo(pool, p.esquema, p.nombre);
            stream.write(ddl + '\n\n');
        }

        await pool.close();
        stream.end();
        console.log(`\n✅ Archivo generado exitosamente: ${OUTPUT_FILE}`);

    } catch (err) {
        console.error('❌ Error:', err);
        stream.end();
    }
}

async function generarScriptModulo(pool: sql.ConnectionPool, esquema: string, nombre: string) {
    const res = await pool.request()
        .input('e', esquema).input('n', nombre)
        .query(`SELECT m.definition FROM sys.sql_modules m JOIN sys.objects o ON o.object_id = m.object_id JOIN sys.schemas s ON s.schema_id = o.schema_id WHERE s.name = @e AND o.name = @n`);
    return res.recordset[0]?.definition ? res.recordset[0].definition + '\nGO' : '-- Definición no disponible';
}

async function generarScriptTabla(pool: sql.ConnectionPool, esquema: string, nombre: string) {
    const resCols = await pool.request()
        .input('e', esquema).input('n', nombre)
        .query(`
            SELECT c.name as columna, t.name as tipo, c.max_length, c.precision, c.scale, c.is_nullable, c.is_identity, ic.seed_value, ic.increment_value, dc.definition as default_def, cc.definition as computed_def
            FROM sys.columns c JOIN sys.types t ON t.user_type_id = c.user_type_id LEFT JOIN sys.identity_columns ic ON ic.object_id = c.object_id AND ic.column_id = c.column_id LEFT JOIN sys.default_constraints dc ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id LEFT JOIN sys.computed_columns cc ON cc.object_id = c.object_id AND cc.column_id = c.column_id JOIN sys.objects o ON o.object_id = c.object_id JOIN sys.schemas s ON s.schema_id = o.schema_id
            WHERE s.name = @e AND o.name = @n ORDER BY c.column_id
        `);

    let cols: string[] = [];
    for (const r of resCols.recordset) {
        if (r.computed_def) { cols.push(`    [${r.columna}] AS ${r.computed_def}`); continue; }
        let typeFmt = formatType(r.tipo, r.max_length, r.precision, r.scale);
        let identity = r.is_identity ? ` IDENTITY(${r.seed_value},${r.increment_value})` : '';
        cols.push(`    [${r.columna}] ${typeFmt}${identity} ${r.is_nullable ? 'NULL' : 'NOT NULL'}${r.default_def ? ' DEFAULT ' + r.default_def : ''}`);
    }

    const resPk = await pool.request().input('e', esquema).input('n', nombre)
        .query(`SELECT kc.name as pk_name, col.name as col_name FROM sys.key_constraints kc JOIN sys.index_columns ic ON ic.object_id = kc.parent_object_id AND ic.index_id = kc.unique_index_id JOIN sys.columns col ON col.object_id = ic.object_id AND col.column_id = ic.column_id WHERE kc.type = 'PK' AND OBJECT_SCHEMA_NAME(kc.parent_object_id) = @e AND OBJECT_NAME(kc.parent_object_id) = @n`);

    if (resPk.recordset.length > 0) {
        cols.push(`    CONSTRAINT [${resPk.recordset[0].pk_name}] PRIMARY KEY (${resPk.recordset.map(r => `[${r.col_name}]`).join(', ')})`);
    }

    let script = `CREATE TABLE [${esquema}].[${nombre}] (\n${cols.join(',\n')}\n);\nGO\n`;

    // Solo FKs básicas para el script único
    const resFk = await pool.request().input('e', esquema).input('n', nombre)
        .query(`SELECT fk.name as fk_name, s2.name as s_ref, t2.name as t_ref, c1.name as c_orig, c2.name as c_ref FROM sys.foreign_keys fk JOIN sys.foreign_key_columns fkc ON fkc.constraint_object_id = fk.object_id JOIN sys.tables t1 ON t1.object_id = fk.parent_object_id JOIN sys.columns c1 ON c1.object_id = t1.object_id AND c1.column_id = fkc.parent_column_id JOIN sys.tables t2 ON t2.object_id = fk.referenced_object_id JOIN sys.schemas s2 ON s2.schema_id = t2.schema_id JOIN sys.columns c2 ON c2.object_id = t2.object_id AND c2.column_id = fkc.referenced_column_id WHERE OBJECT_SCHEMA_NAME(t1.object_id) = @e AND t1.name = @n`);

    resFk.recordset.forEach(r => {
        script += `ALTER TABLE [${esquema}].[${nombre}] ADD CONSTRAINT [${r.fk_name}] FOREIGN KEY ([${r.c_orig}]) REFERENCES [${r.s_ref}].[${r.t_ref}] ([${r.c_ref}]);\nGO\n`;
    });

    return script;
}

function formatType(tipo: string, max_length: number, precision: number, scale: number) {
    const t = tipo.toLowerCase();
    if (['varchar', 'char', 'varbinary', 'binary'].includes(t)) return `${tipo}(${max_length === -1 ? 'max' : max_length})`;
    if (['nvarchar', 'nchar'].includes(t)) return `${tipo}(${max_length === -1 ? 'max' : max_length / 2})`;
    if (['decimal', 'numeric'].includes(t)) return `${tipo}(${precision},${scale})`;
    return tipo;
}

exportFullSchema();

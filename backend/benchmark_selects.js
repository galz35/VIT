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

        const tests = [
            {
                name: 'Catalogo Organizacion',
                query: 'EXEC sp_Organizacion_ObtenerCatalogo'
            },
            {
                name: 'Proyectos Visibles (Carnet 500708)',
                query: `
                    SELECT DISTINCT
                        p.idProyecto,
                        p.nombre,
                        p.estado,
                        p.tipo,
                        p.fechaFin,
                        ISNULL((
                            SELECT AVG(CAST(CASE WHEN t2.estado = 'Hecha' THEN 100 ELSE ISNULL(t2.porcentaje, 0) END AS FLOAT))
                            FROM p_Tareas t2
                            WHERE t2.idProyecto = p.idProyecto 
                              AND t2.activo = 1 
                              AND t2.idTareaPadre IS NULL
                              AND t2.estado NOT IN ('Descartada', 'Eliminada')
                        ), 0) AS progresoProyecto
                    FROM p_Proyectos p
                    INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
                    INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
                    WHERE ta.carnet = '500708'
                      AND t.activo = 1
                      AND p.estado = 'Activo'
                `
            },
            {
                name: 'Tarea Avances (idTarea 1146)',
                query: `
                    IF OBJECT_ID(N'dbo.p_TareaAvances', N'U') IS NOT NULL
                    SELECT idLog, idTarea, idUsuario, progreso, comentario, fecha
                    FROM p_TareaAvances
                    WHERE idTarea = 1146
                    ORDER BY fecha DESC
                `
            }
        ];

        console.log('--- BENCHMARKING SELECT QUERIES ---');
        for (const test of tests) {
            const start = Date.now();
            try {
                const res = await sql.query(test.query);
                const duration = Date.now() - start;
                console.log(`[PASS] ${test.name}: ${duration}ms (${res.recordset?.length || 0} rows)`);
            } catch (e) {
                console.log(`[FAIL] ${test.name}: ${e.message}`);
            }
        }

    } catch (e) {
        console.error('Error:', e);
    } finally {
        await sql.close();
    }
}

run();

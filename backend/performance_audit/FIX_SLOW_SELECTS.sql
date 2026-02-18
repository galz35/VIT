/*
    ============================================================================
    DATABASE PERFORMANCE FIXES - 2026-02-17
    ============================================================================
    1. Optimize p_TareaAvances access (Missing Index).
    2. Optimize Organization Catalog Index (Move columns to Key).
    3. New Optimized SP for 'My Assignment' (Proyectos segment).
    ============================================================================
*/

USE [Bdplaner];
GO

SET NOCOUNT ON;
SET QUOTED_IDENTIFIER ON;
GO

PRINT '>>> [1/3] Optimizing p_TareaAvances...';
IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_TareaAvances_idTarea' AND object_id = OBJECT_ID('dbo.p_TareaAvances'))
BEGIN
    CREATE NONCLUSTERED INDEX IX_p_TareaAvances_idTarea ON dbo.p_TareaAvances (idTarea) INCLUDE (fecha, progreso, comentario);
    PRINT '    + Created: IX_p_TareaAvances_idTarea';
END
GO

PRINT '>>> [2/3] Optimizing Organization Index...';
-- Replace the INCLUDE index with a KEY index to speed up DISTINCT and GROUP BY
IF EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_Usuarios_Organizacion' AND object_id = OBJECT_ID('dbo.p_Usuarios'))
BEGIN
    DROP INDEX IX_p_Usuarios_Organizacion ON dbo.p_Usuarios;
END

CREATE NONCLUSTERED INDEX IX_p_Usuarios_Organizacion_V2
ON dbo.p_Usuarios (activo, ogerencia, subgerencia, area)
INCLUDE (primer_nivel);
PRINT '    + Created: IX_p_Usuarios_Organizacion_V2';
GO

PRINT '>>> [3/3] Creating sp_Planning_ObtenerProyectosAsignados...';
GO
CREATE OR ALTER PROCEDURE dbo.sp_Planning_ObtenerProyectosAsignados
    @carnet NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    -- Using a CTE for progress to avoid repeated subquery for each project
    WITH ProgresoCTE AS (
        SELECT 
            t.idProyecto,
            AVG(CAST(CASE WHEN t.estado = 'Hecha' THEN 100 ELSE ISNULL(t.porcentaje, 0) END AS FLOAT)) as progreso
        FROM p_Tareas t
        WHERE t.activo = 1 
          AND t.idTareaPadre IS NULL
          AND t.estado NOT IN ('Descartada', 'Eliminada')
        GROUP BY t.idProyecto
    )
    SELECT DISTINCT
        p.idProyecto,
        p.nombre,
        p.estado,
        p.tipo,
        p.gerencia,
        p.subgerencia,
        p.area,
        p.fechaInicio,
        p.fechaFin,
        progresoProyecto = ISNULL(pcte.progreso, 0)
    FROM p_Proyectos p
    INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
    INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
    LEFT JOIN ProgresoCTE pcte ON p.idProyecto = pcte.idProyecto
    WHERE ta.carnet = @carnet
      AND t.activo = 1
      AND p.estado = 'Activo'
    ORDER BY p.fechaFin ASC;
END
GO

PRINT '>>> PERFORMANCE FIXES APPLIED SUCCESSFULLY.';
GO

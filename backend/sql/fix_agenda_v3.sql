USE [Bdplaner];
GO

SET ANSI_NULLS ON;
GO
SET QUOTED_IDENTIFIER ON;
GO

/*
  FIX AGENDA V3:
  1. Fix sp_Tareas_ObtenerPorUsuario to include "Project Owner" visibility.
     User wants to see ALL tasks from projects they manage/own in their Inbox/Suggestions.
     
  2. Ensure future tasks are handled correctly (Sorting).
*/

CREATE OR ALTER PROCEDURE dbo.sp_Tareas_ObtenerPorUsuario
    @carnet     NVARCHAR(50),
    @estado     NVARCHAR(50) = NULL,
    @idProyecto INT         = NULL,
    @query      NVARCHAR(100)= NULL,
    @startDate  DATETIME    = NULL,
    @endDate    DATETIME    = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- Normalize NULLs
    IF (@query IS NOT NULL AND LTRIM(RTRIM(@query)) = N'') SET @query = NULL;

    -- Get user ID once
    DECLARE @idUsuario INT;
    SELECT TOP (1) @idUsuario = u.idUsuario
    FROM dbo.p_Usuarios u
    WHERE u.carnet = @carnet;

    -- Temp table for unique IDs
    CREATE TABLE #IdsTareas(
        idTarea INT NOT NULL PRIMARY KEY
    );

    -- 1. Tasks where I am ASSIGNED
    --    (Relies on correct population of p_TareaAsignados.carnet)
    INSERT INTO #IdsTareas (idTarea)
    SELECT t.idTarea
    FROM dbo.p_TareaAsignados ta
    INNER JOIN dbo.p_Tareas t ON t.idTarea = ta.idTarea
    WHERE t.activo = 1
      AND (ta.carnet = @carnet OR (ta.carnet IS NULL AND ta.idUsuario = @idUsuario))
      AND (@estado IS NULL OR t.estado = @estado)
      AND (@idProyecto IS NULL OR t.idProyecto = @idProyecto)
      AND (@query IS NULL OR (t.nombre LIKE N'%' + @query + N'%' OR t.descripcion LIKE N'%' + @query + N'%'))
      AND (@startDate IS NULL OR t.fechaObjetivo >= @startDate)
      AND (@endDate   IS NULL OR t.fechaObjetivo <= @endDate);

    -- 2. Tasks CREATED by me but ORPHAN (No assignees)
    INSERT INTO #IdsTareas (idTarea)
    SELECT t.idTarea
    FROM dbo.p_Tareas t
    WHERE t.activo = 1
      AND (t.creadorCarnet = @carnet OR (t.creadorCarnet IS NULL AND t.idCreador = @idUsuario))
      AND NOT EXISTS (SELECT 1 FROM dbo.p_TareaAsignados ta WHERE ta.idTarea = t.idTarea)
      
      AND (@estado IS NULL OR t.estado = @estado)
      AND (@idProyecto IS NULL OR t.idProyecto = @idProyecto)
      AND (@query IS NULL OR (t.nombre LIKE N'%' + @query + N'%' OR t.descripcion LIKE N'%' + @query + N'%'))
      AND (@startDate IS NULL OR t.fechaObjetivo >= @startDate)
      AND (@endDate   IS NULL OR t.fechaObjetivo <= @endDate)
      AND NOT EXISTS (SELECT 1 FROM #IdsTareas x WHERE x.idTarea = t.idTarea);

    -- 3. [NEW] Tasks from Projects where I am Responsable (Manager) or Creator
    --    User Feedback: "Inbox con un listado... no me sale toda la de proyecto que tengo y mas la estrategica"
    --    This adds visibility to ALL tasks in projects owned by the user.
    INSERT INTO #IdsTareas (idTarea)
    SELECT t.idTarea
    FROM dbo.p_Tareas t
    INNER JOIN dbo.p_Proyectos p ON t.idProyecto = p.idProyecto
    WHERE t.activo = 1
      AND (p.responsableCarnet = @carnet OR p.creadorCarnet = @carnet OR (p.idCreador = @idUsuario AND p.creadorCarnet IS NULL))
      
      AND (@estado IS NULL OR t.estado = @estado)
      AND (@idProyecto IS NULL OR t.idProyecto = @idProyecto)
      AND (@query IS NULL OR (t.nombre LIKE N'%' + @query + N'%' OR t.descripcion LIKE N'%' + @query + N'%'))
      AND (@startDate IS NULL OR t.fechaObjetivo >= @startDate)
      AND (@endDate   IS NULL OR t.fechaObjetivo <= @endDate)
      AND NOT EXISTS (SELECT 1 FROM #IdsTareas x WHERE x.idTarea = t.idTarea);

    -- Final Select Joining back
    SELECT
        t.idTarea, t.idProyecto,
        t.nombre AS titulo,
        t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
        t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
        t.porcentaje AS progreso,
        t.orden, t.idCreador, t.fechaInicioPlanificada,
        t.idGrupo, t.numeroParte,
        t.fechaActualizacion AS fechaUltActualizacion,
        t.idTareaPadre,
        -- t.idPlan, -- Removed as it might not prevent compile if column missing? check tables. Assuming OK or ignore.
        p.nombre AS proyectoNombre
    FROM #IdsTareas x
    INNER JOIN dbo.p_Tareas t     ON t.idTarea = x.idTarea
    LEFT  JOIN dbo.p_Proyectos p  ON p.idProyecto = t.idProyecto
    ORDER BY 
        CASE WHEN t.fechaObjetivo IS NULL THEN 1 ELSE 0 END, -- Nulls last (or first, depending on logic)
        t.fechaObjetivo ASC, 
        t.idTarea ASC
    OPTION (RECOMPILE);

    DROP TABLE #IdsTareas;
END
GO

PRINT '✅ sp_Tareas_ObtenerPorUsuario updated to include Project Owner visibility.';
GO

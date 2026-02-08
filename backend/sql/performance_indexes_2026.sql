USE [Bdplaner];
GO

-- =========================================================
-- OPTIMIZACION DE INDICES - AUDITORIA 2026-02-04
-- Basado en sql_inline_review.md
-- Objetivo: Mejorar rendimiento de Joins y Filtros frecuentes
-- =========================================================

-- 1. Optimización visibilidad y jerarquía (Recursividad)
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name = 'IX_UsuariosOrganizacion_Busqueda' AND object_id = OBJECT_ID('p_UsuariosOrganizacion'))
BEGIN
    CREATE NONCLUSTERED INDEX [IX_UsuariosOrganizacion_Busqueda] 
    ON [dbo].[p_UsuariosOrganizacion] ([idUsuario], [rol])
    INCLUDE ([idNodo], [fechaInicio], [fechaFin]);
END
GO

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name = 'IX_OrganizacionNodos_Padre' AND object_id = OBJECT_ID('p_OrganizacionNodos'))
BEGIN
    CREATE NONCLUSTERED INDEX [IX_OrganizacionNodos_Padre] 
    ON [dbo].[p_OrganizacionNodos] ([idPadre], [activo])
    INCLUDE ([idNodo]);
END
GO

-- 2. Optimización Checkins y Mi Día
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name = 'IX_Checkins_UsuarioFecha' AND object_id = OBJECT_ID('p_Checkins'))
BEGIN
    CREATE NONCLUSTERED INDEX [IX_Checkins_UsuarioFecha] 
    ON [dbo].[p_Checkins] ([usuarioCarnet], [fecha])
    INCLUDE ([estadoAnimo]);
END
GO

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name = 'IX_CheckinTareas_Checkin' AND object_id = OBJECT_ID('p_CheckinTareas'))
BEGIN
    CREATE NONCLUSTERED INDEX [IX_CheckinTareas_Checkin] 
    ON [dbo].[p_CheckinTareas] ([idCheckin])
    INCLUDE ([idTarea], [tipo]);
END
GO

-- 3. Optimización Tareas y Asignaciones (Critical Path)
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name = 'IX_Tareas_EstadoObjetivo' AND object_id = OBJECT_ID('p_Tareas'))
BEGIN
    CREATE NONCLUSTERED INDEX [IX_Tareas_EstadoObjetivo] 
    ON [dbo].[p_Tareas] ([estado], [fechaObjetivo])
    INCLUDE ([idProyecto], [prioridad], [idCreador]);
END
GO

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name = 'IX_TareaAsignados_Usuario' AND object_id = OBJECT_ID('p_TareaAsignados'))
BEGIN
    CREATE NONCLUSTERED INDEX [IX_TareaAsignados_Usuario] 
    ON [dbo].[p_TareaAsignados] ([carnet], [idTarea]);
END
GO

-- 4. Optimización Bloqueos (Tableros y Alertas)
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name = 'IX_Bloqueos_OrigenEstado' AND object_id = OBJECT_ID('p_Bloqueos'))
BEGIN
    CREATE NONCLUSTERED INDEX [IX_Bloqueos_OrigenEstado] 
    ON [dbo].[p_Bloqueos] ([carnetOrigen], [estado])
    INCLUDE ([creadoEn]);
END
GO

-- 5. Optimización Auditoría y Logs (Para páginas de admin)
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name = 'IX_Logs_Fecha' AND object_id = OBJECT_ID('p_Logs'))
BEGIN
    CREATE NONCLUSTERED INDEX [IX_Logs_Fecha] 
    ON [dbo].[p_Logs] ([fecha] DESC)
    INCLUDE ([idUsuario], [accion]);
END
GO

PRINT 'Indices de optimizacion aplicados correctamente.';

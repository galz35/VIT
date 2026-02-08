/* 
Bdplaner - Patch Carnet First (v2)
Generado: 2026-01-25 20:44:46
Recomendado ejecutar en SSMS/Azure Data Studio (respeta GO).
*/
SET NOCOUNT ON;
SET XACT_ABORT ON;

/* =========================
   0) Validaciones base
   ========================= */
IF OBJECT_ID('dbo.p_Usuarios','U') IS NULL
    THROW 50000, 'No existe dbo.p_Usuarios.', 1;

IF COL_LENGTH('dbo.p_Usuarios','carnet') IS NULL
BEGIN
    PRINT 'Agregando dbo.p_Usuarios.carnet ...';
    ALTER TABLE dbo.p_Usuarios ADD carnet NVARCHAR(50) NULL;
END

-- Reporte: usuarios sin carnet
IF EXISTS (SELECT 1 FROM dbo.p_Usuarios WHERE carnet IS NULL OR LTRIM(RTRIM(carnet)) = '')
BEGIN
    PRINT 'WARNING: Hay usuarios sin carnet (no se podra poblar carnet* para esos usuarios).';
    SELECT idUsuario, nombre, correo, carnet
    FROM dbo.p_Usuarios
    WHERE carnet IS NULL OR LTRIM(RTRIM(carnet)) = '';
END

-- ERROR si hay carnet duplicados
IF EXISTS (
    SELECT carnet 
    FROM dbo.p_Usuarios
    WHERE carnet IS NOT NULL AND LTRIM(RTRIM(carnet)) <> ''
    GROUP BY carnet
    HAVING COUNT(*) > 1
)
BEGIN
    PRINT 'ERROR: Carnets duplicados en dbo.p_Usuarios.';
    SELECT carnet, COUNT(*) AS cantidad
    FROM dbo.p_Usuarios
    WHERE carnet IS NOT NULL AND LTRIM(RTRIM(carnet)) <> ''
    GROUP BY carnet
    HAVING COUNT(*) > 1;
    THROW 50001, 'Existen carnets duplicados en dbo.p_Usuarios. Corrija antes de continuar.', 1;
END

-- Indice UNIQUE filtrado por carnet no-nulo/no-vacio
IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'UX_p_Usuarios_carnet' AND object_id = OBJECT_ID('dbo.p_Usuarios'))
BEGIN
    PRINT 'Creando indice UNIQUE UX_p_Usuarios_carnet ...';
    CREATE UNIQUE NONCLUSTERED INDEX UX_p_Usuarios_carnet
    ON dbo.p_Usuarios(carnet)
    WHERE carnet IS NOT NULL AND LTRIM(RTRIM(carnet)) <> '';
END

GO


/* =========================
   1) Agregar columnas carnet* y poblar desde dbo.p_Usuarios
   ========================= */
IF OBJECT_ID('dbo.p_AuditLog','U') IS NOT NULL AND COL_LENGTH('dbo.p_AuditLog','carnetUsuario') IS NULL
BEGIN
    PRINT 'Agregando p_AuditLog.carnetUsuario ...';
    ALTER TABLE dbo.p_AuditLog ADD [carnetUsuario] NVARCHAR(50) NULL;
END

IF OBJECT_ID('dbo.p_AuditLog','U') IS NOT NULL AND COL_LENGTH('dbo.p_AuditLog','carnetUsuario') IS NOT NULL
BEGIN
    PRINT 'Poblando p_AuditLog.carnetUsuario desde idUsuario ...';
    UPDATE t
        SET [carnetUsuario] = u.carnet
    FROM dbo.p_AuditLog t
    INNER JOIN dbo.p_Usuarios u ON u.idUsuario = t.[idUsuario]
    WHERE t.[idUsuario] IS NOT NULL
      AND (t.[carnetUsuario] IS NULL OR LTRIM(RTRIM(t.[carnetUsuario])) = '');
END

IF OBJECT_ID('dbo.p_AuditLog','U') IS NOT NULL AND COL_LENGTH('dbo.p_AuditLog','carnetUsuario') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_AuditLog_carnetUsuario' AND object_id = OBJECT_ID('dbo.p_AuditLog'))
BEGIN
    PRINT 'Creando indice IX_p_AuditLog_carnetUsuario ...';
    CREATE NONCLUSTERED INDEX [IX_p_AuditLog_carnetUsuario] ON dbo.p_AuditLog([carnetUsuario]);
END

IF OBJECT_ID('dbo.p_Auditoria','U') IS NOT NULL AND COL_LENGTH('dbo.p_Auditoria','carnetUsuario') IS NULL
BEGIN
    PRINT 'Agregando p_Auditoria.carnetUsuario ...';
    ALTER TABLE dbo.p_Auditoria ADD [carnetUsuario] NVARCHAR(50) NULL;
END

IF OBJECT_ID('dbo.p_Auditoria','U') IS NOT NULL AND COL_LENGTH('dbo.p_Auditoria','carnetUsuario') IS NOT NULL
BEGIN
    PRINT 'Poblando p_Auditoria.carnetUsuario desde idUsuario ...';
    UPDATE t
        SET [carnetUsuario] = u.carnet
    FROM dbo.p_Auditoria t
    INNER JOIN dbo.p_Usuarios u ON u.idUsuario = t.[idUsuario]
    WHERE t.[idUsuario] IS NOT NULL
      AND (t.[carnetUsuario] IS NULL OR LTRIM(RTRIM(t.[carnetUsuario])) = '');
END

IF OBJECT_ID('dbo.p_Auditoria','U') IS NOT NULL AND COL_LENGTH('dbo.p_Auditoria','carnetUsuario') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_Auditoria_carnetUsuario' AND object_id = OBJECT_ID('dbo.p_Auditoria'))
BEGIN
    PRINT 'Creando indice IX_p_Auditoria_carnetUsuario ...';
    CREATE NONCLUSTERED INDEX [IX_p_Auditoria_carnetUsuario] ON dbo.p_Auditoria([carnetUsuario]);
END

IF OBJECT_ID('dbo.p_Checkins','U') IS NOT NULL AND COL_LENGTH('dbo.p_Checkins','usuarioCarnet') IS NULL
BEGIN
    PRINT 'Agregando p_Checkins.usuarioCarnet ...';
    ALTER TABLE dbo.p_Checkins ADD [usuarioCarnet] NVARCHAR(50) NULL;
END

IF OBJECT_ID('dbo.p_Checkins','U') IS NOT NULL AND COL_LENGTH('dbo.p_Checkins','usuarioCarnet') IS NOT NULL
BEGIN
    PRINT 'Poblando p_Checkins.usuarioCarnet desde idUsuario ...';
    UPDATE t
        SET [usuarioCarnet] = u.carnet
    FROM dbo.p_Checkins t
    INNER JOIN dbo.p_Usuarios u ON u.idUsuario = t.[idUsuario]
    WHERE t.[idUsuario] IS NOT NULL
      AND (t.[usuarioCarnet] IS NULL OR LTRIM(RTRIM(t.[usuarioCarnet])) = '');
END

IF OBJECT_ID('dbo.p_Checkins','U') IS NOT NULL AND COL_LENGTH('dbo.p_Checkins','usuarioCarnet') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_Checkins_usuarioCarnet' AND object_id = OBJECT_ID('dbo.p_Checkins'))
BEGIN
    PRINT 'Creando indice IX_p_Checkins_usuarioCarnet ...';
    CREATE NONCLUSTERED INDEX [IX_p_Checkins_usuarioCarnet] ON dbo.p_Checkins([usuarioCarnet]);
END

IF OBJECT_ID('dbo.p_FocoDiario','U') IS NOT NULL AND COL_LENGTH('dbo.p_FocoDiario','carnetUsuario') IS NULL
BEGIN
    PRINT 'Agregando p_FocoDiario.carnetUsuario ...';
    ALTER TABLE dbo.p_FocoDiario ADD [carnetUsuario] NVARCHAR(50) NULL;
END

IF OBJECT_ID('dbo.p_FocoDiario','U') IS NOT NULL AND COL_LENGTH('dbo.p_FocoDiario','carnetUsuario') IS NOT NULL
BEGIN
    PRINT 'Poblando p_FocoDiario.carnetUsuario desde idUsuario ...';
    UPDATE t
        SET [carnetUsuario] = u.carnet
    FROM dbo.p_FocoDiario t
    INNER JOIN dbo.p_Usuarios u ON u.idUsuario = t.[idUsuario]
    WHERE t.[idUsuario] IS NOT NULL
      AND (t.[carnetUsuario] IS NULL OR LTRIM(RTRIM(t.[carnetUsuario])) = '');
END

IF OBJECT_ID('dbo.p_FocoDiario','U') IS NOT NULL AND COL_LENGTH('dbo.p_FocoDiario','carnetUsuario') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_FocoDiario_carnetUsuario' AND object_id = OBJECT_ID('dbo.p_FocoDiario'))
BEGIN
    PRINT 'Creando indice IX_p_FocoDiario_carnetUsuario ...';
    CREATE NONCLUSTERED INDEX [IX_p_FocoDiario_carnetUsuario] ON dbo.p_FocoDiario([carnetUsuario]);
END

IF OBJECT_ID('dbo.p_Logs','U') IS NOT NULL AND COL_LENGTH('dbo.p_Logs','carnetUsuario') IS NULL
BEGIN
    PRINT 'Agregando p_Logs.carnetUsuario ...';
    ALTER TABLE dbo.p_Logs ADD [carnetUsuario] NVARCHAR(50) NULL;
END

IF OBJECT_ID('dbo.p_Logs','U') IS NOT NULL AND COL_LENGTH('dbo.p_Logs','carnetUsuario') IS NOT NULL
BEGIN
    PRINT 'Poblando p_Logs.carnetUsuario desde idUsuario ...';
    UPDATE t
        SET [carnetUsuario] = u.carnet
    FROM dbo.p_Logs t
    INNER JOIN dbo.p_Usuarios u ON u.idUsuario = t.[idUsuario]
    WHERE t.[idUsuario] IS NOT NULL
      AND (t.[carnetUsuario] IS NULL OR LTRIM(RTRIM(t.[carnetUsuario])) = '');
END

IF OBJECT_ID('dbo.p_Logs','U') IS NOT NULL AND COL_LENGTH('dbo.p_Logs','carnetUsuario') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_Logs_carnetUsuario' AND object_id = OBJECT_ID('dbo.p_Logs'))
BEGIN
    PRINT 'Creando indice IX_p_Logs_carnetUsuario ...';
    CREATE NONCLUSTERED INDEX [IX_p_Logs_carnetUsuario] ON dbo.p_Logs([carnetUsuario]);
END

IF OBJECT_ID('dbo.p_LogSistema','U') IS NOT NULL AND COL_LENGTH('dbo.p_LogSistema','carnetUsuario') IS NULL
BEGIN
    PRINT 'Agregando p_LogSistema.carnetUsuario ...';
    ALTER TABLE dbo.p_LogSistema ADD [carnetUsuario] NVARCHAR(50) NULL;
END

IF OBJECT_ID('dbo.p_LogSistema','U') IS NOT NULL AND COL_LENGTH('dbo.p_LogSistema','carnetUsuario') IS NOT NULL
BEGIN
    PRINT 'Poblando p_LogSistema.carnetUsuario desde idUsuario ...';
    UPDATE t
        SET [carnetUsuario] = u.carnet
    FROM dbo.p_LogSistema t
    INNER JOIN dbo.p_Usuarios u ON u.idUsuario = t.[idUsuario]
    WHERE t.[idUsuario] IS NOT NULL
      AND (t.[carnetUsuario] IS NULL OR LTRIM(RTRIM(t.[carnetUsuario])) = '');
END

IF OBJECT_ID('dbo.p_LogSistema','U') IS NOT NULL AND COL_LENGTH('dbo.p_LogSistema','carnetUsuario') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_LogSistema_carnetUsuario' AND object_id = OBJECT_ID('dbo.p_LogSistema'))
BEGIN
    PRINT 'Creando indice IX_p_LogSistema_carnetUsuario ...';
    CREATE NONCLUSTERED INDEX [IX_p_LogSistema_carnetUsuario] ON dbo.p_LogSistema([carnetUsuario]);
END

IF OBJECT_ID('dbo.p_Notas','U') IS NOT NULL AND COL_LENGTH('dbo.p_Notas','carnetUsuario') IS NULL
BEGIN
    PRINT 'Agregando p_Notas.carnetUsuario ...';
    ALTER TABLE dbo.p_Notas ADD [carnetUsuario] NVARCHAR(50) NULL;
END

IF OBJECT_ID('dbo.p_Notas','U') IS NOT NULL AND COL_LENGTH('dbo.p_Notas','carnetUsuario') IS NOT NULL
BEGIN
    PRINT 'Poblando p_Notas.carnetUsuario desde idUsuario ...';
    UPDATE t
        SET [carnetUsuario] = u.carnet
    FROM dbo.p_Notas t
    INNER JOIN dbo.p_Usuarios u ON u.idUsuario = t.[idUsuario]
    WHERE t.[idUsuario] IS NOT NULL
      AND (t.[carnetUsuario] IS NULL OR LTRIM(RTRIM(t.[carnetUsuario])) = '');
END

IF OBJECT_ID('dbo.p_Notas','U') IS NOT NULL AND COL_LENGTH('dbo.p_Notas','carnetUsuario') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_Notas_carnetUsuario' AND object_id = OBJECT_ID('dbo.p_Notas'))
BEGIN
    PRINT 'Creando indice IX_p_Notas_carnetUsuario ...';
    CREATE NONCLUSTERED INDEX [IX_p_Notas_carnetUsuario] ON dbo.p_Notas([carnetUsuario]);
END

IF OBJECT_ID('dbo.p_PlanesTrabajo','U') IS NOT NULL AND COL_LENGTH('dbo.p_PlanesTrabajo','carnetUsuario') IS NULL
BEGIN
    PRINT 'Agregando p_PlanesTrabajo.carnetUsuario ...';
    ALTER TABLE dbo.p_PlanesTrabajo ADD [carnetUsuario] NVARCHAR(50) NULL;
END

IF OBJECT_ID('dbo.p_PlanesTrabajo','U') IS NOT NULL AND COL_LENGTH('dbo.p_PlanesTrabajo','carnetUsuario') IS NOT NULL
BEGIN
    PRINT 'Poblando p_PlanesTrabajo.carnetUsuario desde idUsuario ...';
    UPDATE t
        SET [carnetUsuario] = u.carnet
    FROM dbo.p_PlanesTrabajo t
    INNER JOIN dbo.p_Usuarios u ON u.idUsuario = t.[idUsuario]
    WHERE t.[idUsuario] IS NOT NULL
      AND (t.[carnetUsuario] IS NULL OR LTRIM(RTRIM(t.[carnetUsuario])) = '');
END

IF OBJECT_ID('dbo.p_PlanesTrabajo','U') IS NOT NULL AND COL_LENGTH('dbo.p_PlanesTrabajo','carnetUsuario') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_PlanesTrabajo_carnetUsuario' AND object_id = OBJECT_ID('dbo.p_PlanesTrabajo'))
BEGIN
    PRINT 'Creando indice IX_p_PlanesTrabajo_carnetUsuario ...';
    CREATE NONCLUSTERED INDEX [IX_p_PlanesTrabajo_carnetUsuario] ON dbo.p_PlanesTrabajo([carnetUsuario]);
END

IF OBJECT_ID('dbo.p_PlanesTrabajo','U') IS NOT NULL AND COL_LENGTH('dbo.p_PlanesTrabajo','carnetAprobador') IS NULL
BEGIN
    PRINT 'Agregando p_PlanesTrabajo.carnetAprobador ...';
    ALTER TABLE dbo.p_PlanesTrabajo ADD [carnetAprobador] NVARCHAR(50) NULL;
END

IF OBJECT_ID('dbo.p_PlanesTrabajo','U') IS NOT NULL AND COL_LENGTH('dbo.p_PlanesTrabajo','carnetAprobador') IS NOT NULL
BEGIN
    PRINT 'Poblando p_PlanesTrabajo.carnetAprobador desde idAprobador ...';
    UPDATE t
        SET [carnetAprobador] = u.carnet
    FROM dbo.p_PlanesTrabajo t
    INNER JOIN dbo.p_Usuarios u ON u.idUsuario = t.[idAprobador]
    WHERE t.[idAprobador] IS NOT NULL
      AND (t.[carnetAprobador] IS NULL OR LTRIM(RTRIM(t.[carnetAprobador])) = '');
END

IF OBJECT_ID('dbo.p_PlanesTrabajo','U') IS NOT NULL AND COL_LENGTH('dbo.p_PlanesTrabajo','carnetAprobador') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_PlanesTrabajo_carnetAprobador' AND object_id = OBJECT_ID('dbo.p_PlanesTrabajo'))
BEGIN
    PRINT 'Creando indice IX_p_PlanesTrabajo_carnetAprobador ...';
    CREATE NONCLUSTERED INDEX [IX_p_PlanesTrabajo_carnetAprobador] ON dbo.p_PlanesTrabajo([carnetAprobador]);
END

IF OBJECT_ID('dbo.p_TareaAsignados','U') IS NOT NULL AND COL_LENGTH('dbo.p_TareaAsignados','carnetUsuario') IS NULL
BEGIN
    PRINT 'Agregando p_TareaAsignados.carnetUsuario ...';
    ALTER TABLE dbo.p_TareaAsignados ADD [carnetUsuario] NVARCHAR(50) NULL;
END

IF OBJECT_ID('dbo.p_TareaAsignados','U') IS NOT NULL AND COL_LENGTH('dbo.p_TareaAsignados','carnetUsuario') IS NOT NULL
BEGIN
    PRINT 'Poblando p_TareaAsignados.carnetUsuario desde idUsuario ...';
    UPDATE t
        SET [carnetUsuario] = u.carnet
    FROM dbo.p_TareaAsignados t
    INNER JOIN dbo.p_Usuarios u ON u.idUsuario = t.[idUsuario]
    WHERE t.[idUsuario] IS NOT NULL
      AND (t.[carnetUsuario] IS NULL OR LTRIM(RTRIM(t.[carnetUsuario])) = '');
END

IF OBJECT_ID('dbo.p_TareaAsignados','U') IS NOT NULL AND COL_LENGTH('dbo.p_TareaAsignados','carnetUsuario') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_TareaAsignados_carnetUsuario' AND object_id = OBJECT_ID('dbo.p_TareaAsignados'))
BEGIN
    PRINT 'Creando indice IX_p_TareaAsignados_carnetUsuario ...';
    CREATE NONCLUSTERED INDEX [IX_p_TareaAsignados_carnetUsuario] ON dbo.p_TareaAsignados([carnetUsuario]);
END

IF OBJECT_ID('dbo.p_TareaAvances','U') IS NOT NULL AND COL_LENGTH('dbo.p_TareaAvances','carnetUsuario') IS NULL
BEGIN
    PRINT 'Agregando p_TareaAvances.carnetUsuario ...';
    ALTER TABLE dbo.p_TareaAvances ADD [carnetUsuario] NVARCHAR(50) NULL;
END

IF OBJECT_ID('dbo.p_TareaAvances','U') IS NOT NULL AND COL_LENGTH('dbo.p_TareaAvances','carnetUsuario') IS NOT NULL
BEGIN
    PRINT 'Poblando p_TareaAvances.carnetUsuario desde idUsuario ...';
    UPDATE t
        SET [carnetUsuario] = u.carnet
    FROM dbo.p_TareaAvances t
    INNER JOIN dbo.p_Usuarios u ON u.idUsuario = t.[idUsuario]
    WHERE t.[idUsuario] IS NOT NULL
      AND (t.[carnetUsuario] IS NULL OR LTRIM(RTRIM(t.[carnetUsuario])) = '');
END

IF OBJECT_ID('dbo.p_TareaAvances','U') IS NOT NULL AND COL_LENGTH('dbo.p_TareaAvances','carnetUsuario') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_TareaAvances_carnetUsuario' AND object_id = OBJECT_ID('dbo.p_TareaAvances'))
BEGIN
    PRINT 'Creando indice IX_p_TareaAvances_carnetUsuario ...';
    CREATE NONCLUSTERED INDEX [IX_p_TareaAvances_carnetUsuario] ON dbo.p_TareaAvances([carnetUsuario]);
END

IF OBJECT_ID('dbo.p_TareaAvanceMensual','U') IS NOT NULL AND COL_LENGTH('dbo.p_TareaAvanceMensual','carnetUsuarioActualizador') IS NULL
BEGIN
    PRINT 'Agregando p_TareaAvanceMensual.carnetUsuarioActualizador ...';
    ALTER TABLE dbo.p_TareaAvanceMensual ADD [carnetUsuarioActualizador] NVARCHAR(50) NULL;
END

IF OBJECT_ID('dbo.p_TareaAvanceMensual','U') IS NOT NULL AND COL_LENGTH('dbo.p_TareaAvanceMensual','carnetUsuarioActualizador') IS NOT NULL
BEGIN
    PRINT 'Poblando p_TareaAvanceMensual.carnetUsuarioActualizador desde idUsuarioActualizador ...';
    UPDATE t
        SET [carnetUsuarioActualizador] = u.carnet
    FROM dbo.p_TareaAvanceMensual t
    INNER JOIN dbo.p_Usuarios u ON u.idUsuario = t.[idUsuarioActualizador]
    WHERE t.[idUsuarioActualizador] IS NOT NULL
      AND (t.[carnetUsuarioActualizador] IS NULL OR LTRIM(RTRIM(t.[carnetUsuarioActualizador])) = '');
END

IF OBJECT_ID('dbo.p_TareaAvanceMensual','U') IS NOT NULL AND COL_LENGTH('dbo.p_TareaAvanceMensual','carnetUsuarioActualizador') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_TareaAvanceMensual_carnetUsuarioActualizador' AND object_id = OBJECT_ID('dbo.p_TareaAvanceMensual'))
BEGIN
    PRINT 'Creando indice IX_p_TareaAvanceMensual_carnetUsuarioActualizador ...';
    CREATE NONCLUSTERED INDEX [IX_p_TareaAvanceMensual_carnetUsuarioActualizador] ON dbo.p_TareaAvanceMensual([carnetUsuarioActualizador]);
END

IF OBJECT_ID('dbo.p_TareaAsignacionLog','U') IS NOT NULL AND COL_LENGTH('dbo.p_TareaAsignacionLog','carnetUsuarioAnterior') IS NULL
BEGIN
    PRINT 'Agregando p_TareaAsignacionLog.carnetUsuarioAnterior ...';
    ALTER TABLE dbo.p_TareaAsignacionLog ADD [carnetUsuarioAnterior] NVARCHAR(50) NULL;
END

IF OBJECT_ID('dbo.p_TareaAsignacionLog','U') IS NOT NULL AND COL_LENGTH('dbo.p_TareaAsignacionLog','carnetUsuarioAnterior') IS NOT NULL
BEGIN
    PRINT 'Poblando p_TareaAsignacionLog.carnetUsuarioAnterior desde idUsuarioAnterior ...';
    UPDATE t
        SET [carnetUsuarioAnterior] = u.carnet
    FROM dbo.p_TareaAsignacionLog t
    INNER JOIN dbo.p_Usuarios u ON u.idUsuario = t.[idUsuarioAnterior]
    WHERE t.[idUsuarioAnterior] IS NOT NULL
      AND (t.[carnetUsuarioAnterior] IS NULL OR LTRIM(RTRIM(t.[carnetUsuarioAnterior])) = '');
END

IF OBJECT_ID('dbo.p_TareaAsignacionLog','U') IS NOT NULL AND COL_LENGTH('dbo.p_TareaAsignacionLog','carnetUsuarioAnterior') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_TareaAsignacionLog_carnetUsuarioAnterior' AND object_id = OBJECT_ID('dbo.p_TareaAsignacionLog'))
BEGIN
    PRINT 'Creando indice IX_p_TareaAsignacionLog_carnetUsuarioAnterior ...';
    CREATE NONCLUSTERED INDEX [IX_p_TareaAsignacionLog_carnetUsuarioAnterior] ON dbo.p_TareaAsignacionLog([carnetUsuarioAnterior]);
END

IF OBJECT_ID('dbo.p_TareaAsignacionLog','U') IS NOT NULL AND COL_LENGTH('dbo.p_TareaAsignacionLog','carnetUsuarioNuevo') IS NULL
BEGIN
    PRINT 'Agregando p_TareaAsignacionLog.carnetUsuarioNuevo ...';
    ALTER TABLE dbo.p_TareaAsignacionLog ADD [carnetUsuarioNuevo] NVARCHAR(50) NULL;
END

IF OBJECT_ID('dbo.p_TareaAsignacionLog','U') IS NOT NULL AND COL_LENGTH('dbo.p_TareaAsignacionLog','carnetUsuarioNuevo') IS NOT NULL
BEGIN
    PRINT 'Poblando p_TareaAsignacionLog.carnetUsuarioNuevo desde idUsuarioNuevo ...';
    UPDATE t
        SET [carnetUsuarioNuevo] = u.carnet
    FROM dbo.p_TareaAsignacionLog t
    INNER JOIN dbo.p_Usuarios u ON u.idUsuario = t.[idUsuarioNuevo]
    WHERE t.[idUsuarioNuevo] IS NOT NULL
      AND (t.[carnetUsuarioNuevo] IS NULL OR LTRIM(RTRIM(t.[carnetUsuarioNuevo])) = '');
END

IF OBJECT_ID('dbo.p_TareaAsignacionLog','U') IS NOT NULL AND COL_LENGTH('dbo.p_TareaAsignacionLog','carnetUsuarioNuevo') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_TareaAsignacionLog_carnetUsuarioNuevo' AND object_id = OBJECT_ID('dbo.p_TareaAsignacionLog'))
BEGIN
    PRINT 'Creando indice IX_p_TareaAsignacionLog_carnetUsuarioNuevo ...';
    CREATE NONCLUSTERED INDEX [IX_p_TareaAsignacionLog_carnetUsuarioNuevo] ON dbo.p_TareaAsignacionLog([carnetUsuarioNuevo]);
END

IF OBJECT_ID('dbo.p_TareaInstancia','U') IS NOT NULL AND COL_LENGTH('dbo.p_TareaInstancia','carnetUsuarioEjecutor') IS NULL
BEGIN
    PRINT 'Agregando p_TareaInstancia.carnetUsuarioEjecutor ...';
    ALTER TABLE dbo.p_TareaInstancia ADD [carnetUsuarioEjecutor] NVARCHAR(50) NULL;
END

IF OBJECT_ID('dbo.p_TareaInstancia','U') IS NOT NULL AND COL_LENGTH('dbo.p_TareaInstancia','carnetUsuarioEjecutor') IS NOT NULL
BEGIN
    PRINT 'Poblando p_TareaInstancia.carnetUsuarioEjecutor desde idUsuarioEjecutor ...';
    UPDATE t
        SET [carnetUsuarioEjecutor] = u.carnet
    FROM dbo.p_TareaInstancia t
    INNER JOIN dbo.p_Usuarios u ON u.idUsuario = t.[idUsuarioEjecutor]
    WHERE t.[idUsuarioEjecutor] IS NOT NULL
      AND (t.[carnetUsuarioEjecutor] IS NULL OR LTRIM(RTRIM(t.[carnetUsuarioEjecutor])) = '');
END

IF OBJECT_ID('dbo.p_TareaInstancia','U') IS NOT NULL AND COL_LENGTH('dbo.p_TareaInstancia','carnetUsuarioEjecutor') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_TareaInstancia_carnetUsuarioEjecutor' AND object_id = OBJECT_ID('dbo.p_TareaInstancia'))
BEGIN
    PRINT 'Creando indice IX_p_TareaInstancia_carnetUsuarioEjecutor ...';
    CREATE NONCLUSTERED INDEX [IX_p_TareaInstancia_carnetUsuarioEjecutor] ON dbo.p_TareaInstancia([carnetUsuarioEjecutor]);
END

IF OBJECT_ID('dbo.p_UsuariosConfig','U') IS NOT NULL AND COL_LENGTH('dbo.p_UsuariosConfig','carnetUsuario') IS NULL
BEGIN
    PRINT 'Agregando p_UsuariosConfig.carnetUsuario ...';
    ALTER TABLE dbo.p_UsuariosConfig ADD [carnetUsuario] NVARCHAR(50) NULL;
END

IF OBJECT_ID('dbo.p_UsuariosConfig','U') IS NOT NULL AND COL_LENGTH('dbo.p_UsuariosConfig','carnetUsuario') IS NOT NULL
BEGIN
    PRINT 'Poblando p_UsuariosConfig.carnetUsuario desde idUsuario ...';
    UPDATE t
        SET [carnetUsuario] = u.carnet
    FROM dbo.p_UsuariosConfig t
    INNER JOIN dbo.p_Usuarios u ON u.idUsuario = t.[idUsuario]
    WHERE t.[idUsuario] IS NOT NULL
      AND (t.[carnetUsuario] IS NULL OR LTRIM(RTRIM(t.[carnetUsuario])) = '');
END

IF OBJECT_ID('dbo.p_UsuariosConfig','U') IS NOT NULL AND COL_LENGTH('dbo.p_UsuariosConfig','carnetUsuario') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_UsuariosConfig_carnetUsuario' AND object_id = OBJECT_ID('dbo.p_UsuariosConfig'))
BEGIN
    PRINT 'Creando indice IX_p_UsuariosConfig_carnetUsuario ...';
    CREATE NONCLUSTERED INDEX [IX_p_UsuariosConfig_carnetUsuario] ON dbo.p_UsuariosConfig([carnetUsuario]);
END

IF OBJECT_ID('dbo.p_UsuariosOrganizacion','U') IS NOT NULL AND COL_LENGTH('dbo.p_UsuariosOrganizacion','carnetUsuario') IS NULL
BEGIN
    PRINT 'Agregando p_UsuariosOrganizacion.carnetUsuario ...';
    ALTER TABLE dbo.p_UsuariosOrganizacion ADD [carnetUsuario] NVARCHAR(50) NULL;
END

IF OBJECT_ID('dbo.p_UsuariosOrganizacion','U') IS NOT NULL AND COL_LENGTH('dbo.p_UsuariosOrganizacion','carnetUsuario') IS NOT NULL
BEGIN
    PRINT 'Poblando p_UsuariosOrganizacion.carnetUsuario desde idUsuario ...';
    UPDATE t
        SET [carnetUsuario] = u.carnet
    FROM dbo.p_UsuariosOrganizacion t
    INNER JOIN dbo.p_Usuarios u ON u.idUsuario = t.[idUsuario]
    WHERE t.[idUsuario] IS NOT NULL
      AND (t.[carnetUsuario] IS NULL OR LTRIM(RTRIM(t.[carnetUsuario])) = '');
END

IF OBJECT_ID('dbo.p_UsuariosOrganizacion','U') IS NOT NULL AND COL_LENGTH('dbo.p_UsuariosOrganizacion','carnetUsuario') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_UsuariosOrganizacion_carnetUsuario' AND object_id = OBJECT_ID('dbo.p_UsuariosOrganizacion'))
BEGIN
    PRINT 'Creando indice IX_p_UsuariosOrganizacion_carnetUsuario ...';
    CREATE NONCLUSTERED INDEX [IX_p_UsuariosOrganizacion_carnetUsuario] ON dbo.p_UsuariosOrganizacion([carnetUsuario]);
END

IF OBJECT_ID('dbo.p_UsuariosCredenciales','U') IS NOT NULL AND COL_LENGTH('dbo.p_UsuariosCredenciales','carnetUsuario') IS NULL
BEGIN
    PRINT 'Agregando p_UsuariosCredenciales.carnetUsuario ...';
    ALTER TABLE dbo.p_UsuariosCredenciales ADD [carnetUsuario] NVARCHAR(50) NULL;
END

IF OBJECT_ID('dbo.p_UsuariosCredenciales','U') IS NOT NULL AND COL_LENGTH('dbo.p_UsuariosCredenciales','carnetUsuario') IS NOT NULL
BEGIN
    PRINT 'Poblando p_UsuariosCredenciales.carnetUsuario desde idUsuario ...';
    UPDATE t
        SET [carnetUsuario] = u.carnet
    FROM dbo.p_UsuariosCredenciales t
    INNER JOIN dbo.p_Usuarios u ON u.idUsuario = t.[idUsuario]
    WHERE t.[idUsuario] IS NOT NULL
      AND (t.[carnetUsuario] IS NULL OR LTRIM(RTRIM(t.[carnetUsuario])) = '');
END

IF OBJECT_ID('dbo.p_UsuariosCredenciales','U') IS NOT NULL AND COL_LENGTH('dbo.p_UsuariosCredenciales','carnetUsuario') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_UsuariosCredenciales_carnetUsuario' AND object_id = OBJECT_ID('dbo.p_UsuariosCredenciales'))
BEGIN
    PRINT 'Creando indice IX_p_UsuariosCredenciales_carnetUsuario ...';
    CREATE NONCLUSTERED INDEX [IX_p_UsuariosCredenciales_carnetUsuario] ON dbo.p_UsuariosCredenciales([carnetUsuario]);
END

IF OBJECT_ID('dbo.p_UsuarioCredenciales','U') IS NOT NULL AND COL_LENGTH('dbo.p_UsuarioCredenciales','carnetUsuario') IS NULL
BEGIN
    PRINT 'Agregando p_UsuarioCredenciales.carnetUsuario ...';
    ALTER TABLE dbo.p_UsuarioCredenciales ADD [carnetUsuario] NVARCHAR(50) NULL;
END

IF OBJECT_ID('dbo.p_UsuarioCredenciales','U') IS NOT NULL AND COL_LENGTH('dbo.p_UsuarioCredenciales','carnetUsuario') IS NOT NULL
BEGIN
    PRINT 'Poblando p_UsuarioCredenciales.carnetUsuario desde idUsuario ...';
    UPDATE t
        SET [carnetUsuario] = u.carnet
    FROM dbo.p_UsuarioCredenciales t
    INNER JOIN dbo.p_Usuarios u ON u.idUsuario = t.[idUsuario]
    WHERE t.[idUsuario] IS NOT NULL
      AND (t.[carnetUsuario] IS NULL OR LTRIM(RTRIM(t.[carnetUsuario])) = '');
END

IF OBJECT_ID('dbo.p_UsuarioCredenciales','U') IS NOT NULL AND COL_LENGTH('dbo.p_UsuarioCredenciales','carnetUsuario') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_UsuarioCredenciales_carnetUsuario' AND object_id = OBJECT_ID('dbo.p_UsuarioCredenciales'))
BEGIN
    PRINT 'Creando indice IX_p_UsuarioCredenciales_carnetUsuario ...';
    CREATE NONCLUSTERED INDEX [IX_p_UsuarioCredenciales_carnetUsuario] ON dbo.p_UsuarioCredenciales([carnetUsuario]);
END

IF OBJECT_ID('dbo.p_Proyectos','U') IS NOT NULL AND COL_LENGTH('dbo.p_Proyectos','carnetCreador') IS NULL
BEGIN
    PRINT 'Agregando p_Proyectos.carnetCreador ...';
    ALTER TABLE dbo.p_Proyectos ADD [carnetCreador] NVARCHAR(50) NULL;
END

IF OBJECT_ID('dbo.p_Proyectos','U') IS NOT NULL AND COL_LENGTH('dbo.p_Proyectos','carnetCreador') IS NOT NULL
BEGIN
    PRINT 'Poblando p_Proyectos.carnetCreador desde idCreador ...';
    UPDATE t
        SET [carnetCreador] = u.carnet
    FROM dbo.p_Proyectos t
    INNER JOIN dbo.p_Usuarios u ON u.idUsuario = t.[idCreador]
    WHERE t.[idCreador] IS NOT NULL
      AND (t.[carnetCreador] IS NULL OR LTRIM(RTRIM(t.[carnetCreador])) = '');
END

IF OBJECT_ID('dbo.p_Proyectos','U') IS NOT NULL AND COL_LENGTH('dbo.p_Proyectos','carnetCreador') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_Proyectos_carnetCreador' AND object_id = OBJECT_ID('dbo.p_Proyectos'))
BEGIN
    PRINT 'Creando indice IX_p_Proyectos_carnetCreador ...';
    CREATE NONCLUSTERED INDEX [IX_p_Proyectos_carnetCreador] ON dbo.p_Proyectos([carnetCreador]);
END

IF OBJECT_ID('dbo.p_Proyectos','U') IS NOT NULL AND COL_LENGTH('dbo.p_Proyectos','carnetResponsable') IS NULL
BEGIN
    PRINT 'Agregando p_Proyectos.carnetResponsable ...';
    ALTER TABLE dbo.p_Proyectos ADD [carnetResponsable] NVARCHAR(50) NULL;
END

IF OBJECT_ID('dbo.p_Proyectos','U') IS NOT NULL AND COL_LENGTH('dbo.p_Proyectos','carnetResponsable') IS NOT NULL
BEGIN
    PRINT 'Poblando p_Proyectos.carnetResponsable desde idResponsable ...';
    UPDATE t
        SET [carnetResponsable] = u.carnet
    FROM dbo.p_Proyectos t
    INNER JOIN dbo.p_Usuarios u ON u.idUsuario = t.[idResponsable]
    WHERE t.[idResponsable] IS NOT NULL
      AND (t.[carnetResponsable] IS NULL OR LTRIM(RTRIM(t.[carnetResponsable])) = '');
END

IF OBJECT_ID('dbo.p_Proyectos','U') IS NOT NULL AND COL_LENGTH('dbo.p_Proyectos','carnetResponsable') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_Proyectos_carnetResponsable' AND object_id = OBJECT_ID('dbo.p_Proyectos'))
BEGIN
    PRINT 'Creando indice IX_p_Proyectos_carnetResponsable ...';
    CREATE NONCLUSTERED INDEX [IX_p_Proyectos_carnetResponsable] ON dbo.p_Proyectos([carnetResponsable]);
END

IF OBJECT_ID('dbo.p_Tareas','U') IS NOT NULL AND COL_LENGTH('dbo.p_Tareas','asignadoCarnet') IS NULL
BEGIN
    PRINT 'Agregando p_Tareas.asignadoCarnet ...';
    ALTER TABLE dbo.p_Tareas ADD [asignadoCarnet] NVARCHAR(50) NULL;
END

IF OBJECT_ID('dbo.p_Tareas','U') IS NOT NULL AND COL_LENGTH('dbo.p_Tareas','asignadoCarnet') IS NOT NULL
BEGIN
    PRINT 'Poblando p_Tareas.asignadoCarnet desde idAsignado ...';
    UPDATE t
        SET [asignadoCarnet] = u.carnet
    FROM dbo.p_Tareas t
    INNER JOIN dbo.p_Usuarios u ON u.idUsuario = t.[idAsignado]
    WHERE t.[idAsignado] IS NOT NULL
      AND (t.[asignadoCarnet] IS NULL OR LTRIM(RTRIM(t.[asignadoCarnet])) = '');
END

IF OBJECT_ID('dbo.p_Tareas','U') IS NOT NULL AND COL_LENGTH('dbo.p_Tareas','asignadoCarnet') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_Tareas_asignadoCarnet' AND object_id = OBJECT_ID('dbo.p_Tareas'))
BEGIN
    PRINT 'Creando indice IX_p_Tareas_asignadoCarnet ...';
    CREATE NONCLUSTERED INDEX [IX_p_Tareas_asignadoCarnet] ON dbo.p_Tareas([asignadoCarnet]);
END

IF OBJECT_ID('dbo.p_Tareas','U') IS NOT NULL AND COL_LENGTH('dbo.p_Tareas','creadorCarnet') IS NULL
BEGIN
    PRINT 'Agregando p_Tareas.creadorCarnet ...';
    ALTER TABLE dbo.p_Tareas ADD [creadorCarnet] NVARCHAR(50) NULL;
END

IF OBJECT_ID('dbo.p_Tareas','U') IS NOT NULL AND COL_LENGTH('dbo.p_Tareas','creadorCarnet') IS NOT NULL
BEGIN
    PRINT 'Poblando p_Tareas.creadorCarnet desde idCreador ...';
    UPDATE t
        SET [creadorCarnet] = u.carnet
    FROM dbo.p_Tareas t
    INNER JOIN dbo.p_Usuarios u ON u.idUsuario = t.[idCreador]
    WHERE t.[idCreador] IS NOT NULL
      AND (t.[creadorCarnet] IS NULL OR LTRIM(RTRIM(t.[creadorCarnet])) = '');
END

IF OBJECT_ID('dbo.p_Tareas','U') IS NOT NULL AND COL_LENGTH('dbo.p_Tareas','creadorCarnet') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_Tareas_creadorCarnet' AND object_id = OBJECT_ID('dbo.p_Tareas'))
BEGIN
    PRINT 'Creando indice IX_p_Tareas_creadorCarnet ...';
    CREATE NONCLUSTERED INDEX [IX_p_Tareas_creadorCarnet] ON dbo.p_Tareas([creadorCarnet]);
END

IF OBJECT_ID('dbo.p_Tareas','U') IS NOT NULL AND COL_LENGTH('dbo.p_Tareas','deshabilitadoPorCarnet') IS NULL
BEGIN
    PRINT 'Agregando p_Tareas.deshabilitadoPorCarnet ...';
    ALTER TABLE dbo.p_Tareas ADD [deshabilitadoPorCarnet] NVARCHAR(50) NULL;
END

IF OBJECT_ID('dbo.p_Tareas','U') IS NOT NULL AND COL_LENGTH('dbo.p_Tareas','deshabilitadoPorCarnet') IS NOT NULL
BEGIN
    PRINT 'Poblando p_Tareas.deshabilitadoPorCarnet desde deshabilitadoPor ...';
    UPDATE t
        SET [deshabilitadoPorCarnet] = u.carnet
    FROM dbo.p_Tareas t
    INNER JOIN dbo.p_Usuarios u ON u.idUsuario = t.[deshabilitadoPor]
    WHERE t.[deshabilitadoPor] IS NOT NULL
      AND (t.[deshabilitadoPorCarnet] IS NULL OR LTRIM(RTRIM(t.[deshabilitadoPorCarnet])) = '');
END

IF OBJECT_ID('dbo.p_Tareas','U') IS NOT NULL AND COL_LENGTH('dbo.p_Tareas','deshabilitadoPorCarnet') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_Tareas_deshabilitadoPorCarnet' AND object_id = OBJECT_ID('dbo.p_Tareas'))
BEGIN
    PRINT 'Creando indice IX_p_Tareas_deshabilitadoPorCarnet ...';
    CREATE NONCLUSTERED INDEX [IX_p_Tareas_deshabilitadoPorCarnet] ON dbo.p_Tareas([deshabilitadoPorCarnet]);
END

IF OBJECT_ID('dbo.p_Bloqueos','U') IS NOT NULL AND COL_LENGTH('dbo.p_Bloqueos','carnetUsuario') IS NULL
BEGIN
    PRINT 'Agregando p_Bloqueos.carnetUsuario ...';
    ALTER TABLE dbo.p_Bloqueos ADD [carnetUsuario] NVARCHAR(50) NULL;
END

IF OBJECT_ID('dbo.p_Bloqueos','U') IS NOT NULL AND COL_LENGTH('dbo.p_Bloqueos','carnetUsuario') IS NOT NULL
BEGIN
    PRINT 'Poblando p_Bloqueos.carnetUsuario desde idUsuario ...';
    UPDATE t
        SET [carnetUsuario] = u.carnet
    FROM dbo.p_Bloqueos t
    INNER JOIN dbo.p_Usuarios u ON u.idUsuario = t.[idUsuario]
    WHERE t.[idUsuario] IS NOT NULL
      AND (t.[carnetUsuario] IS NULL OR LTRIM(RTRIM(t.[carnetUsuario])) = '');
END

IF OBJECT_ID('dbo.p_Bloqueos','U') IS NOT NULL AND COL_LENGTH('dbo.p_Bloqueos','carnetUsuario') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_Bloqueos_carnetUsuario' AND object_id = OBJECT_ID('dbo.p_Bloqueos'))
BEGIN
    PRINT 'Creando indice IX_p_Bloqueos_carnetUsuario ...';
    CREATE NONCLUSTERED INDEX [IX_p_Bloqueos_carnetUsuario] ON dbo.p_Bloqueos([carnetUsuario]);
END

IF OBJECT_ID('dbo.p_Bloqueos','U') IS NOT NULL AND COL_LENGTH('dbo.p_Bloqueos','carnetResueltoPor') IS NULL
BEGIN
    PRINT 'Agregando p_Bloqueos.carnetResueltoPor ...';
    ALTER TABLE dbo.p_Bloqueos ADD [carnetResueltoPor] NVARCHAR(50) NULL;
END

IF OBJECT_ID('dbo.p_Bloqueos','U') IS NOT NULL AND COL_LENGTH('dbo.p_Bloqueos','carnetResueltoPor') IS NOT NULL
BEGIN
    PRINT 'Poblando p_Bloqueos.carnetResueltoPor desde idResueltoPor ...';
    UPDATE t
        SET [carnetResueltoPor] = u.carnet
    FROM dbo.p_Bloqueos t
    INNER JOIN dbo.p_Usuarios u ON u.idUsuario = t.[idResueltoPor]
    WHERE t.[idResueltoPor] IS NOT NULL
      AND (t.[carnetResueltoPor] IS NULL OR LTRIM(RTRIM(t.[carnetResueltoPor])) = '');
END

IF OBJECT_ID('dbo.p_Bloqueos','U') IS NOT NULL AND COL_LENGTH('dbo.p_Bloqueos','carnetResueltoPor') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_Bloqueos_carnetResueltoPor' AND object_id = OBJECT_ID('dbo.p_Bloqueos'))
BEGIN
    PRINT 'Creando indice IX_p_Bloqueos_carnetResueltoPor ...';
    CREATE NONCLUSTERED INDEX [IX_p_Bloqueos_carnetResueltoPor] ON dbo.p_Bloqueos([carnetResueltoPor]);
END

IF OBJECT_ID('dbo.p_Bloqueos','U') IS NOT NULL AND COL_LENGTH('dbo.p_Bloqueos','carnetOrigenUsuario') IS NULL
BEGIN
    PRINT 'Agregando p_Bloqueos.carnetOrigenUsuario ...';
    ALTER TABLE dbo.p_Bloqueos ADD [carnetOrigenUsuario] NVARCHAR(50) NULL;
END

IF OBJECT_ID('dbo.p_Bloqueos','U') IS NOT NULL AND COL_LENGTH('dbo.p_Bloqueos','carnetOrigenUsuario') IS NOT NULL
BEGIN
    PRINT 'Poblando p_Bloqueos.carnetOrigenUsuario desde idOrigenUsuario ...';
    UPDATE t
        SET [carnetOrigenUsuario] = u.carnet
    FROM dbo.p_Bloqueos t
    INNER JOIN dbo.p_Usuarios u ON u.idUsuario = t.[idOrigenUsuario]
    WHERE t.[idOrigenUsuario] IS NOT NULL
      AND (t.[carnetOrigenUsuario] IS NULL OR LTRIM(RTRIM(t.[carnetOrigenUsuario])) = '');
END

IF OBJECT_ID('dbo.p_Bloqueos','U') IS NOT NULL AND COL_LENGTH('dbo.p_Bloqueos','carnetOrigenUsuario') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_Bloqueos_carnetOrigenUsuario' AND object_id = OBJECT_ID('dbo.p_Bloqueos'))
BEGIN
    PRINT 'Creando indice IX_p_Bloqueos_carnetOrigenUsuario ...';
    CREATE NONCLUSTERED INDEX [IX_p_Bloqueos_carnetOrigenUsuario] ON dbo.p_Bloqueos([carnetOrigenUsuario]);
END

IF OBJECT_ID('dbo.p_Bloqueos','U') IS NOT NULL AND COL_LENGTH('dbo.p_Bloqueos','carnetDestinoUsuario') IS NULL
BEGIN
    PRINT 'Agregando p_Bloqueos.carnetDestinoUsuario ...';
    ALTER TABLE dbo.p_Bloqueos ADD [carnetDestinoUsuario] NVARCHAR(50) NULL;
END

IF OBJECT_ID('dbo.p_Bloqueos','U') IS NOT NULL AND COL_LENGTH('dbo.p_Bloqueos','carnetDestinoUsuario') IS NOT NULL
BEGIN
    PRINT 'Poblando p_Bloqueos.carnetDestinoUsuario desde idDestinoUsuario ...';
    UPDATE t
        SET [carnetDestinoUsuario] = u.carnet
    FROM dbo.p_Bloqueos t
    INNER JOIN dbo.p_Usuarios u ON u.idUsuario = t.[idDestinoUsuario]
    WHERE t.[idDestinoUsuario] IS NOT NULL
      AND (t.[carnetDestinoUsuario] IS NULL OR LTRIM(RTRIM(t.[carnetDestinoUsuario])) = '');
END

IF OBJECT_ID('dbo.p_Bloqueos','U') IS NOT NULL AND COL_LENGTH('dbo.p_Bloqueos','carnetDestinoUsuario') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_Bloqueos_carnetDestinoUsuario' AND object_id = OBJECT_ID('dbo.p_Bloqueos'))
BEGIN
    PRINT 'Creando indice IX_p_Bloqueos_carnetDestinoUsuario ...';
    CREATE NONCLUSTERED INDEX [IX_p_Bloqueos_carnetDestinoUsuario] ON dbo.p_Bloqueos([carnetDestinoUsuario]);
END


/* =========================
   2) Indices de rendimiento (consultas mas comunes)
   ========================= */
IF OBJECT_ID('dbo.p_TareaAsignados','U') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'UX_p_TareaAsignados_idTarea_idUsuario' AND object_id = OBJECT_ID('dbo.p_TareaAsignados'))
BEGIN
    PRINT 'Creando indice UNIQUE UX_p_TareaAsignados_idTarea_idUsuario ...';
    CREATE UNIQUE NONCLUSTERED INDEX UX_p_TareaAsignados_idTarea_idUsuario
    ON dbo.p_TareaAsignados(idTarea, idUsuario);
END

IF OBJECT_ID('dbo.p_Tareas','U') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_Tareas_idProyecto' AND object_id = OBJECT_ID('dbo.p_Tareas'))
BEGIN
    CREATE NONCLUSTERED INDEX IX_p_Tareas_idProyecto ON dbo.p_Tareas(idProyecto);
END

IF OBJECT_ID('dbo.p_Tareas','U') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_Tareas_idAsignado' AND object_id = OBJECT_ID('dbo.p_Tareas'))
BEGIN
    CREATE NONCLUSTERED INDEX IX_p_Tareas_idAsignado ON dbo.p_Tareas(idAsignado);
END

IF OBJECT_ID('dbo.p_Proyectos','U') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_Proyectos_idCreador' AND object_id = OBJECT_ID('dbo.p_Proyectos'))
BEGIN
    CREATE NONCLUSTERED INDEX IX_p_Proyectos_idCreador ON dbo.p_Proyectos(idCreador);
END

IF OBJECT_ID('dbo.p_Proyectos','U') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_Proyectos_idResponsable' AND object_id = OBJECT_ID('dbo.p_Proyectos'))
BEGIN
    CREATE NONCLUSTERED INDEX IX_p_Proyectos_idResponsable ON dbo.p_Proyectos(idResponsable);
END

GO


/* =========================
   3) SPs: soporte carnet (sin romper llamadas existentes)
   ========================= */

ALTER PROCEDURE [dbo].[sp_Checkin_Crear]
    @idUsuario INT,
    @fecha DATE,
    @checkin NVARCHAR(1000),
    @energia INT,
    @carnet NVARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- Resolver @idUsuario desde @carnet (carnet = identificador unico de negocio)
    IF (@idUsuario IS NULL OR @idUsuario = 0) AND @carnet IS NOT NULL AND LTRIM(RTRIM(@carnet)) <> ''
    BEGIN
        SELECT @idUsuario = u.idUsuario
        FROM dbo.p_Usuarios u
        WHERE u.carnet = @carnet;
    END


    DECLARE @usuarioCarnet NVARCHAR(50);
    SELECT @usuarioCarnet = u.carnet
    FROM dbo.p_Usuarios u
    WHERE u.idUsuario = @idUsuario;

    DECLARE @out TABLE (idCheckin INT);

    MERGE dbo.p_Checkins AS target
    USING (SELECT @idUsuario AS idUsuario, @fecha AS fecha) AS source
    ON target.idUsuario = source.idUsuario AND target.fecha = source.fecha
    WHEN MATCHED THEN
        UPDATE SET 
            target.checkin = @checkin,
            target.energia = @energia,
            target.usuarioCarnet = @usuarioCarnet,
            target.fechaUltimaActualizacion = GETDATE()
    WHEN NOT MATCHED THEN
        INSERT (idUsuario, fecha, checkin, energia, usuarioCarnet, fechaUltimaActualizacion)
        VALUES (@idUsuario, @fecha, @checkin, @energia, @usuarioCarnet, GETDATE())
    OUTPUT inserted.idCheckin INTO @out;

    SELECT TOP 1 idCheckin FROM @out;
END

GO

ALTER PROCEDURE [dbo].[sp_Checkin_Upsert]
    @idUsuario INT,
    @fecha DATE,
    @checkin NVARCHAR(MAX),
    @energia INT,
    @carnet NVARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- Resolver @idUsuario desde @carnet (carnet = identificador unico de negocio)
    IF (@idUsuario IS NULL OR @idUsuario = 0) AND @carnet IS NOT NULL AND LTRIM(RTRIM(@carnet)) <> ''
    BEGIN
        SELECT @idUsuario = u.idUsuario
        FROM dbo.p_Usuarios u
        WHERE u.carnet = @carnet;
    END


    DECLARE @usuarioCarnet NVARCHAR(50);
    SELECT @usuarioCarnet = u.carnet
    FROM dbo.p_Usuarios u
    WHERE u.idUsuario = @idUsuario;

    IF EXISTS (SELECT 1 FROM dbo.p_Checkins WHERE idUsuario = @idUsuario AND fecha = @fecha)
    BEGIN
        UPDATE dbo.p_Checkins
           SET checkin = @checkin,
               energia = @energia,
               usuarioCarnet = @usuarioCarnet,
               fechaUltimaActualizacion = GETDATE()
         WHERE idUsuario = @idUsuario AND fecha = @fecha;
    END
    ELSE
    BEGIN
        INSERT INTO dbo.p_Checkins (idUsuario, fecha, checkin, energia, usuarioCarnet, fechaUltimaActualizacion)
        VALUES (@idUsuario, @fecha, @checkin, @energia, @usuarioCarnet, GETDATE());
    END

    SELECT TOP 1 idCheckin
    FROM dbo.p_Checkins
    WHERE idUsuario = @idUsuario AND fecha = @fecha;
END

GO

ALTER PROCEDURE [dbo].[sp_Clarity_CrearTareaRapida]
    @titulo NVARCHAR(200),
    @idUsuario INT,
    @prioridad NVARCHAR(50) = 'Media',
    @tipo NVARCHAR(50) = 'Administrativa',
    @carnet NVARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- Resolver @idUsuario desde @carnet (carnet = identificador unico de negocio)
    IF (@idUsuario IS NULL OR @idUsuario = 0) AND @carnet IS NOT NULL AND LTRIM(RTRIM(@carnet)) <> ''
    BEGIN
        SELECT @idUsuario = u.idUsuario
        FROM dbo.p_Usuarios u
        WHERE u.carnet = @carnet;
    END


    DECLARE @creadorCarnet NVARCHAR(50);
    SELECT @creadorCarnet = u.carnet
    FROM dbo.p_Usuarios u
    WHERE u.idUsuario = @idUsuario;

    DECLARE @out TABLE (idTarea INT);

    INSERT INTO dbo.p_Tareas (nombre, idCreador, creadorCarnet, estado, prioridad, tipo, fechaCreacion, fechaActualizacion)
    OUTPUT inserted.idTarea INTO @out
    VALUES (@titulo, @idUsuario, @creadorCarnet, 'Pendiente', @prioridad, @tipo, GETDATE(), GETDATE());

    SELECT TOP 1 idTarea FROM @out;
END

GO

ALTER PROCEDURE dbo.sp_Clarity_MiDia_Get
(
  @IdUsuario INT,
  @Fecha     DATE
,
  @Carnet NVARCHAR(50) = NULL
)
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

    -- Resolver @IdUsuario desde @Carnet (carnet = identificador unico de negocio)
    IF (@IdUsuario IS NULL OR @IdUsuario = 0) AND @Carnet IS NOT NULL AND LTRIM(RTRIM(@Carnet)) <> ''
    BEGIN
        SELECT @IdUsuario = u.idUsuario
        FROM dbo.p_Usuarios u
        WHERE u.carnet = @Carnet;
    END


  -- Buscamos el ID del último check-in anterior para los arrastrados (Solución para fines de semana)
  DECLARE @IdUltimoCheckin INT;
  SELECT TOP (1) @IdUltimoCheckin = idCheckin
  FROM dbo.p_Checkins
  WHERE idUsuario = @IdUsuario AND fecha < @Fecha
  ORDER BY fecha DESC, creadoEn DESC;

  -----------------------------------------------------------------------
  -- 1) Check-in hoy (Datos de la jornada actual)
  -----------------------------------------------------------------------
  SELECT TOP (1)
      c.idCheckin,
      c.fecha,
      c.entregableTexto,
      c.nota,
      c.creadoEn AS fechaCreacion -- Alias para el frontend
  FROM dbo.p_Checkins c
  WHERE c.idUsuario = @IdUsuario
    AND c.fecha     = @Fecha
  ORDER BY c.creadoEn DESC;

  -----------------------------------------------------------------------
  -- 2) Arrastrados (Tareas de la jornada anterior no finalizadas)
  -----------------------------------------------------------------------
  SELECT
      t.idTarea,
      t.nombre AS Titulo, -- Mapeamos 'nombre' a 'Titulo' para el Front
      t.estado,
      t.prioridad,
      t.esfuerzo,
      ISNULL(t.fechaActualizacion, t.fechaCreacion) AS fechaActualizacion,
      t.fechaObjetivo,
      t.idProyecto
  FROM dbo.p_Tareas t
  INNER JOIN dbo.p_CheckinTareas ct ON ct.idTarea = t.idTarea
  WHERE ct.idCheckin = @IdUltimoCheckin
    AND t.estado NOT IN ('Hecha','Descartada')
  ORDER BY
      CASE t.estado 
        WHEN 'EnCurso' THEN 1 
        WHEN 'Bloqueada' THEN 2 
        WHEN 'Revision' THEN 3 
        ELSE 4 END,
      CASE t.prioridad -- Orden lógico: Alta, Media, Baja
        WHEN 'Alta' THEN 1 
        WHEN 'Media' THEN 2 
        WHEN 'Baja' THEN 3 
        ELSE 4 END,
      ISNULL(t.fechaObjetivo, '9999-12-31') ASC;

  -----------------------------------------------------------------------
  -- 3) Mis bloqueos activos
  -----------------------------------------------------------------------
  SELECT
      b.idBloqueo,
      b.idTarea,
      t.nombre AS Tarea,
      b.descripcion AS Motivo,
      u.nombre AS BloqueadoPor,
      b.fechaCreacion,
      b.estado
  FROM dbo.p_Bloqueos b
  LEFT JOIN dbo.p_Usuarios u ON u.idUsuario = b.idUsuario
  LEFT JOIN dbo.p_Tareas   t ON t.idTarea   = b.idTarea
  WHERE b.idUsuario = @IdUsuario
    AND b.estado = 'Activo'
  ORDER BY b.fechaCreacion DESC;

  -----------------------------------------------------------------------
  -- 4) Selector de tareas pendientes (Backlog)
  -----------------------------------------------------------------------
  SELECT
      t.idTarea,
      t.nombre AS Titulo,
      t.estado,
      t.prioridad,
      t.esfuerzo,
      ISNULL(p.nombre, '(Personal)') AS Proyecto,
      t.fechaObjetivo,
      t.idProyecto
  FROM dbo.p_Tareas t
  INNER JOIN dbo.p_TareaAsignados ta ON ta.idTarea = t.idTarea
  LEFT  JOIN dbo.p_Proyectos p       ON p.idProyecto = t.idProyecto
  WHERE ta.idUsuario = @IdUsuario
    AND t.estado IN ('Pendiente','EnCurso','Bloqueada','Revision')
  ORDER BY
      CASE t.estado WHEN 'EnCurso' THEN 1 WHEN 'Bloqueada' THEN 2 ELSE 3 END,
      CASE t.prioridad WHEN 'Alta' THEN 1 WHEN 'Media' THEN 2 ELSE 3 END,
      ISNULL(t.fechaObjetivo, '9999-12-31') ASC;
END;

GO

ALTER PROCEDURE sp_ObtenerProyectos
    @idUsuario INT,
    @filtroNombre NVARCHAR(100) = NULL,
    @filtroEstado NVARCHAR(50) = NULL,
    @carnet NVARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- Resolver @idUsuario desde @carnet (carnet = identificador unico de negocio)
    IF (@idUsuario IS NULL OR @idUsuario = 0) AND @carnet IS NOT NULL AND LTRIM(RTRIM(@carnet)) <> ''
    BEGIN
        SELECT @idUsuario = u.idUsuario
        FROM dbo.p_Usuarios u
        WHERE u.carnet = @carnet;
    END


    -- Lógica de visibilidad simplificada (Usuario ve lo que creó O donde está asignado)
    -- Se puede extender con lógica de jerarquía si se requiere
    SELECT DISTINCT p.*
    FROM p_Proyectos p
    LEFT JOIN p_Tareas t ON p.idProyecto = t.idProyecto
    LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
    WHERE 
        (p.idCreador = @idUsuario OR ta.idUsuario = @idUsuario)
        AND (@filtroNombre IS NULL OR p.nombre LIKE '%' + @filtroNombre + '%')
        AND (@filtroEstado IS NULL OR p.estado = @filtroEstado)
    ORDER BY p.fechaCreacion DESC;
END;

GO

ALTER PROCEDURE [dbo].[sp_Tarea_Crear]
    @idProyecto INT,
    @nombre NVARCHAR(200),
    @descripcion NVARCHAR(MAX),
    @prioridad NVARCHAR(50),
    @estado NVARCHAR(50),
    @fechaInicio DATE,
    @fechaFin DATE,
    @idUsuario INT,
    @carnet NVARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- Resolver @idUsuario desde @carnet (carnet = identificador unico de negocio)
    IF (@idUsuario IS NULL OR @idUsuario = 0) AND @carnet IS NOT NULL AND LTRIM(RTRIM(@carnet)) <> ''
    BEGIN
        SELECT @idUsuario = u.idUsuario
        FROM dbo.p_Usuarios u
        WHERE u.carnet = @carnet;
    END


    DECLARE @creadorCarnet NVARCHAR(50);
    SELECT @creadorCarnet = u.carnet
    FROM dbo.p_Usuarios u
    WHERE u.idUsuario = @idUsuario;

    DECLARE @out TABLE (idTarea INT);

    INSERT INTO dbo.p_Tareas
    (
        idProyecto, nombre, descripcion, prioridad, estado,
        fechaInicio, fechaFin,
        idCreador, creadorCarnet,
        fechaCreacion
    )
    OUTPUT inserted.idTarea INTO @out
    VALUES
    (
        @idProyecto, @nombre, @descripcion, @prioridad, @estado,
        @fechaInicio, @fechaFin,
        @idUsuario, @creadorCarnet,
        GETDATE()
    );

    SELECT TOP 1 idTarea FROM @out;
END

GO

ALTER PROCEDURE [dbo].[sp_Tarea_CrearCompleta]
    @idProyecto INT,
    @idPadre INT = NULL,
    @nombre NVARCHAR(200),
    @descripcion NVARCHAR(MAX) = NULL,
    @idAsignado INT = NULL,
    @idResponsable INT = NULL,
    @prioridad NVARCHAR(50) = 'Media',
    @tipo NVARCHAR(50) = 'Administrativa',
    @estado NVARCHAR(50) = 'Pendiente',
    @fechaInicio DATE = NULL,
    @fechaFin DATE = NULL,
    @comportamiento CHAR(1) = NULL,
    @idGrupo INT = NULL,
    @numeroParte INT = NULL,
    @orden INT = NULL,
    @idUsuario INT, -- creador
    @carnetCreador NVARCHAR(50) = NULL,
    @carnetAsignado NVARCHAR(50) = NULL,
    @carnetResponsable NVARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- Resolver @idUsuario desde @carnetCreador (carnet = identificador unico de negocio)
    IF (@idUsuario IS NULL OR @idUsuario = 0) AND @carnetCreador IS NOT NULL AND LTRIM(RTRIM(@carnetCreador)) <> ''
    BEGIN
        SELECT @idUsuario = u.idUsuario
        FROM dbo.p_Usuarios u
        WHERE u.carnet = @carnetCreador;
    END

    -- Resolver @idAsignado desde @carnetAsignado (carnet = identificador unico de negocio)
    IF (@idAsignado IS NULL OR @idAsignado = 0) AND @carnetAsignado IS NOT NULL AND LTRIM(RTRIM(@carnetAsignado)) <> ''
    BEGIN
        SELECT @idAsignado = u.idUsuario
        FROM dbo.p_Usuarios u
        WHERE u.carnet = @carnetAsignado;
    END

    -- Resolver @idResponsable desde @carnetResponsable (carnet = identificador unico de negocio)
    IF (@idResponsable IS NULL OR @idResponsable = 0) AND @carnetResponsable IS NOT NULL AND LTRIM(RTRIM(@carnetResponsable)) <> ''
    BEGIN
        SELECT @idResponsable = u.idUsuario
        FROM dbo.p_Usuarios u
        WHERE u.carnet = @carnetResponsable;
    END


    DECLARE @creadorCarnet NVARCHAR(50), @asignadoCarnet NVARCHAR(50), @responsableCarnet NVARCHAR(50);

    SELECT @creadorCarnet = u.carnet FROM dbo.p_Usuarios u WHERE u.idUsuario = @idUsuario;
    SELECT @asignadoCarnet = u.carnet FROM dbo.p_Usuarios u WHERE u.idUsuario = @idAsignado;
    SELECT @responsableCarnet = u.carnet FROM dbo.p_Usuarios u WHERE u.idUsuario = @idResponsable;

    DECLARE @out TABLE (idTarea INT);

    INSERT INTO dbo.p_Tareas (
        idProyecto,
        idPadre,
        nombre,
        descripcion,
        prioridad,
        tipo,
        estado,
        fechaInicio,
        fechaFin,
        comportamiento,
        idGrupo,
        numeroParte,
        orden,
        idAsignado,
        asignadoCarnet,
        idResponsable,
        idCreador,
        creadorCarnet,
        fechaCreacion,
        fechaActualizacion
    )
    OUTPUT inserted.idTarea INTO @out
    VALUES (
        @idProyecto,
        @idPadre,
        @nombre,
        @descripcion,
        @prioridad,
        @tipo,
        @estado,
        @fechaInicio,
        @fechaFin,
        @comportamiento,
        @idGrupo,
        @numeroParte,
        @orden,
        @idAsignado,
        @asignadoCarnet,
        @idResponsable,
        @idUsuario,
        @creadorCarnet,
        GETDATE(),
        GETDATE()
    );

    DECLARE @idTarea INT;
    SELECT TOP 1 @idTarea = idTarea FROM @out;

    -- Insertar asignación (si hay asignado)
    IF @idAsignado IS NOT NULL
    BEGIN
        IF COL_LENGTH('dbo.p_TareaAsignados','carnetUsuario') IS NULL
        BEGIN
            -- compatibilidad por si aun no se aplico patch a la tabla
            INSERT INTO dbo.p_TareaAsignados (idTarea, idUsuario)
            VALUES (@idTarea, @idAsignado);
        END
        ELSE
        BEGIN
            INSERT INTO dbo.p_TareaAsignados (idTarea, idUsuario, carnetUsuario)
            VALUES (@idTarea, @idAsignado, @asignadoCarnet);
        END
    END

    SELECT @idTarea AS idTarea;
END

GO

ALTER PROCEDURE [dbo].[sp_UpsertAvanceMensual]
    @idTarea INT,
    @mes INT,
    @anio INT,
    @avancePorcentaje INT,
    @comentario NVARCHAR(MAX) = NULL,
    @idUsuario INT,
    @carnet NVARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- Resolver @idUsuario desde @carnet (carnet = identificador unico de negocio)
    IF (@idUsuario IS NULL OR @idUsuario = 0) AND @carnet IS NOT NULL AND LTRIM(RTRIM(@carnet)) <> ''
    BEGIN
        SELECT @idUsuario = u.idUsuario
        FROM dbo.p_Usuarios u
        WHERE u.carnet = @carnet;
    END


    DECLARE @carnetUsuario NVARCHAR(50);
    SELECT @carnetUsuario = u.carnet
    FROM dbo.p_Usuarios u
    WHERE u.idUsuario = @idUsuario;

    DECLARE @inicioMes DATE = DATEFROMPARTS(@anio, @mes, 1);
    DECLARE @finMes    DATE = EOMONTH(@inicioMes);

    BEGIN TRY
        BEGIN TRANSACTION;

        -- Solo 1 avance por tarea/mes/anio
        IF EXISTS (
            SELECT 1
            FROM dbo.p_TareaAvances
            WHERE idTarea = @idTarea
              AND fecha >= @inicioMes
              AND fecha <= @finMes
        )
        BEGIN
            UPDATE dbo.p_TareaAvances
               SET avancePorcentaje = @avancePorcentaje,
                   comentario = @comentario,
                   idUsuario = @idUsuario,
                   carnetUsuario = @carnetUsuario,
                   fechaCreacion = GETDATE()
             WHERE idTarea = @idTarea
               AND fecha >= @inicioMes
               AND fecha <= @finMes;
        END
        ELSE
        BEGIN
            INSERT INTO dbo.p_TareaAvances (idTarea, fecha, avancePorcentaje, comentario, idUsuario, carnetUsuario, fechaCreacion)
            VALUES (@idTarea, @inicioMes, @avancePorcentaje, @comentario, @idUsuario, @carnetUsuario, GETDATE());
        END

        COMMIT TRANSACTION;

        SELECT 1 AS ok;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END

GO

ALTER PROCEDURE [dbo].[sp_Bloqueo_Crear]
    @idUsuario INT,
    @tipo NVARCHAR(50),
    @mensaje NVARCHAR(500),
    @nombreOrigen NVARCHAR(200) = NULL,
    @idOrigenUsuario INT = NULL,
    @idDestinoUsuario INT = NULL,
    @carnetUsuario NVARCHAR(50) = NULL,
    @carnetOrigenUsuario NVARCHAR(50) = NULL,
    @carnetDestinoUsuario NVARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    -- Resolver @idUsuario desde @carnetUsuario (carnet = identificador unico de negocio)
    IF (@idUsuario IS NULL OR @idUsuario = 0) AND @carnetUsuario IS NOT NULL AND LTRIM(RTRIM(@carnetUsuario)) <> ''
    BEGIN
        SELECT @idUsuario = u.idUsuario
        FROM dbo.p_Usuarios u
        WHERE u.carnet = @carnetUsuario;
    END

    -- Resolver @idOrigenUsuario desde @carnetOrigenUsuario (carnet = identificador unico de negocio)
    IF (@idOrigenUsuario IS NULL OR @idOrigenUsuario = 0) AND @carnetOrigenUsuario IS NOT NULL AND LTRIM(RTRIM(@carnetOrigenUsuario)) <> ''
    BEGIN
        SELECT @idOrigenUsuario = u.idUsuario
        FROM dbo.p_Usuarios u
        WHERE u.carnet = @carnetOrigenUsuario;
    END

    -- Resolver @idDestinoUsuario desde @carnetDestinoUsuario (carnet = identificador unico de negocio)
    IF (@idDestinoUsuario IS NULL OR @idDestinoUsuario = 0) AND @carnetDestinoUsuario IS NOT NULL AND LTRIM(RTRIM(@carnetDestinoUsuario)) <> ''
    BEGIN
        SELECT @idDestinoUsuario = u.idUsuario
        FROM dbo.p_Usuarios u
        WHERE u.carnet = @carnetDestinoUsuario;
    END


    DECLARE @origenCarnet NVARCHAR(50);
    SELECT @origenCarnet = u.carnet
    FROM dbo.p_Usuarios u
    WHERE u.idUsuario = @idOrigenUsuario;

    DECLARE @carnetUsr NVARCHAR(50);
    SELECT @carnetUsr = u.carnet
    FROM dbo.p_Usuarios u
    WHERE u.idUsuario = @idUsuario;

    DECLARE @carnetDestino NVARCHAR(50);
    SELECT @carnetDestino = u.carnet
    FROM dbo.p_Usuarios u
    WHERE u.idUsuario = @idDestinoUsuario;

    BEGIN TRANSACTION;

    INSERT INTO dbo.p_Bloqueos
    (
        idUsuario, tipo, mensaje, resuelto,
        nombreOrigen, origenCarnet, idOrigenUsuario, idDestinoUsuario,
        carnetUsuario, carnetOrigenUsuario, carnetDestinoUsuario,
        creadoEn
    )
    VALUES
    (
        @idUsuario, @tipo, @mensaje, 0,
        @nombreOrigen, @origenCarnet, @idOrigenUsuario, @idDestinoUsuario,
        @carnetUsr, @origenCarnet, @carnetDestino,
        GETDATE()
    );

    COMMIT TRANSACTION;

    SELECT SCOPE_IDENTITY() AS idBloqueo;
END

GO

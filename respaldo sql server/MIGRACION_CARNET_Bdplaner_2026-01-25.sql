/* ========================================================================
   MIGRACIÓN / NORMALIZACIÓN: Uso de CARNET como identificador alterno de usuario
   Base: Bdplaner (según estructura exportada)
   Fecha: 2026-01-25

   OBJETIVO
   - Mantener idUsuario (INT) como PK actual (no se rompe el sistema).
   - Establecer carnet como identificador único/estable para el usuario.
   - Agregar columnas de carnet en tablas que hoy guardan idUsuario (y variantes),
     y poblarlas desde dbo.p_Usuarios.
   - Dejar preparado para migración gradual de APIs/Procedures a carnet.

   NOTAS
   - Este script es idempotente (usa COL_LENGTH / IF NOT EXISTS) para poder re-ejecutarse.
   - Las FKs por carnet se dejan como "OPCIONAL" (requiere carnet NOT NULL y UNIQUE en p_Usuarios).
======================================================================== */

-- IMPORTANTE: Cambia el nombre de la BD si aplica
-- USE [Bdplaner];
GO

SET NOCOUNT ON;
SET XACT_ABORT ON;
GO

/* ========================================================================
   1) DIAGNÓSTICO (NO CAMBIA NADA)
======================================================================== */
-- 1.1 Usuarios sin carnet o carnet vacío
SELECT idUsuario, correo, nombreCompleto, carnet
FROM dbo.p_Usuarios
WHERE carnet IS NULL OR LTRIM(RTRIM(carnet)) = '';

-- 1.2 Carnets duplicados (debe ser 0 filas)
SELECT carnet, COUNT(*) AS cantidad
FROM dbo.p_Usuarios
WHERE carnet IS NOT NULL AND LTRIM(RTRIM(carnet)) <> ''
GROUP BY carnet
HAVING COUNT(*) > 1;

-- 1.3 Filas huérfanas (tablas que referencian idUsuario pero no existe en p_Usuarios)
-- (Si devuelve filas, hay que corregir datos antes de hacer NOT NULL o FKs por carnet)

-- Ejemplo: p_TareaComentarios
SELECT TOP 200 tc.*
FROM dbo.p_TareaComentarios tc
LEFT JOIN dbo.p_Usuarios u ON u.idUsuario = tc.idUsuario
WHERE u.idUsuario IS NULL;

GO

/* ========================================================================
   2) NORMALIZAR dbo.p_Usuarios.carnet (OPCIONAL PERO RECOMENDADO)
   - Si tu data ya está limpia, puedes activar esta sección.
======================================================================== */

/*
-- 2.1 Limpieza simple (trim) - NO cambia valores nulos
UPDATE dbo.p_Usuarios
SET carnet = LTRIM(RTRIM(carnet))
WHERE carnet IS NOT NULL;

-- 2.2 BLOQUEO: si existen carnets NULL/vacíos o duplicados, se detiene
IF EXISTS (SELECT 1 FROM dbo.p_Usuarios WHERE carnet IS NULL OR LTRIM(RTRIM(carnet)) = '')
BEGIN
    PRINT 'ERROR: Existen usuarios sin carnet (NULL o vacío). Corrige antes de continuar.';
    SELECT idUsuario, correo, nombreCompleto, carnet
    FROM dbo.p_Usuarios
    WHERE carnet IS NULL OR LTRIM(RTRIM(carnet)) = '';
    RAISERROR('No se puede continuar: carnet NULL/vacío en p_Usuarios.', 16, 1);
    RETURN;
END

IF EXISTS (
    SELECT 1
    FROM dbo.p_Usuarios
    GROUP BY carnet
    HAVING COUNT(*) > 1
)
BEGIN
    PRINT 'ERROR: Existen carnets duplicados. Corrige antes de continuar.';
    SELECT carnet, COUNT(*) AS cantidad
    FROM dbo.p_Usuarios
    GROUP BY carnet
    HAVING COUNT(*) > 1;
    RAISERROR('No se puede continuar: carnet duplicado en p_Usuarios.', 16, 1);
    RETURN;
END

-- 2.3 Hacer carnet NOT NULL (solo si 2.2 pasó)
ALTER TABLE dbo.p_Usuarios ALTER COLUMN carnet NVARCHAR(50) NOT NULL;

-- 2.4 Hacer carnet UNIQUE (requerido para futuras FKs por carnet)
IF NOT EXISTS (
    SELECT 1 FROM sys.key_constraints
    WHERE [type] = 'UQ'
      AND [name] = 'UQ_p_Usuarios_carnet'
      AND parent_object_id = OBJECT_ID('dbo.p_Usuarios')
)
BEGIN
    ALTER TABLE dbo.p_Usuarios
    ADD CONSTRAINT UQ_p_Usuarios_carnet UNIQUE (carnet);
END
*/

GO

/* ========================================================================
   3) MAPA idUsuario → carnet (para poblar columnas nuevas)
======================================================================== */

IF OBJECT_ID('tempdb..#MapaUsuarioCarnet') IS NOT NULL DROP TABLE #MapaUsuarioCarnet;

SELECT
    u.idUsuario,
    LTRIM(RTRIM(u.carnet)) AS carnet
INTO #MapaUsuarioCarnet
FROM dbo.p_Usuarios u
WHERE u.carnet IS NOT NULL AND LTRIM(RTRIM(u.carnet)) <> '';

CREATE UNIQUE CLUSTERED INDEX IX__MapaUsuarioCarnet_idUsuario ON #MapaUsuarioCarnet(idUsuario);
CREATE INDEX IX__MapaUsuarioCarnet_carnet ON #MapaUsuarioCarnet(carnet);

GO

/* ========================================================================
   4) AGREGAR COLUMNAS DE CARNET EN TABLAS DEPENDIENTES + POBLAR
======================================================================== */
-- 4.1 p_Checkins: poblar usuarioCarnet desde idUsuario

UPDATE c
SET c.usuarioCarnet = m.carnet
FROM dbo.p_Checkins c
INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = c.idUsuario
WHERE (c.usuarioCarnet IS NULL OR LTRIM(RTRIM(c.usuarioCarnet)) = '');

GO

-- 4.2 p_FocoDiario: agregar carnet y poblar

IF COL_LENGTH('dbo.p_FocoDiario', 'carnet') IS NULL
    ALTER TABLE dbo.p_FocoDiario ADD carnet NVARCHAR(50) NULL;

UPDATE f
SET f.carnet = m.carnet
FROM dbo.p_FocoDiario f
INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = f.idUsuario
WHERE (f.carnet IS NULL OR LTRIM(RTRIM(f.carnet)) = '');

GO

-- 4.3 p_Notas: agregar carnet y poblar

IF COL_LENGTH('dbo.p_Notas', 'carnet') IS NULL
    ALTER TABLE dbo.p_Notas ADD carnet NVARCHAR(50) NULL;

UPDATE n
SET n.carnet = m.carnet
FROM dbo.p_Notas n
INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = n.idUsuario
WHERE (n.carnet IS NULL OR LTRIM(RTRIM(n.carnet)) = '');

GO

-- 4.4 p_PlanesTrabajo: agregar carnetUsuario + carnetAprobador y poblar

IF COL_LENGTH('dbo.p_PlanesTrabajo', 'carnetUsuario') IS NULL
    ALTER TABLE dbo.p_PlanesTrabajo ADD carnetUsuario NVARCHAR(50) NULL;

IF COL_LENGTH('dbo.p_PlanesTrabajo', 'carnetAprobador') IS NULL
    ALTER TABLE dbo.p_PlanesTrabajo ADD carnetAprobador NVARCHAR(50) NULL;

UPDATE p
SET p.carnetUsuario = m.carnet
FROM dbo.p_PlanesTrabajo p
INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = p.idUsuario
WHERE (p.carnetUsuario IS NULL OR LTRIM(RTRIM(p.carnetUsuario)) = '');

UPDATE p
SET p.carnetAprobador = m.carnet
FROM dbo.p_PlanesTrabajo p
INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = p.idAprobador
WHERE p.idAprobador IS NOT NULL
  AND (p.carnetAprobador IS NULL OR LTRIM(RTRIM(p.carnetAprobador)) = '');

GO

-- 4.5 p_ProyectoMiembros: agregar carnetUsuario y poblar

IF COL_LENGTH('dbo.p_ProyectoMiembros', 'carnetUsuario') IS NULL
    ALTER TABLE dbo.p_ProyectoMiembros ADD carnetUsuario NVARCHAR(50) NULL;

UPDATE pm
SET pm.carnetUsuario = m.carnet
FROM dbo.p_ProyectoMiembros pm
INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = pm.idUsuario
WHERE (pm.carnetUsuario IS NULL OR LTRIM(RTRIM(pm.carnetUsuario)) = '');

GO

-- 4.6 p_Proyectos: agregar creadorCarnet + responsableCarnet y poblar

IF COL_LENGTH('dbo.p_Proyectos', 'creadorCarnet') IS NULL
    ALTER TABLE dbo.p_Proyectos ADD creadorCarnet NVARCHAR(50) NULL;

IF COL_LENGTH('dbo.p_Proyectos', 'responsableCarnet') IS NULL
    ALTER TABLE dbo.p_Proyectos ADD responsableCarnet NVARCHAR(50) NULL;

UPDATE pr
SET pr.creadorCarnet = m.carnet
FROM dbo.p_Proyectos pr
INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = pr.idCreador
WHERE pr.idCreador IS NOT NULL
  AND (pr.creadorCarnet IS NULL OR LTRIM(RTRIM(pr.creadorCarnet)) = '');

UPDATE pr
SET pr.responsableCarnet = m.carnet
FROM dbo.p_Proyectos pr
INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = pr.idResponsable
WHERE pr.idResponsable IS NOT NULL
  AND (pr.responsableCarnet IS NULL OR LTRIM(RTRIM(pr.responsableCarnet)) = '');

GO

-- 4.7 p_TareaAsignados: agregar carnetUsuario y poblar

IF COL_LENGTH('dbo.p_TareaAsignados', 'carnetUsuario') IS NULL
    ALTER TABLE dbo.p_TareaAsignados ADD carnetUsuario NVARCHAR(50) NULL;

UPDATE ta
SET ta.carnetUsuario = m.carnet
FROM dbo.p_TareaAsignados ta
INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = ta.idUsuario
WHERE (ta.carnetUsuario IS NULL OR LTRIM(RTRIM(ta.carnetUsuario)) = '');

GO

-- 4.8 p_TareaComentarios: agregar carnetUsuario y poblar

IF COL_LENGTH('dbo.p_TareaComentarios', 'carnetUsuario') IS NULL
    ALTER TABLE dbo.p_TareaComentarios ADD carnetUsuario NVARCHAR(50) NULL;

UPDATE tc
SET tc.carnetUsuario = m.carnet
FROM dbo.p_TareaComentarios tc
INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = tc.idUsuario
WHERE (tc.carnetUsuario IS NULL OR LTRIM(RTRIM(tc.carnetUsuario)) = '');

GO

-- 4.9 p_TareaReacciones: agregar carnetUsuario y poblar

IF COL_LENGTH('dbo.p_TareaReacciones', 'carnetUsuario') IS NULL
    ALTER TABLE dbo.p_TareaReacciones ADD carnetUsuario NVARCHAR(50) NULL;

UPDATE tr
SET tr.carnetUsuario = m.carnet
FROM dbo.p_TareaReacciones tr
INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = tr.idUsuario
WHERE (tr.carnetUsuario IS NULL OR LTRIM(RTRIM(tr.carnetUsuario)) = '');

GO

-- 4.10 p_TareaAvances: agregar carnetUsuario y poblar

IF COL_LENGTH('dbo.p_TareaAvances', 'carnetUsuario') IS NULL
    ALTER TABLE dbo.p_TareaAvances ADD carnetUsuario NVARCHAR(50) NULL;

UPDATE av
SET av.carnetUsuario = m.carnet
FROM dbo.p_TareaAvances av
INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = av.idUsuario
WHERE (av.carnetUsuario IS NULL OR LTRIM(RTRIM(av.carnetUsuario)) = '');

GO

-- 4.11 p_TareaAvanceMensual: agregar actualizadorCarnet y poblar

IF COL_LENGTH('dbo.p_TareaAvanceMensual', 'actualizadorCarnet') IS NULL
    ALTER TABLE dbo.p_TareaAvanceMensual ADD actualizadorCarnet NVARCHAR(50) NULL;

UPDATE am
SET am.actualizadorCarnet = m.carnet
FROM dbo.p_TareaAvanceMensual am
INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = am.idActualizador
WHERE am.idActualizador IS NOT NULL
  AND (am.actualizadorCarnet IS NULL OR LTRIM(RTRIM(am.actualizadorCarnet)) = '');

GO

-- 4.12 p_TareaInstancia: agregar ejecutorCarnet y poblar

IF COL_LENGTH('dbo.p_TareaInstancia', 'ejecutorCarnet') IS NULL
    ALTER TABLE dbo.p_TareaInstancia ADD ejecutorCarnet NVARCHAR(50) NULL;

UPDATE ti
SET ti.ejecutorCarnet = m.carnet
FROM dbo.p_TareaInstancia ti
INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = ti.idUsuarioEjecutor
WHERE ti.idUsuarioEjecutor IS NOT NULL
  AND (ti.ejecutorCarnet IS NULL OR LTRIM(RTRIM(ti.ejecutorCarnet)) = '');

GO

-- 4.13 p_TareaRecurrencia: agregar creadorCarnet y poblar

IF COL_LENGTH('dbo.p_TareaRecurrencia', 'creadorCarnet') IS NULL
    ALTER TABLE dbo.p_TareaRecurrencia ADD creadorCarnet NVARCHAR(50) NULL;

UPDATE tr
SET tr.creadorCarnet = m.carnet
FROM dbo.p_TareaRecurrencia tr
INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = tr.idUsuarioCreador
WHERE tr.idUsuarioCreador IS NOT NULL
  AND (tr.creadorCarnet IS NULL OR LTRIM(RTRIM(tr.creadorCarnet)) = '');

GO

-- 4.14 p_Tareas: poblar creadorCarnet y agregar asignadoCarnet

-- creadorCarnet ya existe en la estructura; solo se rellena
UPDATE t
SET t.creadorCarnet = m.carnet
FROM dbo.p_Tareas t
INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = t.idCreador
WHERE t.idCreador IS NOT NULL
  AND (t.creadorCarnet IS NULL OR LTRIM(RTRIM(t.creadorCarnet)) = '');

IF COL_LENGTH('dbo.p_Tareas', 'asignadoCarnet') IS NULL
    ALTER TABLE dbo.p_Tareas ADD asignadoCarnet NVARCHAR(50) NULL;

UPDATE t
SET t.asignadoCarnet = m.carnet
FROM dbo.p_Tareas t
INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = t.idAsignado
WHERE t.idAsignado IS NOT NULL
  AND (t.asignadoCarnet IS NULL OR LTRIM(RTRIM(t.asignadoCarnet)) = '');

GO

-- 4.15 p_TareaAsignacionLog: agregar carnetUsuarioAnterior + carnetUsuarioNuevo + carnetEjecutor

IF COL_LENGTH('dbo.p_TareaAsignacionLog', 'carnetUsuarioAnterior') IS NULL
    ALTER TABLE dbo.p_TareaAsignacionLog ADD carnetUsuarioAnterior NVARCHAR(50) NULL;

IF COL_LENGTH('dbo.p_TareaAsignacionLog', 'carnetUsuarioNuevo') IS NULL
    ALTER TABLE dbo.p_TareaAsignacionLog ADD carnetUsuarioNuevo NVARCHAR(50) NULL;

IF COL_LENGTH('dbo.p_TareaAsignacionLog', 'carnetEjecutor') IS NULL
    ALTER TABLE dbo.p_TareaAsignacionLog ADD carnetEjecutor NVARCHAR(50) NULL;

UPDATE l
SET l.carnetUsuarioAnterior = m.carnet
FROM dbo.p_TareaAsignacionLog l
INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = l.idUsuarioAnterior
WHERE l.idUsuarioAnterior IS NOT NULL
  AND (l.carnetUsuarioAnterior IS NULL OR LTRIM(RTRIM(l.carnetUsuarioAnterior)) = '');

UPDATE l
SET l.carnetUsuarioNuevo = m.carnet
FROM dbo.p_TareaAsignacionLog l
INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = l.idUsuarioNuevo
WHERE l.idUsuarioNuevo IS NOT NULL
  AND (l.carnetUsuarioNuevo IS NULL OR LTRIM(RTRIM(l.carnetUsuarioNuevo)) = '');

UPDATE l
SET l.carnetEjecutor = m.carnet
FROM dbo.p_TareaAsignacionLog l
INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = l.idEjecutor
WHERE l.idEjecutor IS NOT NULL
  AND (l.carnetEjecutor IS NULL OR LTRIM(RTRIM(l.carnetEjecutor)) = '');

GO

-- 4.16 p_UsuariosConfig: agregar carnet y poblar

IF COL_LENGTH('dbo.p_UsuariosConfig', 'carnet') IS NULL
    ALTER TABLE dbo.p_UsuariosConfig ADD carnet NVARCHAR(50) NULL;

UPDATE uc
SET uc.carnet = m.carnet
FROM dbo.p_UsuariosConfig uc
INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = uc.idUsuario
WHERE (uc.carnet IS NULL OR LTRIM(RTRIM(uc.carnet)) = '');

GO

-- 4.17 p_UsuariosOrganizacion: agregar carnet y poblar

IF COL_LENGTH('dbo.p_UsuariosOrganizacion', 'carnet') IS NULL
    ALTER TABLE dbo.p_UsuariosOrganizacion ADD carnet NVARCHAR(50) NULL;

UPDATE uo
SET uo.carnet = m.carnet
FROM dbo.p_UsuariosOrganizacion uo
INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = uo.idUsuario
WHERE (uo.carnet IS NULL OR LTRIM(RTRIM(uo.carnet)) = '');

GO

-- 4.18 p_UsuarioCredenciales y p_UsuariosCredenciales: agregar carnet y poblar (ambas tablas existen)

IF COL_LENGTH('dbo.p_UsuarioCredenciales', 'carnet') IS NULL
    ALTER TABLE dbo.p_UsuarioCredenciales ADD carnet NVARCHAR(50) NULL;

UPDATE c
SET c.carnet = m.carnet
FROM dbo.p_UsuarioCredenciales c
INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = c.idUsuario
WHERE (c.carnet IS NULL OR LTRIM(RTRIM(c.carnet)) = '');

IF OBJECT_ID('dbo.p_UsuariosCredenciales') IS NOT NULL
BEGIN
    IF COL_LENGTH('dbo.p_UsuariosCredenciales', 'carnet') IS NULL
        ALTER TABLE dbo.p_UsuariosCredenciales ADD carnet NVARCHAR(50) NULL;

    UPDATE c2
    SET c2.carnet = m.carnet
    FROM dbo.p_UsuariosCredenciales c2
    INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = c2.idUsuario
    WHERE (c2.carnet IS NULL OR LTRIM(RTRIM(c2.carnet)) = '');
END

GO

-- 4.19 p_SolicitudCambios: poblar carnetSolicitante y agregar carnetResponsable

-- carnetSolicitante ya existe; solo se rellena
UPDATE sc
SET sc.carnetSolicitante = m.carnet
FROM dbo.p_SolicitudCambios sc
INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = sc.idSolicitante
WHERE sc.idSolicitante IS NOT NULL
  AND (sc.carnetSolicitante IS NULL OR LTRIM(RTRIM(sc.carnetSolicitante)) = '');

IF COL_LENGTH('dbo.p_SolicitudCambios', 'carnetResponsable') IS NULL
    ALTER TABLE dbo.p_SolicitudCambios ADD carnetResponsable NVARCHAR(50) NULL;

UPDATE sc
SET sc.carnetResponsable = m.carnet
FROM dbo.p_SolicitudCambios sc
INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = sc.idResponsable
WHERE sc.idResponsable IS NOT NULL
  AND (sc.carnetResponsable IS NULL OR LTRIM(RTRIM(sc.carnetResponsable)) = '');

GO

-- 4.20 p_Bloqueos: completar carnets (usuario/resuelto/origen/destino)

IF COL_LENGTH('dbo.p_Bloqueos', 'carnetUsuario') IS NULL
    ALTER TABLE dbo.p_Bloqueos ADD carnetUsuario NVARCHAR(50) NULL;

IF COL_LENGTH('dbo.p_Bloqueos', 'resueltoPorCarnet') IS NULL
    ALTER TABLE dbo.p_Bloqueos ADD resueltoPorCarnet NVARCHAR(50) NULL;

IF COL_LENGTH('dbo.p_Bloqueos', 'destinoCarnet') IS NULL
    ALTER TABLE dbo.p_Bloqueos ADD destinoCarnet NVARCHAR(50) NULL;

-- usuario principal
UPDATE b
SET b.carnetUsuario = m.carnet
FROM dbo.p_Bloqueos b
INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = b.idUsuario
WHERE (b.carnetUsuario IS NULL OR LTRIM(RTRIM(b.carnetUsuario)) = '');

-- resuelto por
UPDATE b
SET b.resueltoPorCarnet = m.carnet
FROM dbo.p_Bloqueos b
INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = b.idResueltoPor
WHERE b.idResueltoPor IS NOT NULL
  AND (b.resueltoPorCarnet IS NULL OR LTRIM(RTRIM(b.resueltoPorCarnet)) = '');

-- origenCarnet existe en la tabla: se rellena por idOrigenUsuario, o idUsuario si idOrigenUsuario viene NULL
UPDATE b
SET b.origenCarnet = m.carnet
FROM dbo.p_Bloqueos b
INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = ISNULL(b.idOrigenUsuario, b.idUsuario)
WHERE (b.origenCarnet IS NULL OR LTRIM(RTRIM(b.origenCarnet)) = '');

-- destinoCarnet
UPDATE b
SET b.destinoCarnet = m.carnet
FROM dbo.p_Bloqueos b
INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = b.idDestinoUsuario
WHERE b.idDestinoUsuario IS NOT NULL
  AND (b.destinoCarnet IS NULL OR LTRIM(RTRIM(b.destinoCarnet)) = '');

GO


-- 4.21 TABLAS DE LOGS (Audit/Logs): agregar carnet y poblar
IF OBJECT_ID('dbo.p_AuditLog') IS NOT NULL
BEGIN
    IF COL_LENGTH('dbo.p_AuditLog', 'carnet') IS NULL
        ALTER TABLE dbo.p_AuditLog ADD carnet NVARCHAR(50) NULL;

    UPDATE al
    SET al.carnet = m.carnet
    FROM dbo.p_AuditLog al
    INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = al.idUsuario
    WHERE (al.carnet IS NULL OR LTRIM(RTRIM(al.carnet)) = '');
END

IF OBJECT_ID('dbo.p_Auditoria') IS NOT NULL
BEGIN
    IF COL_LENGTH('dbo.p_Auditoria', 'carnet') IS NULL
        ALTER TABLE dbo.p_Auditoria ADD carnet NVARCHAR(50) NULL;

    UPDATE au
    SET au.carnet = m.carnet
    FROM dbo.p_Auditoria au
    INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = au.idUsuario
    WHERE (au.carnet IS NULL OR LTRIM(RTRIM(au.carnet)) = '');
END

IF OBJECT_ID('dbo.p_Logs') IS NOT NULL
BEGIN
    IF COL_LENGTH('dbo.p_Logs', 'carnet') IS NULL
        ALTER TABLE dbo.p_Logs ADD carnet NVARCHAR(50) NULL;

    UPDATE lg
    SET lg.carnet = m.carnet
    FROM dbo.p_Logs lg
    INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = lg.idUsuario
    WHERE (lg.carnet IS NULL OR LTRIM(RTRIM(lg.carnet)) = '');
END

IF OBJECT_ID('dbo.p_LogSistema') IS NOT NULL
BEGIN
    IF COL_LENGTH('dbo.p_LogSistema', 'carnet') IS NULL
        ALTER TABLE dbo.p_LogSistema ADD carnet NVARCHAR(50) NULL;

    UPDATE ls
    SET ls.carnet = m.carnet
    FROM dbo.p_LogSistema ls
    INNER JOIN #MapaUsuarioCarnet m ON m.idUsuario = ls.idUsuario
    WHERE (ls.carnet IS NULL OR LTRIM(RTRIM(ls.carnet)) = '');
END
GO

/* ========================================================================
   5) ÍNDICES (recomendados para performance en joins por carnet)
======================================================================== */

-- Helper: crea índice solo si no existe
-- Nota: No hay CREATE INDEX IF NOT EXISTS en SQL Server; se valida en sys.indexes

-- p_Usuarios(carnet) (si aún no tienes UQ/índice)
IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_Usuarios_carnet' AND object_id = OBJECT_ID('dbo.p_Usuarios'))
BEGIN
    CREATE INDEX IX_p_Usuarios_carnet ON dbo.p_Usuarios(carnet);
END


-- Logs / auditoría
IF OBJECT_ID('dbo.p_AuditLog') IS NOT NULL
AND COL_LENGTH('dbo.p_AuditLog','carnet') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_AuditLog_carnet' AND object_id = OBJECT_ID('dbo.p_AuditLog'))
BEGIN
    CREATE INDEX IX_p_AuditLog_carnet ON dbo.p_AuditLog(carnet);
END

IF OBJECT_ID('dbo.p_Auditoria') IS NOT NULL
AND COL_LENGTH('dbo.p_Auditoria','carnet') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_Auditoria_carnet' AND object_id = OBJECT_ID('dbo.p_Auditoria'))
BEGIN
    CREATE INDEX IX_p_Auditoria_carnet ON dbo.p_Auditoria(carnet);
END

IF OBJECT_ID('dbo.p_Logs') IS NOT NULL
AND COL_LENGTH('dbo.p_Logs','carnet') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_Logs_carnet' AND object_id = OBJECT_ID('dbo.p_Logs'))
BEGIN
    CREATE INDEX IX_p_Logs_carnet ON dbo.p_Logs(carnet);
END

IF OBJECT_ID('dbo.p_LogSistema') IS NOT NULL
AND COL_LENGTH('dbo.p_LogSistema','carnet') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_LogSistema_carnet' AND object_id = OBJECT_ID('dbo.p_LogSistema'))
BEGIN
    CREATE INDEX IX_p_LogSistema_carnet ON dbo.p_LogSistema(carnet);
END

-- p_Tareas
IF COL_LENGTH('dbo.p_Tareas', 'asignadoCarnet') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_Tareas_asignadoCarnet' AND object_id = OBJECT_ID('dbo.p_Tareas'))
BEGIN
    CREATE INDEX IX_p_Tareas_asignadoCarnet ON dbo.p_Tareas(asignadoCarnet);
END
IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_Tareas_creadorCarnet' AND object_id = OBJECT_ID('dbo.p_Tareas'))
BEGIN
    CREATE INDEX IX_p_Tareas_creadorCarnet ON dbo.p_Tareas(creadorCarnet);
END

-- p_TareaAsignados
IF COL_LENGTH('dbo.p_TareaAsignados', 'carnetUsuario') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_TareaAsignados_carnetUsuario' AND object_id = OBJECT_ID('dbo.p_TareaAsignados'))
BEGIN
    CREATE INDEX IX_p_TareaAsignados_carnetUsuario ON dbo.p_TareaAsignados(carnetUsuario);
END

-- p_TareaComentarios
IF COL_LENGTH('dbo.p_TareaComentarios', 'carnetUsuario') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_TareaComentarios_carnetUsuario' AND object_id = OBJECT_ID('dbo.p_TareaComentarios'))
BEGIN
    CREATE INDEX IX_p_TareaComentarios_carnetUsuario ON dbo.p_TareaComentarios(carnetUsuario);
END

-- p_ProyectoMiembros
IF COL_LENGTH('dbo.p_ProyectoMiembros', 'carnetUsuario') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_ProyectoMiembros_carnetUsuario' AND object_id = OBJECT_ID('dbo.p_ProyectoMiembros'))
BEGIN
    CREATE INDEX IX_p_ProyectoMiembros_carnetUsuario ON dbo.p_ProyectoMiembros(carnetUsuario);
END

-- p_PlanesTrabajo
IF COL_LENGTH('dbo.p_PlanesTrabajo', 'carnetUsuario') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_PlanesTrabajo_carnetUsuario' AND object_id = OBJECT_ID('dbo.p_PlanesTrabajo'))
BEGIN
    CREATE INDEX IX_p_PlanesTrabajo_carnetUsuario ON dbo.p_PlanesTrabajo(carnetUsuario);
END
IF COL_LENGTH('dbo.p_PlanesTrabajo', 'carnetAprobador') IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_p_PlanesTrabajo_carnetAprobador' AND object_id = OBJECT_ID('dbo.p_PlanesTrabajo'))
BEGIN
    CREATE INDEX IX_p_PlanesTrabajo_carnetAprobador ON dbo.p_PlanesTrabajo(carnetAprobador);
END

GO

/* ========================================================================
   6) FKs POR CARNET (OPCIONAL)
   Requiere: dbo.p_Usuarios.carnet = NOT NULL y UNIQUE (sección 2).
   Si aún estás en transición, deja esto comentado.
======================================================================== */

/*
-- Ejemplo: p_TareaComentarios(carnetUsuario) -> p_Usuarios(carnet)
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys
    WHERE name = 'FK_p_TareaComentarios_p_Usuarios_carnetUsuario'
)
BEGIN
    ALTER TABLE dbo.p_TareaComentarios WITH CHECK
    ADD CONSTRAINT FK_p_TareaComentarios_p_Usuarios_carnetUsuario
    FOREIGN KEY (carnetUsuario) REFERENCES dbo.p_Usuarios(carnet);
END
*/

GO

/* ========================================================================
   7) HALLAZGOS IMPORTANTES EN LA ESTRUCTURA (REVISIÓN MANUAL)
======================================================================== */

/*
A) TABLAS DUPLICADAS / LEGACY
- dbo.p_Usuarios_OLD  (sin PK, parece respaldo histórico) -> candidato a archivar o eliminar.
- dbo.p_organizacion_nodos vs dbo.p_OrganizacionNodos
  * p_UsuariosOrganizacion referencia p_OrganizacionNodos, por lo que p_organizacion_nodos parece legacy.
- dbo.p_UsuarioCredenciales vs dbo.p_UsuariosCredenciales
  * Ambas existen. Revisa cuál usa el backend actual.
  * Sugerencia: quedarte con UNA sola tabla de credenciales y eliminar la otra cuando confirmes.

B) REGLA DE ORO PARA MIGRACIÓN GRADUAL
- Mantén idUsuario como FK/PK interno.
- Agrega carnet como clave alterna para integraciones/reportes y para migrar endpoints poco a poco.
- En la capa API: cuando recibas carnet, resuelve idUsuario desde p_Usuarios y opera como hoy.

C) SUGERENCIA (no aplicada aquí):
- Crear vista de resolución rápida:
  CREATE VIEW dbo.vw_Usuarios AS
  SELECT idUsuario, carnet, correo, nombreCompleto FROM dbo.p_Usuarios;
*/

GO

/* ========================================================================
   8) VALIDACIONES POST-MIGRACIÓN
======================================================================== */

-- 8.1 ¿Quedaron carnets NULL sin poblar? (debería ser 0 o solo casos realmente huérfanos)
SELECT 'p_TareaComentarios' AS tabla, COUNT(*) AS pendientes
FROM dbo.p_TareaComentarios
WHERE carnetUsuario IS NULL OR LTRIM(RTRIM(carnetUsuario)) = ''
UNION ALL
SELECT 'p_TareaAsignados', COUNT(*) FROM dbo.p_TareaAsignados WHERE carnetUsuario IS NULL OR LTRIM(RTRIM(carnetUsuario)) = ''
UNION ALL
SELECT 'p_ProyectoMiembros', COUNT(*) FROM dbo.p_ProyectoMiembros WHERE carnetUsuario IS NULL OR LTRIM(RTRIM(carnetUsuario)) = ''
UNION ALL
SELECT 'p_PlanesTrabajo', COUNT(*) FROM dbo.p_PlanesTrabajo WHERE carnetUsuario IS NULL OR LTRIM(RTRIM(carnetUsuario)) = ''
UNION ALL
SELECT 'p_AuditLog', COUNT(*) FROM dbo.p_AuditLog WHERE carnet IS NULL OR LTRIM(RTRIM(carnet)) = ''
UNION ALL
SELECT 'p_Auditoria', COUNT(*) FROM dbo.p_Auditoria WHERE carnet IS NULL OR LTRIM(RTRIM(carnet)) = ''
UNION ALL
SELECT 'p_Logs', COUNT(*) FROM dbo.p_Logs WHERE carnet IS NULL OR LTRIM(RTRIM(carnet)) = ''
UNION ALL
SELECT 'p_LogSistema', COUNT(*) FROM dbo.p_LogSistema WHERE carnet IS NULL OR LTRIM(RTRIM(carnet)) = '';

-- 8.2 Muestreo: comparar idUsuario vs carnetUsuario resuelto
SELECT TOP 50 tc.idTareaComentario, tc.idUsuario, tc.carnetUsuario, u.carnet AS carnetReal
FROM dbo.p_TareaComentarios tc
LEFT JOIN dbo.p_Usuarios u ON u.idUsuario = tc.idUsuario
ORDER BY tc.fechaCreacion DESC;

GO

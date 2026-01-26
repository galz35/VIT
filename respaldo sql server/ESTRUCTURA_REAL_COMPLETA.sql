-- ESTRUCTURA COMPLETA DE LA BASE DE DATOS: Bdplaner
-- Fecha: 2026-01-25T20:05:45.329Z

USE [Bdplaner];
GO

-- ******************************************************
-- TABLA: [dbo].[p_AuditLog]
-- ******************************************************
CREATE TABLE [dbo].[p_AuditLog] (
    [id] int IDENTITY(1,1) NOT NULL,
    [idUsuario] int NULL,
    [accion] nvarchar(100) NOT NULL,
    [entidad] nvarchar(100) NULL,
    [entidadId] nvarchar(50) NULL,
    [datosAnteriores] nvarchar(max) NULL,
    [datosNuevos] nvarchar(max) NULL,
    [fecha] datetime NULL DEFAULT (getdate()),
    CONSTRAINT [PK__p_AuditL__3213E83F0D0706DF] PRIMARY KEY ([id])
);
GO


-- ******************************************************
-- TABLA: [dbo].[p_Auditoria]
-- ******************************************************
CREATE TABLE [dbo].[p_Auditoria] (
    [id] int IDENTITY(1,1) NOT NULL,
    [idUsuario] int NULL,
    [accion] nvarchar(100) NOT NULL,
    [entidad] nvarchar(100) NULL,
    [entidadId] nvarchar(50) NULL,
    [datosAnteriores] nvarchar(max) NULL,
    [datosNuevos] nvarchar(max) NULL,
    [fecha] datetime NULL DEFAULT (getdate()),
    CONSTRAINT [PK__p_Audito__3213E83FF2F10FCA] PRIMARY KEY ([id])
);
GO


-- ******************************************************
-- TABLA: [dbo].[p_Bloqueos]
-- ******************************************************
CREATE TABLE [dbo].[p_Bloqueos] (
    [idBloqueo] int IDENTITY(1,1) NOT NULL,
    [idUsuario] int NOT NULL,
    [descripcion] nvarchar(max) NOT NULL,
    [fechaCreacion] datetime NULL DEFAULT (getdate()),
    [fechaResolucion] datetime NULL,
    [estado] nvarchar(50) NULL DEFAULT ('Activo'),
    [resolucion] nvarchar(max) NULL,
    [idResueltoPor] int NULL,
    [prioridad] nvarchar(20) NULL DEFAULT ('Media'),
    [categoria] nvarchar(50) NULL,
    [idTarea] int NULL,
    [creadoEn] datetime NULL DEFAULT (getdate()),
    [idOrigenUsuario] int NULL,
    [idDestinoUsuario] int NULL,
    [destinoTexto] nvarchar(200) NULL,
    [motivo] nvarchar(1000) NULL,
    [accionMitigacion] nvarchar(1000) NULL,
    [origenCarnet] nvarchar(50) NULL,
    CONSTRAINT [PK__p_Bloque__AF4E22516BA517D9] PRIMARY KEY ([idBloqueo])
);
GO
ALTER TABLE [dbo].[p_Bloqueos] ADD CONSTRAINT [FK__p_Bloqueo__idUsu__6CD8F421] FOREIGN KEY ([idUsuario]) REFERENCES [dbo].[p_Usuarios] ([idUsuario]);
GO
ALTER TABLE [dbo].[p_Bloqueos] ADD CONSTRAINT [FK__p_Bloqueo__idRes__6DCD185A] FOREIGN KEY ([idResueltoPor]) REFERENCES [dbo].[p_Usuarios] ([idUsuario]);
GO


-- ******************************************************
-- TABLA: [dbo].[p_Checkins]
-- ******************************************************
CREATE TABLE [dbo].[p_Checkins] (
    [idCheckin] int IDENTITY(1,1) NOT NULL,
    [idUsuario] int NOT NULL,
    [fecha] date NOT NULL,
    [prioridad1] nvarchar(500) NULL,
    [prioridad2] nvarchar(500) NULL,
    [prioridad3] nvarchar(500) NULL,
    [estado] nvarchar(50) NULL DEFAULT ('pendiente'),
    [energia] int NULL DEFAULT ((3)),
    [creadoEn] datetime NULL DEFAULT (getdate()),
    [comentarios] nvarchar(max) NULL,
    [entregableTexto] nvarchar(max) NULL,
    [nota] nvarchar(max) NULL,
    [linkEvidencia] nvarchar(max) NULL,
    [estadoAnimo] nvarchar(50) NULL,
    [idNodo] int NULL,
    [fechaCreacion] datetime NULL DEFAULT (getdate()),
    [usuarioCarnet] nvarchar(50) NULL,
    CONSTRAINT [PK__p_Checki__91D15F12BEF1CD39] PRIMARY KEY ([idCheckin])
);
GO
ALTER TABLE [dbo].[p_Checkins] ADD CONSTRAINT [FK__p_Checkin__idUsu__67201ACB] FOREIGN KEY ([idUsuario]) REFERENCES [dbo].[p_Usuarios] ([idUsuario]);
GO


-- ******************************************************
-- TABLA: [dbo].[p_CheckinTareas]
-- ******************************************************
CREATE TABLE [dbo].[p_CheckinTareas] (
    [id] int IDENTITY(1,1) NOT NULL,
    [idCheckin] int NOT NULL,
    [idTarea] int NULL,
    [descripcion] nvarchar(500) NULL,
    [completado] bit NULL DEFAULT ((0)),
    [orden] int NULL DEFAULT ((0)),
    [tipo] nvarchar(50) NULL,
    CONSTRAINT [PK__p_Checki__3213E83FC0973B57] PRIMARY KEY ([id])
);
GO
ALTER TABLE [dbo].[p_CheckinTareas] ADD CONSTRAINT [FK__p_Checkin__idTar__6BAFC5BE] FOREIGN KEY ([idTarea]) REFERENCES [dbo].[p_Tareas] ([idTarea]);
GO
ALTER TABLE [dbo].[p_CheckinTareas] ADD CONSTRAINT [FK__p_Checkin__idChe__6ABBA185] FOREIGN KEY ([idCheckin]) REFERENCES [dbo].[p_Checkins] ([idCheckin]);
GO


-- ******************************************************
-- TABLA: [dbo].[p_delegacion_visibilidad]
-- ******************************************************
CREATE TABLE [dbo].[p_delegacion_visibilidad] (
    [id] bigint IDENTITY(1,1) NOT NULL,
    [carnet_delegante] nvarchar(100) NOT NULL,
    [carnet_delegado] nvarchar(100) NOT NULL,
    [activo] bit NULL DEFAULT ((1)),
    [fecha_inicio] date NULL,
    [fecha_fin] date NULL,
    [motivo] nvarchar(300) NULL,
    [creado_en] datetime NULL DEFAULT (getdate()),
    CONSTRAINT [PK__p_delega__3213E83F306A8791] PRIMARY KEY ([id])
);
GO


-- ******************************************************
-- TABLA: [dbo].[p_FocoDiario]
-- ******************************************************
CREATE TABLE [dbo].[p_FocoDiario] (
    [id] int IDENTITY(1,1) NOT NULL,
    [idUsuario] int NOT NULL,
    [fecha] date NOT NULL,
    [foco] nvarchar(500) NOT NULL,
    [completado] bit NULL DEFAULT ((0)),
    [creadoEn] datetime NULL DEFAULT (getdate()),
    CONSTRAINT [PK__p_FocoDi__3213E83F0D2423B3] PRIMARY KEY ([id])
);
GO
ALTER TABLE [dbo].[p_FocoDiario] ADD CONSTRAINT [FK__p_FocoDia__idUsu__70747ADB] FOREIGN KEY ([idUsuario]) REFERENCES [dbo].[p_Usuarios] ([idUsuario]);
GO


-- ******************************************************
-- TABLA: [dbo].[p_Logs]
-- ******************************************************
CREATE TABLE [dbo].[p_Logs] (
    [id] int IDENTITY(1,1) NOT NULL,
    [idUsuario] int NULL,
    [accion] nvarchar(100) NOT NULL,
    [entidad] nvarchar(100) NULL,
    [entidadId] nvarchar(50) NULL,
    [datos] nvarchar(max) NULL,
    [ip] nvarchar(50) NULL,
    [fecha] datetime NULL DEFAULT (getdate()),
    CONSTRAINT [PK__p_Logs__3213E83F955A1596] PRIMARY KEY ([id])
);
GO


-- ******************************************************
-- TABLA: [dbo].[p_LogSistema]
-- ******************************************************
CREATE TABLE [dbo].[p_LogSistema] (
    [id] int IDENTITY(1,1) NOT NULL,
    [idUsuario] int NULL,
    [accion] nvarchar(100) NOT NULL,
    [entidad] nvarchar(100) NULL,
    [entidadId] nvarchar(50) NULL,
    [datos] nvarchar(max) NULL,
    [ip] nvarchar(50) NULL,
    [fecha] datetime NULL DEFAULT (getdate()),
    CONSTRAINT [PK__p_LogSis__3213E83F8947B106] PRIMARY KEY ([id])
);
GO


-- ******************************************************
-- TABLA: [dbo].[p_Notas]
-- ******************************************************
CREATE TABLE [dbo].[p_Notas] (
    [idNota] int IDENTITY(1,1) NOT NULL,
    [idUsuario] int NOT NULL,
    [titulo] nvarchar(300) NULL,
    [contenido] nvarchar(max) NULL,
    [fechaCreacion] datetime NULL DEFAULT (getdate()),
    [fechaModificacion] datetime NULL,
    [tipo] nvarchar(50) NULL DEFAULT ('nota'),
    [fechaActualizacion] datetime NULL,
    [etiquetas] nvarchar(500) NULL,
    [procesado] bit NULL DEFAULT ((0)),
    CONSTRAINT [PK__p_Notas__AD5F462E6C80C802] PRIMARY KEY ([idNota])
);
GO
ALTER TABLE [dbo].[p_Notas] ADD CONSTRAINT [FK__p_Notas__idUsuar__7291CD77] FOREIGN KEY ([idUsuario]) REFERENCES [dbo].[p_Usuarios] ([idUsuario]);
GO


-- ******************************************************
-- TABLA: [dbo].[p_organizacion_nodos]
-- ******************************************************
CREATE TABLE [dbo].[p_organizacion_nodos] (
    [idorg] bigint NOT NULL,
    [padre] bigint NULL,
    [descripcion] nvarchar(100) NULL,
    [tipo] nvarchar(50) NULL,
    [estado] nvarchar(50) NULL,
    [nivel] nvarchar(200) NULL,
    [updated_at] datetime NULL DEFAULT (getdate()),
    CONSTRAINT [PK__p_organi__04F659101A69F2E7] PRIMARY KEY ([idorg])
);
GO


-- ******************************************************
-- TABLA: [dbo].[p_OrganizacionNodos]
-- ******************************************************
CREATE TABLE [dbo].[p_OrganizacionNodos] (
    [id] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(200) NOT NULL,
    [tipo] nvarchar(50) NULL,
    [idPadre] int NULL,
    [orden] int NULL DEFAULT ((0)),
    [activo] bit NULL DEFAULT ((1)),
    CONSTRAINT [PK__p_Organi__3213E83F2ABCD4F7] PRIMARY KEY ([id])
);
GO
ALTER TABLE [dbo].[p_OrganizacionNodos] ADD CONSTRAINT [FK__p_Organiz__idPad__458A1CD6] FOREIGN KEY ([idPadre]) REFERENCES [dbo].[p_OrganizacionNodos] ([id]);
GO


-- ******************************************************
-- TABLA: [dbo].[p_permiso_area]
-- ******************************************************
CREATE TABLE [dbo].[p_permiso_area] (
    [id] bigint IDENTITY(1,1) NOT NULL,
    [carnet_otorga] nvarchar(100) NULL,
    [carnet_recibe] nvarchar(100) NOT NULL,
    [idorg_raiz] bigint NULL,
    [alcance] nvarchar(20) NULL DEFAULT ('SUBARBOL'),
    [activo] bit NULL DEFAULT ((1)),
    [fecha_inicio] date NULL,
    [fecha_fin] date NULL,
    [motivo] nvarchar(300) NULL,
    [creado_en] datetime NULL DEFAULT (getdate()),
    [nombre_area] nvarchar(255) NULL,
    [tipo_nivel] nvarchar(50) NULL DEFAULT ('GERENCIA'),
    CONSTRAINT [PK__p_permis__3213E83FE5608946] PRIMARY KEY ([id])
);
GO


-- ******************************************************
-- TABLA: [dbo].[p_permiso_empleado]
-- ******************************************************
CREATE TABLE [dbo].[p_permiso_empleado] (
    [id] bigint IDENTITY(1,1) NOT NULL,
    [carnet_otorga] nvarchar(100) NULL,
    [carnet_recibe] nvarchar(100) NOT NULL,
    [carnet_objetivo] nvarchar(100) NOT NULL,
    [activo] bit NULL DEFAULT ((1)),
    [fecha_inicio] date NULL,
    [fecha_fin] date NULL,
    [motivo] nvarchar(300) NULL,
    [creado_en] datetime NULL DEFAULT (getdate()),
    [tipo_acceso] nvarchar(20) NULL DEFAULT ('ALLOW'),
    CONSTRAINT [PK__p_permis__3213E83FF8B18ACC] PRIMARY KEY ([id])
);
GO


-- ******************************************************
-- TABLA: [dbo].[p_PlanesTrabajo]
-- ******************************************************
CREATE TABLE [dbo].[p_PlanesTrabajo] (
    [id] int IDENTITY(1,1) NOT NULL,
    [idUsuario] int NOT NULL,
    [mes] int NOT NULL,
    [anio] int NOT NULL,
    [estado] nvarchar(50) NULL DEFAULT ('Borrador'),
    [fechaCreacion] datetime NULL DEFAULT (getdate()),
    [fechaAprobacion] datetime NULL,
    [idAprobador] int NULL,
    [observaciones] nvarchar(max) NULL,
    [fechaActualizacion] datetime NULL,
    [comentarios] nvarchar(max) NULL,
    CONSTRAINT [PK__p_Planes__3213E83F2970402F] PRIMARY KEY ([id])
);
GO
ALTER TABLE [dbo].[p_PlanesTrabajo] ADD CONSTRAINT [FK__p_PlanesT__idUsu__5E55CAA0] FOREIGN KEY ([idUsuario]) REFERENCES [dbo].[p_Usuarios] ([idUsuario]);
GO
ALTER TABLE [dbo].[p_PlanesTrabajo] ADD CONSTRAINT [FK__p_PlanesT__idApr__5F49EED9] FOREIGN KEY ([idAprobador]) REFERENCES [dbo].[p_Usuarios] ([idUsuario]);
GO


-- ******************************************************
-- TABLA: [dbo].[p_Proyectos]
-- ******************************************************
CREATE TABLE [dbo].[p_Proyectos] (
    [idProyecto] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(300) NOT NULL,
    [descripcion] nvarchar(max) NULL,
    [idNodoDuenio] int NULL,
    [fechaCreacion] datetime NULL DEFAULT (getdate()),
    [pais] nvarchar(10) NULL DEFAULT ('NI'),
    [tipo] nvarchar(50) NULL DEFAULT ('Operativo'),
    [estado] nvarchar(50) NULL DEFAULT ('Borrador'),
    [requiereAprobacion] bit NULL DEFAULT ((0)),
    [enllavado] bit NULL DEFAULT ((0)),
    [fechaInicio] datetime NULL,
    [fechaFin] datetime NULL,
    [area] nvarchar(200) NULL,
    [subgerencia] nvarchar(200) NULL,
    [gerencia] nvarchar(200) NULL,
    [idCreador] int NULL,
    [idResponsable] int NULL,
    [prioridad] nvarchar(20) NULL DEFAULT ('Media'),
    [fechaActualizacion] datetime NULL,
    CONSTRAINT [PK__p_Proyec__D0AF4CB45AF8B027] PRIMARY KEY ([idProyecto])
);
GO


-- ******************************************************
-- TABLA: [dbo].[p_Roles]
-- ******************************************************
CREATE TABLE [dbo].[p_Roles] (
    [idRol] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(100) NOT NULL,
    [descripcion] nvarchar(500) NULL,
    [esSistema] bit NULL DEFAULT ((0)),
    [reglas] nvarchar(max) NULL DEFAULT ('[]'),
    [defaultMenu] nvarchar(max) NULL,
    [fechaActualizacion] datetime NULL,
    CONSTRAINT [PK__p_Roles__3C872F76707155A9] PRIMARY KEY ([idRol])
);
GO


-- ******************************************************
-- TABLA: [dbo].[p_SeguridadPerfiles]
-- ******************************************************
CREATE TABLE [dbo].[p_SeguridadPerfiles] (
    [id] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(100) NOT NULL,
    [permisos] nvarchar(max) NULL,
    [activo] bit NULL DEFAULT ((1)),
    [fechaActualizacion] datetime NULL,
    CONSTRAINT [PK__p_Seguri__3213E83F1A7B9A05] PRIMARY KEY ([id])
);
GO


-- ******************************************************
-- TABLA: [dbo].[p_SlowQueries]
-- ******************************************************
CREATE TABLE [dbo].[p_SlowQueries] (
    [id] int IDENTITY(1,1) NOT NULL,
    [fecha] datetime NULL DEFAULT (getdate()),
    [duracionMS] int NOT NULL,
    [sqlText] nvarchar(max) NOT NULL,
    [parametros] nvarchar(max) NULL,
    [tipo] nvarchar(50) NULL,
    CONSTRAINT [PK__p_SlowQu__3213E83F6D9FC0DF] PRIMARY KEY ([id])
);
GO


-- ******************************************************
-- TABLA: [dbo].[p_SolicitudCambios]
-- ******************************************************
CREATE TABLE [dbo].[p_SolicitudCambios] (
    [id] int IDENTITY(1,1) NOT NULL,
    [idTarea] int NOT NULL,
    [idSolicitante] int NOT NULL,
    [tipo] nvarchar(50) NOT NULL,
    [descripcion] nvarchar(max) NULL,
    [estado] nvarchar(50) NULL DEFAULT ('Pendiente'),
    [fechaSolicitud] datetime NULL DEFAULT (getdate()),
    [fechaRespuesta] datetime NULL,
    [idResponsable] int NULL,
    [respuesta] nvarchar(max) NULL,
    [carnetSolicitante] nvarchar(50) NULL,
    CONSTRAINT [PK__p_Solici__3213E83F768D2389] PRIMARY KEY ([id])
);
GO
ALTER TABLE [dbo].[p_SolicitudCambios] ADD CONSTRAINT [FK__p_Solicit__idRes__65F6EC68] FOREIGN KEY ([idResponsable]) REFERENCES [dbo].[p_Usuarios] ([idUsuario]);
GO
ALTER TABLE [dbo].[p_SolicitudCambios] ADD CONSTRAINT [FK__p_Solicit__idSol__6502C82F] FOREIGN KEY ([idSolicitante]) REFERENCES [dbo].[p_Usuarios] ([idUsuario]);
GO
ALTER TABLE [dbo].[p_SolicitudCambios] ADD CONSTRAINT [FK__p_Solicit__idTar__640EA3F6] FOREIGN KEY ([idTarea]) REFERENCES [dbo].[p_Tareas] ([idTarea]);
GO


-- ******************************************************
-- TABLA: [dbo].[p_TareaAsignacionLog]
-- ******************************************************
CREATE TABLE [dbo].[p_TareaAsignacionLog] (
    [id] int IDENTITY(1,1) NOT NULL,
    [idTarea] int NOT NULL,
    [idUsuarioAnterior] int NULL,
    [idUsuarioNuevo] int NULL,
    [idEjecutor] int NOT NULL,
    [tipoAccion] nvarchar(50) NOT NULL,
    [motivo] nvarchar(500) NULL,
    [fecha_inicio] datetime NULL DEFAULT (getdate()),
    [fecha_fin] datetime NULL,
    [activo] bit NULL DEFAULT ((1)),
    CONSTRAINT [PK__p_TareaA__3213E83FD819E39F] PRIMARY KEY ([id])
);
GO
ALTER TABLE [dbo].[p_TareaAsignacionLog] ADD CONSTRAINT [FK__p_TareaAs__idEje__54CC6066] FOREIGN KEY ([idEjecutor]) REFERENCES [dbo].[p_Usuarios] ([idUsuario]);
GO
ALTER TABLE [dbo].[p_TareaAsignacionLog] ADD CONSTRAINT [FK__p_TareaAs__idUsu__53D83C2D] FOREIGN KEY ([idUsuarioNuevo]) REFERENCES [dbo].[p_Usuarios] ([idUsuario]);
GO
ALTER TABLE [dbo].[p_TareaAsignacionLog] ADD CONSTRAINT [FK__p_TareaAs__idUsu__52E417F4] FOREIGN KEY ([idUsuarioAnterior]) REFERENCES [dbo].[p_Usuarios] ([idUsuario]);
GO
ALTER TABLE [dbo].[p_TareaAsignacionLog] ADD CONSTRAINT [FK__p_TareaAs__idTar__51EFF3BB] FOREIGN KEY ([idTarea]) REFERENCES [dbo].[p_Tareas] ([idTarea]);
GO


-- ******************************************************
-- TABLA: [dbo].[p_TareaAsignados]
-- ******************************************************
CREATE TABLE [dbo].[p_TareaAsignados] (
    [id] int IDENTITY(1,1) NOT NULL,
    [idTarea] int NOT NULL,
    [idUsuario] int NOT NULL,
    [esResponsable] bit NULL DEFAULT ((0)),
    [fechaAsignacion] datetime NULL DEFAULT (getdate()),
    [tipo] nvarchar(50) NULL DEFAULT ('Responsable'),
    CONSTRAINT [PK__p_TareaA__3213E83F0EFDC460] PRIMARY KEY ([id])
);
GO
ALTER TABLE [dbo].[p_TareaAsignados] ADD CONSTRAINT [FK__p_TareaAs__idUsu__61674175] FOREIGN KEY ([idUsuario]) REFERENCES [dbo].[p_Usuarios] ([idUsuario]);
GO
ALTER TABLE [dbo].[p_TareaAsignados] ADD CONSTRAINT [FK__p_TareaAs__idTar__60731D3C] FOREIGN KEY ([idTarea]) REFERENCES [dbo].[p_Tareas] ([idTarea]);
GO


-- ******************************************************
-- TABLA: [dbo].[p_TareaAvanceMensual]
-- ******************************************************
CREATE TABLE [dbo].[p_TareaAvanceMensual] (
    [id] int IDENTITY(1,1) NOT NULL,
    [idTarea] int NOT NULL,
    [mes] int NOT NULL,
    [anio] int NOT NULL,
    [porcentajeMes] decimal(5,2) NOT NULL DEFAULT ((0)),
    [comentario] nvarchar(max) NULL,
    [idUsuarioActualizador] int NOT NULL,
    [fechaActualizacion] datetime NULL DEFAULT (getdate()),
    CONSTRAINT [PK__p_TareaA__3213E83F6FA65021] PRIMARY KEY ([id])
);
GO
ALTER TABLE [dbo].[p_TareaAvanceMensual] ADD CONSTRAINT [FK__p_TareaAv__idUsu__20238DFD] FOREIGN KEY ([idUsuarioActualizador]) REFERENCES [dbo].[p_Usuarios] ([idUsuario]);
GO
ALTER TABLE [dbo].[p_TareaAvanceMensual] ADD CONSTRAINT [FK__p_TareaAv__idTar__1F2F69C4] FOREIGN KEY ([idTarea]) REFERENCES [dbo].[p_Tareas] ([idTarea]);
GO


-- ******************************************************
-- TABLA: [dbo].[p_TareaAvances]
-- ******************************************************
CREATE TABLE [dbo].[p_TareaAvances] (
    [id] int IDENTITY(1,1) NOT NULL,
    [idTarea] int NOT NULL,
    [idUsuario] int NOT NULL,
    [porcentajeAnterior] int NULL,
    [porcentajeNuevo] int NOT NULL,
    [comentario] nvarchar(max) NULL,
    [fecha] datetime NULL DEFAULT (getdate()),
    CONSTRAINT [PK__p_TareaA__3213E83FEE11F5DD] PRIMARY KEY ([id])
);
GO
ALTER TABLE [dbo].[p_TareaAvances] ADD CONSTRAINT [FK__p_TareaAv__idUsu__59911583] FOREIGN KEY ([idUsuario]) REFERENCES [dbo].[p_Usuarios] ([idUsuario]);
GO
ALTER TABLE [dbo].[p_TareaAvances] ADD CONSTRAINT [FK__p_TareaAv__idTar__589CF14A] FOREIGN KEY ([idTarea]) REFERENCES [dbo].[p_Tareas] ([idTarea]);
GO


-- ******************************************************
-- TABLA: [dbo].[p_TareaInstancia]
-- ******************************************************
CREATE TABLE [dbo].[p_TareaInstancia] (
    [id] int IDENTITY(1,1) NOT NULL,
    [idTarea] int NOT NULL,
    [idRecurrencia] int NULL,
    [fechaProgramada] date NOT NULL,
    [fechaEjecucion] date NULL,
    [estadoInstancia] nvarchar(30) NULL DEFAULT ('PENDIENTE'),
    [comentario] nvarchar(max) NULL,
    [idUsuarioEjecutor] int NULL,
    [fechaRegistro] datetime NULL DEFAULT (getdate()),
    [fechaReprogramada] date NULL,
    CONSTRAINT [PK__p_TareaI__3213E83F81C4262C] PRIMARY KEY ([id])
);
GO
ALTER TABLE [dbo].[p_TareaInstancia] ADD CONSTRAINT [FK__p_TareaIn__idRec__178E47FC] FOREIGN KEY ([idRecurrencia]) REFERENCES [dbo].[p_TareaRecurrencia] ([id]);
GO
ALTER TABLE [dbo].[p_TareaInstancia] ADD CONSTRAINT [FK__p_TareaIn__idUsu__18826C35] FOREIGN KEY ([idUsuarioEjecutor]) REFERENCES [dbo].[p_Usuarios] ([idUsuario]);
GO
ALTER TABLE [dbo].[p_TareaInstancia] ADD CONSTRAINT [FK__p_TareaIn__idTar__169A23C3] FOREIGN KEY ([idTarea]) REFERENCES [dbo].[p_Tareas] ([idTarea]);
GO


-- ******************************************************
-- TABLA: [dbo].[p_TareaRecurrencia]
-- ******************************************************
CREATE TABLE [dbo].[p_TareaRecurrencia] (
    [id] int IDENTITY(1,1) NOT NULL,
    [idTarea] int NOT NULL,
    [tipoRecurrencia] nvarchar(20) NOT NULL,
    [diasSemana] nvarchar(20) NULL,
    [diaMes] int NULL,
    [fechaInicioVigencia] date NOT NULL,
    [fechaFinVigencia] date NULL,
    [activo] bit NULL DEFAULT ((1)),
    [fechaCreacion] datetime NULL DEFAULT (getdate()),
    [idCreador] int NOT NULL,
    CONSTRAINT [PK__p_TareaR__3213E83F9FB2AAE5] PRIMARY KEY ([id])
);
GO
ALTER TABLE [dbo].[p_TareaRecurrencia] ADD CONSTRAINT [FK__p_TareaRe__idCre__11D56EA6] FOREIGN KEY ([idCreador]) REFERENCES [dbo].[p_Usuarios] ([idUsuario]);
GO
ALTER TABLE [dbo].[p_TareaRecurrencia] ADD CONSTRAINT [FK__p_TareaRe__idTar__10E14A6D] FOREIGN KEY ([idTarea]) REFERENCES [dbo].[p_Tareas] ([idTarea]);
GO


-- ******************************************************
-- TABLA: [dbo].[p_Tareas]
-- ******************************************************
CREATE TABLE [dbo].[p_Tareas] (
    [idTarea] int IDENTITY(1,1) NOT NULL,
    [idProyecto] int NULL,
    [nombre] nvarchar(500) NOT NULL,
    [descripcion] nvarchar(max) NULL,
    [estado] nvarchar(50) NULL DEFAULT ('Pendiente'),
    [prioridad] nvarchar(20) NULL DEFAULT ('Media'),
    [fechaCreacion] datetime NULL DEFAULT (getdate()),
    [fechaObjetivo] datetime NULL,
    [fechaCompletado] datetime NULL,
    [porcentaje] int NULL DEFAULT ((0)),
    [idPadre] int NULL,
    [orden] int NULL DEFAULT ((0)),
    [esHito] bit NULL DEFAULT ((0)),
    [idAsignado] int NULL,
    [tipoTarea] nvarchar(50) NULL DEFAULT ('tarea'),
    [fechaActualizacion] datetime NULL,
    [idCreador] int NULL,
    [fechaInicioPlanificada] datetime NULL,
    [tipo] nvarchar(50) NULL DEFAULT ('Administrativa'),
    [esfuerzo] nvarchar(20) NULL,
    [fechaInicioReal] datetime NULL,
    [fechaFinReal] datetime NULL,
    [comportamiento] nvarchar(20) NULL DEFAULT ('SIMPLE'),
    [idGrupo] int NULL,
    [numeroParte] int NULL DEFAULT ((1)),
    [linkEvidencia] nvarchar(max) NULL,
    [activo] bit NOT NULL DEFAULT ((1)),
    [motivoDeshabilitacion] nvarchar(max) NULL,
    [deshabilitadoPor] int NULL,
    [fechaDeshabilitacion] datetime NULL,
    [idTareaPadre] int NULL,
    [requiereEvidencia] bit NULL DEFAULT ((0)),
    [idEntregable] int NULL,
    [creadorCarnet] nvarchar(50) NULL,
    CONSTRAINT [PK__p_Tareas__756A54020939B421] PRIMARY KEY ([idTarea])
);
GO
ALTER TABLE [dbo].[p_Tareas] ADD CONSTRAINT [FK__p_Tareas__idAsig__5BAE681F] FOREIGN KEY ([idAsignado]) REFERENCES [dbo].[p_Usuarios] ([idUsuario]);
GO
ALTER TABLE [dbo].[p_Tareas] ADD CONSTRAINT [FK__p_Tareas__idProy__59C61FAD] FOREIGN KEY ([idProyecto]) REFERENCES [dbo].[p_Proyectos] ([idProyecto]);
GO
ALTER TABLE [dbo].[p_Tareas] ADD CONSTRAINT [FK_Tareas_Padre] FOREIGN KEY ([idTareaPadre]) REFERENCES [dbo].[p_Tareas] ([idTarea]);
GO
ALTER TABLE [dbo].[p_Tareas] ADD CONSTRAINT [FK__p_Tareas__idPadr__5ABA43E6] FOREIGN KEY ([idPadre]) REFERENCES [dbo].[p_Tareas] ([idTarea]);
GO


-- ******************************************************
-- TABLA: [dbo].[p_UsuarioCredenciales]
-- ******************************************************
CREATE TABLE [dbo].[p_UsuarioCredenciales] (
    [id] int IDENTITY(1,1) NOT NULL,
    [idUsuario] int NOT NULL,
    [passwordHash] nvarchar(500) NOT NULL,
    [ultimoCambio] datetime NULL DEFAULT (getdate()),
    CONSTRAINT [PK__p_Usuari__3213E83F4289905F] PRIMARY KEY ([id])
);
GO
ALTER TABLE [dbo].[p_UsuarioCredenciales] ADD CONSTRAINT [FK__p_Usuario__idUsu__498FB7E4] FOREIGN KEY ([idUsuario]) REFERENCES [dbo].[p_Usuarios] ([idUsuario]);
GO


-- ******************************************************
-- TABLA: [dbo].[p_Usuarios]
-- ******************************************************
CREATE TABLE [dbo].[p_Usuarios] (
    [idUsuario] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(200) NULL,
    [nombreCompleto] nvarchar(300) NULL,
    [correo] nvarchar(200) NOT NULL,
    [activo] bit NULL DEFAULT ((1)),
    [rolGlobal] nvarchar(50) NULL DEFAULT ('Empleado'),
    [idRol] int NULL,
    [carnet] nvarchar(50) NULL,
    [cargo] nvarchar(200) NULL,
    [departamento] nvarchar(200) NULL,
    [orgDepartamento] nvarchar(200) NULL,
    [orgGerencia] nvarchar(200) NULL,
    [idOrg] nvarchar(50) NULL,
    [jefeCarnet] nvarchar(50) NULL,
    [jefeNombre] nvarchar(200) NULL,
    [jefeCorreo] nvarchar(200) NULL,
    [fechaIngreso] datetime NULL,
    [genero] nvarchar(20) NULL,
    [primer_nivel] nvarchar(200) NULL,
    [gerencia] nvarchar(200) NULL,
    [ogerencia] nvarchar(200) NULL,
    [subgerencia] nvarchar(200) NULL,
    [pais] nvarchar(10) NULL DEFAULT ('NI'),
    [telefono] nvarchar(50) NULL,
    [fechaCreacion] datetime NULL DEFAULT (getdate()),
    [username] nvarchar(100) NULL,
    [cedula] nvarchar(50) NULL,
    [area] nvarchar(200) NULL,
    [direccion] nvarchar(max) NULL,
    [empresa] nvarchar(200) NULL,
    [ubicacion] nvarchar(200) NULL,
    [tipo_empleado] nvarchar(100) NULL,
    [tipo_contrato] nvarchar(100) NULL,
    [fuente_datos] nvarchar(50) NULL,
    [segundo_nivel] nvarchar(200) NULL,
    [tercer_nivel] nvarchar(200) NULL,
    [cuarto_nivel] nvarchar(200) NULL,
    [quinto_nivel] nvarchar(200) NULL,
    [sexto_nivel] nvarchar(200) NULL,
    [carnet_jefe2] nvarchar(50) NULL,
    [carnet_jefe3] nvarchar(50) NULL,
    [carnet_jefe4] nvarchar(50) NULL,
    [fechaActualizacion] datetime NULL,
    CONSTRAINT [PK__p_Usuari__645723A657F1DA48] PRIMARY KEY ([idUsuario])
);
GO
ALTER TABLE [dbo].[p_Usuarios] ADD CONSTRAINT [FK__p_Usuario__idRol__44CB02C7] FOREIGN KEY ([idRol]) REFERENCES [dbo].[p_Roles] ([idRol]);
GO


-- ******************************************************
-- TABLA: [dbo].[p_Usuarios_OLD]
-- ******************************************************
CREATE TABLE [dbo].[p_Usuarios_OLD] (
    [idUsuario] int NULL,
    [carnet] nvarchar(100) NULL,
    [nombre] nvarchar(255) NULL,
    [correo] nvarchar(255) NULL
);
GO


-- ******************************************************
-- TABLA: [dbo].[p_UsuariosConfig]
-- ******************************************************
CREATE TABLE [dbo].[p_UsuariosConfig] (
    [id] int IDENTITY(1,1) NOT NULL,
    [idUsuario] int NOT NULL,
    [menuPersonalizado] nvarchar(max) NULL,
    [temasPreferidos] nvarchar(500) NULL,
    [notificaciones] bit NULL DEFAULT ((1)),
    [fechaActualizacion] datetime NULL,
    [idioma] nvarchar(10) NULL DEFAULT ('es'),
    [tema] nvarchar(20) NULL DEFAULT ('light'),
    CONSTRAINT [PK__p_Usuari__3213E83F4132E030] PRIMARY KEY ([id])
);
GO
ALTER TABLE [dbo].[p_UsuariosConfig] ADD CONSTRAINT [FK__p_Usuario__idUsu__40C567B9] FOREIGN KEY ([idUsuario]) REFERENCES [dbo].[p_Usuarios] ([idUsuario]);
GO


-- ******************************************************
-- TABLA: [dbo].[p_UsuariosCredenciales]
-- ******************************************************
CREATE TABLE [dbo].[p_UsuariosCredenciales] (
    [idCredencial] int IDENTITY(1,1) NOT NULL,
    [idUsuario] int NOT NULL,
    [passwordHash] nvarchar(500) NOT NULL,
    [ultimoCambio] datetime NULL DEFAULT (getdate()),
    [ultimoLogin] datetime NULL,
    [refreshTokenHash] nvarchar(500) NULL,
    CONSTRAINT [PK__p_Usuari__3213E83F269A63BB] PRIMARY KEY ([idCredencial])
);
GO
ALTER TABLE [dbo].[p_UsuariosCredenciales] ADD CONSTRAINT [FK__p_Usuario__idUsu__3C00B29C] FOREIGN KEY ([idUsuario]) REFERENCES [dbo].[p_Usuarios] ([idUsuario]);
GO


-- ******************************************************
-- TABLA: [dbo].[p_UsuariosOrganizacion]
-- ******************************************************
CREATE TABLE [dbo].[p_UsuariosOrganizacion] (
    [id] int IDENTITY(1,1) NOT NULL,
    [idUsuario] int NOT NULL,
    [idNodo] int NOT NULL,
    [esResponsable] bit NULL DEFAULT ((0)),
    CONSTRAINT [PK__p_Usuari__3213E83F1D2EB007] PRIMARY KEY ([id])
);
GO
ALTER TABLE [dbo].[p_UsuariosOrganizacion] ADD CONSTRAINT [FK__p_Usuario__idUsu__495AADBA] FOREIGN KEY ([idUsuario]) REFERENCES [dbo].[p_Usuarios] ([idUsuario]);
GO
ALTER TABLE [dbo].[p_UsuariosOrganizacion] ADD CONSTRAINT [FK__p_Usuario__idNod__4A4ED1F3] FOREIGN KEY ([idNodo]) REFERENCES [dbo].[p_OrganizacionNodos] ([id]);
GO


-- FUNCION: [dbo].[fn_SplitCsv_NVarChar]

/* =========================
   Helper: split CSV -> tabla
   ========================= */
CREATE   FUNCTION dbo.fn_SplitCsv_NVarChar
(
  @csv NVARCHAR(MAX)
)
RETURNS TABLE
AS
RETURN
(
  SELECT DISTINCT LTRIM(RTRIM(value)) AS item
  FROM STRING_SPLIT(ISNULL(@csv, N''), N',')
  WHERE LTRIM(RTRIM(value)) <> N''
);

GO

-- PROCEDIMIENTO: [dbo].[sp_Acceso_ObtenerArbol]
CREATE    PROCEDURE sp_Acceso_ObtenerArbol
AS
BEGIN
    SET NOCOUNT ON;
    SELECT id AS idorg, nombre, tipo, idPadre AS padre, orden, activo 
    FROM p_OrganizacionNodos WHERE activo = 1;
END;

GO

-- PROCEDIMIENTO: [dbo].[sp_AgregarFaseGrupo]
-- 5.3 SP: Agregar Fase a Grupo (Plan de Trabajo)
CREATE   PROCEDURE sp_AgregarFaseGrupo
    @idGrupo INT,
    @idTareaNueva INT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @n INT;
    SELECT @n = ISNULL(MAX(numeroParte), 0) + 1
    FROM p_Tareas WHERE idGrupo = @idGrupo;

    UPDATE p_Tareas
    SET idGrupo = @idGrupo, numeroParte = @n
    WHERE idTarea = @idTareaNueva;
END
GO

-- PROCEDIMIENTO: [dbo].[sp_Bloqueo_Crear]

/* =========================================================
   3) SP Mejorado: sp_Bloqueo_Crear
   ========================================================= */
CREATE   PROCEDURE dbo.sp_Bloqueo_Crear
(
    @idTarea          INT,
    @idOrigenUsuario  INT,
    @idDestinoUsuario INT = NULL,
    @destinoTexto     NVARCHAR(200) = NULL,
    @motivo           NVARCHAR(1000),
    @accionMitigacion NVARCHAR(1000) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    BEGIN TRY
        BEGIN TRAN;

        DECLARE @idBloqueo INT;

        SELECT TOP (1) @idBloqueo = b.idBloqueo
        FROM dbo.p_Bloqueos b WITH (UPDLOCK, HOLDLOCK)
        WHERE b.idTarea = @idTarea AND b.estado <> 'Resuelto'
        ORDER BY b.creadoEn DESC;

        IF @idBloqueo IS NULL
        BEGIN
            INSERT INTO dbo.p_Bloqueos
            (idTarea, idOrigenUsuario, idDestinoUsuario, destinoTexto, motivo, accionMitigacion, creadoEn, estado)
            VALUES
            (@idTarea, @idOrigenUsuario, @idDestinoUsuario, @destinoTexto, @motivo, @accionMitigacion, GETDATE(), 'Activo');

            SET @idBloqueo = SCOPE_IDENTITY();
        END

        SELECT @idBloqueo AS idBloqueo;
        
        -- Actualizar estado tarea (fuera del INSERT para asegurar que se ejecute incluso si devolvimos bloqueo existente, aunque la regla de negocio podria variar)
        -- En este caso, aseguramos que la tarea se marque bloqueada.
        UPDATE dbo.p_Tareas
        SET estado = 'Bloqueada'
        WHERE idTarea = @idTarea
          AND activo = 1
          AND estado NOT IN ('Hecha', 'Archivada');

        COMMIT;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK;
        THROW;
    END CATCH
END

GO

-- PROCEDIMIENTO: [dbo].[sp_Checkin_Crear]
CREATE   PROCEDURE sp_Checkin_Crear
    @idUsuario INT,
    @fecha DATE,
    @entregableTexto NVARCHAR(MAX),
    @nota NVARCHAR(MAX) = NULL,
    @linkEvidencia NVARCHAR(MAX) = NULL,
    @estadoAnimo NVARCHAR(50) = NULL,
    @idNodo INT = NULL,
    @energia INT = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- Upsert simple: Si ya existe checkin para ese usuario/fecha, actualizar. Si no, insertar.
    MERGE p_Checkins AS target
    USING (SELECT @idUsuario, @fecha) AS source (idUsuario, fecha)
    ON (target.idUsuario = source.idUsuario AND target.fecha = source.fecha)
    WHEN MATCHED THEN
        UPDATE SET 
            entregableTexto = @entregableTexto,
            nota = @nota,
            linkEvidencia = @linkEvidencia,
            estadoAnimo = @estadoAnimo,
            idNodo = @idNodo,
            energia = @energia,
            fechaCreacion = GETDATE() -- o fechaActualizacion si existiera
    WHEN NOT MATCHED THEN
        INSERT (idUsuario, fecha, entregableTexto, nota, linkEvidencia, estadoAnimo, idNodo, energia, fechaCreacion)
        VALUES (@idUsuario, @fecha, @entregableTexto, @nota, @linkEvidencia, @estadoAnimo, @idNodo, @energia, GETDATE());
    
    -- Devolver ID (si insertó) o buscarlo
    SELECT idCheckin FROM p_Checkins WHERE idUsuario = @idUsuario AND fecha = @fecha;
END
GO

-- PROCEDIMIENTO: [dbo].[sp_Checkin_Upsert]

/* =========================================================
   2) SP Mejorado: sp_Checkin_Upsert
   ========================================================= */
CREATE   PROCEDURE dbo.sp_Checkin_Upsert
(
    @idUsuario        INT,
    @fecha            DATE,
    @entregableTexto  NVARCHAR(4000),
    @nota             NVARCHAR(4000) = NULL,
    @linkEvidencia    NVARCHAR(1000) = NULL,
    @estadoAnimo      NVARCHAR(50) = NULL,
    @idNodo           INT = NULL,
    @tareas           dbo.TVP_CheckinTareas READONLY
)
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON; 

    BEGIN TRY
        BEGIN TRAN;

        DECLARE @idCheckin INT;

        SELECT @idCheckin = c.idCheckin
        FROM dbo.p_Checkins c WITH (UPDLOCK, HOLDLOCK)
        WHERE c.idUsuario = @idUsuario AND c.fecha = @fecha;

        IF @idCheckin IS NULL
        BEGIN
            INSERT INTO dbo.p_Checkins(idUsuario, fecha, entregableTexto, nota, linkEvidencia, estadoAnimo, idNodo)
            VALUES(@idUsuario, @fecha, @entregableTexto, @nota, @linkEvidencia, @estadoAnimo, @idNodo);

            SET @idCheckin = SCOPE_IDENTITY();
        END
        ELSE
        BEGIN
            UPDATE dbo.p_Checkins
            SET entregableTexto = @entregableTexto,
                nota = @nota,
                linkEvidencia = @linkEvidencia,
                estadoAnimo = @estadoAnimo,
                idNodo = @idNodo
            WHERE idCheckin = @idCheckin;
        END

        DELETE FROM dbo.p_CheckinTareas WHERE idCheckin = @idCheckin;

        INSERT INTO dbo.p_CheckinTareas(idCheckin, idTarea, tipo)
        SELECT
            @idCheckin,
            x.idTarea,
            x.tipo
        FROM (
            SELECT DISTINCT idTarea, tipo
            FROM @tareas
        ) x
        INNER JOIN dbo.p_Tareas t ON t.idTarea = x.idTarea
        WHERE t.activo = 1;

        COMMIT;

        SELECT @idCheckin AS idCheckin;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK;
        THROW;
    END CATCH
END

GO

-- PROCEDIMIENTO: [dbo].[sp_Clarity_CrearTareaRapida]
CREATE    PROCEDURE sp_Clarity_CrearTareaRapida
    @titulo NVARCHAR(200),
    @idUsuario INT,
    @prioridad NVARCHAR(50) = 'Media',
    @tipo NVARCHAR(50) = 'Administrativa'
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO p_Tareas (nombre, idCreador, estado, prioridad, tipo, fechaCreacion, fechaActualizacion)
    VALUES (@titulo, @idUsuario, 'Pendiente', @prioridad, @tipo, GETDATE(), GETDATE());
    SELECT SCOPE_IDENTITY() AS idTarea;
END;


GO

-- PROCEDIMIENTO: [dbo].[sp_Clarity_MiDia_Get]
CREATE   PROCEDURE dbo.sp_Clarity_MiDia_Get
(
  @IdUsuario INT,
  @Fecha     DATE
)
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

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

-- PROCEDIMIENTO: [dbo].[sp_CrearGrupoInicial]
-- 5.2 SP: Crear Grupo Inicial (Plan de Trabajo)
CREATE   PROCEDURE sp_CrearGrupoInicial
    @idTarea INT
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE p_Tareas
    SET idGrupo = @idTarea, numeroParte = 1
    WHERE idTarea = @idTarea AND (idGrupo IS NULL OR idGrupo = 0);
END
GO

-- PROCEDIMIENTO: [dbo].[sp_DelegacionVisibilidad_Crear]

CREATE   PROCEDURE dbo.sp_DelegacionVisibilidad_Crear
  @delegante NVARCHAR(50),
  @delegado  NVARCHAR(50),
  @motivo    NVARCHAR(500) = NULL,
  @fecha_inicio NVARCHAR(50) = NULL,
  @fecha_fin    NVARCHAR(50) = NULL
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @d1 NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@delegante, N'')));
  DECLARE @d2 NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@delegado,  N'')));

  IF (@d1 = N'' OR @d2 = N'')
  BEGIN
    RAISERROR('Delegante/Delegado requerido.', 16, 1);
    RETURN;
  END

  DECLARE @fi DATETIME = TRY_CONVERT(DATETIME, @fecha_inicio);
  DECLARE @ff DATETIME = TRY_CONVERT(DATETIME, @fecha_fin);

  INSERT INTO dbo.p_delegacion_visibilidad
    (carnet_delegante, carnet_delegado, motivo, activo, creado_en, fecha_inicio, fecha_fin)
  VALUES
    (@d1, @d2, @motivo, 1, GETDATE(), @fi, @ff);

  SELECT SCOPE_IDENTITY() AS id;
END;

GO

-- PROCEDIMIENTO: [dbo].[sp_DelegacionVisibilidad_Desactivar]

CREATE   PROCEDURE dbo.sp_DelegacionVisibilidad_Desactivar
  @id BIGINT
AS
BEGIN
  SET NOCOUNT ON;
  UPDATE dbo.p_delegacion_visibilidad
  SET activo = 0
  WHERE id = @id;
END;

GO

-- PROCEDIMIENTO: [dbo].[sp_DelegacionVisibilidad_ListarActivas]

CREATE   PROCEDURE dbo.sp_DelegacionVisibilidad_ListarActivas
AS
BEGIN
  SET NOCOUNT ON;
  SELECT *
  FROM dbo.p_delegacion_visibilidad
  WHERE activo = 1
  ORDER BY creado_en DESC;
END;

GO

-- PROCEDIMIENTO: [dbo].[sp_DelegacionVisibilidad_ListarPorDelegante]

CREATE   PROCEDURE dbo.sp_DelegacionVisibilidad_ListarPorDelegante
  @carnetDelegante NVARCHAR(50)
AS
BEGIN
  SET NOCOUNT ON;
  DECLARE @c NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@carnetDelegante, N'')));

  SELECT *
  FROM dbo.p_delegacion_visibilidad
  WHERE LTRIM(RTRIM(carnet_delegante)) = @c
  ORDER BY creado_en DESC;
END;

GO

-- PROCEDIMIENTO: [dbo].[sp_DelegacionVisibilidad_ObtenerActivas]

/* ============================================
   DELEGACIÓN VISIBILIDAD
   ============================================ */

CREATE   PROCEDURE dbo.sp_DelegacionVisibilidad_ObtenerActivas
  @carnetDelegado NVARCHAR(50)
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @c NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@carnetDelegado, N'')));

  SELECT *
  FROM dbo.p_delegacion_visibilidad
  WHERE LTRIM(RTRIM(carnet_delegado)) = @c
    AND activo = 1
    AND (fecha_inicio IS NULL OR fecha_inicio <= GETDATE())
    AND (fecha_fin    IS NULL OR fecha_fin    >= GETDATE())
  ORDER BY creado_en DESC;
END;

GO

-- PROCEDIMIENTO: [dbo].[sp_ObtenerProyectos]

CREATE PROCEDURE sp_ObtenerProyectos
    @idUsuario INT,
    @filtroNombre NVARCHAR(100) = NULL,
    @filtroEstado NVARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;

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

-- PROCEDIMIENTO: [dbo].[sp_Organizacion_BuscarNodoPorId]

CREATE   PROCEDURE dbo.sp_Organizacion_BuscarNodoPorId
  @idorg BIGINT
AS
BEGIN
  SET NOCOUNT ON;

  SELECT TOP 1
    id          AS idorg,
    nombre,
    tipo,
    idPadre     AS padre,
    orden,
    activo
  FROM dbo.p_OrganizacionNodos
  WHERE id = @idorg;
END;

GO

-- PROCEDIMIENTO: [dbo].[sp_Organizacion_BuscarNodos]

CREATE   PROCEDURE dbo.sp_Organizacion_BuscarNodos
  @termino NVARCHAR(200)
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @t NVARCHAR(210) = N'%' + ISNULL(@termino, N'') + N'%';

  SELECT TOP 50
    id          AS idorg,
    nombre,
    tipo,
    idPadre     AS padre,
    orden,
    activo
  FROM dbo.p_OrganizacionNodos
  WHERE LOWER(nombre) LIKE LOWER(@t)
  ORDER BY nombre;
END;

GO

-- PROCEDIMIENTO: [dbo].[sp_Organizacion_ContarEmpleadosNodoDirecto]

CREATE   PROCEDURE dbo.sp_Organizacion_ContarEmpleadosNodoDirecto
  @idOrg INT
AS
BEGIN
  SET NOCOUNT ON;

  SELECT COUNT(*) AS total
  FROM dbo.p_Usuarios u
  WHERE u.activo = 1
    AND u.idOrg = @idOrg;
END;

GO

-- PROCEDIMIENTO: [dbo].[sp_Organizacion_ContarEmpleadosPorNodo]

CREATE   PROCEDURE dbo.sp_Organizacion_ContarEmpleadosPorNodo
AS
BEGIN
  SET NOCOUNT ON;

  SELECT
    CAST(u.idOrg AS NVARCHAR(50)) AS idOrg,
    COUNT(*) AS [count]
  FROM dbo.p_Usuarios u
  WHERE u.activo = 1
    AND u.idOrg IS NOT NULL
  GROUP BY u.idOrg;
END;

GO

-- PROCEDIMIENTO: [dbo].[sp_Organizacion_ObtenerArbol]

/* ============================================
   ORGANIZACIÓN
   ============================================ */

CREATE   PROCEDURE dbo.sp_Organizacion_ObtenerArbol
AS
BEGIN
  SET NOCOUNT ON;

  SELECT
    id          AS idorg,
    nombre,
    tipo,
    idPadre     AS padre,
    orden,
    activo
  FROM dbo.p_OrganizacionNodos
  WHERE activo = 1
  ORDER BY orden, nombre;
END;

GO

-- PROCEDIMIENTO: [dbo].[sp_Organizacion_ObtenerEmpleadosNodoDirecto]

CREATE   PROCEDURE dbo.sp_Organizacion_ObtenerEmpleadosNodoDirecto
  @idOrg INT,
  @limite INT = 50
AS
BEGIN
  SET NOCOUNT ON;

  SELECT TOP (@limite)
    u.idUsuario, u.carnet, u.nombre, u.nombreCompleto, u.correo,
    u.cargo, u.departamento, u.orgDepartamento, u.orgGerencia,
    u.idOrg, u.jefeCarnet, u.jefeNombre, u.jefeCorreo, u.activo,
    u.gerencia, u.subgerencia, u.idRol, u.rolGlobal
  FROM dbo.p_Usuarios u
  WHERE u.activo = 1
    AND u.idOrg = @idOrg
  ORDER BY u.nombreCompleto;
END;

GO

-- PROCEDIMIENTO: [dbo].[sp_Organizacion_SubarbolContarEmpleados]

CREATE   PROCEDURE dbo.sp_Organizacion_SubarbolContarEmpleados
  @idOrgRaiz NVARCHAR(50)
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @id NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@idOrgRaiz, N'')));
  IF (@id = N'')
  BEGIN
    SELECT CAST(0 AS INT) AS total;
    RETURN;
  END

  ;WITH NodosSub AS
  (
    SELECT CAST(id AS NVARCHAR(50)) AS idorg
    FROM dbo.p_OrganizacionNodos
    WHERE CAST(id AS NVARCHAR(50)) = @id

    UNION ALL

    SELECT CAST(n.id AS NVARCHAR(50))
    FROM dbo.p_OrganizacionNodos n
    JOIN NodosSub ns ON CAST(n.idPadre AS NVARCHAR(50)) = ns.idorg
  )
  SELECT COUNT(*) AS total
  FROM dbo.p_Usuarios u
  JOIN NodosSub ns ON CAST(u.idOrg AS NVARCHAR(50)) = ns.idorg
  WHERE u.activo = 1;
END;

GO

-- PROCEDIMIENTO: [dbo].[sp_Organizacion_SubarbolPreviewEmpleados]

CREATE   PROCEDURE dbo.sp_Organizacion_SubarbolPreviewEmpleados
  @idOrgRaiz NVARCHAR(50),
  @limite INT = 50
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @id NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@idOrgRaiz, N'')));
  IF (@id = N'')
  BEGIN
    SELECT TOP 0 * FROM dbo.p_Usuarios;
    RETURN;
  END

  ;WITH NodosSub AS
  (
    SELECT CAST(id AS NVARCHAR(50)) AS idorg
    FROM dbo.p_OrganizacionNodos
    WHERE CAST(id AS NVARCHAR(50)) = @id

    UNION ALL

    SELECT CAST(n.id AS NVARCHAR(50))
    FROM dbo.p_OrganizacionNodos n
    JOIN NodosSub ns ON CAST(n.idPadre AS NVARCHAR(50)) = ns.idorg
  )
  SELECT TOP (@limite)
    u.idUsuario, u.carnet, u.nombre, u.nombreCompleto, u.correo,
    u.cargo, u.departamento, u.orgDepartamento, u.orgGerencia,
    u.idOrg, u.jefeCarnet, u.jefeNombre, u.jefeCorreo, u.activo,
    u.gerencia, u.subgerencia, u.idRol, u.rolGlobal
  FROM dbo.p_Usuarios u
  JOIN NodosSub ns ON CAST(u.idOrg AS NVARCHAR(50)) = ns.idorg
  WHERE u.activo = 1
  ORDER BY u.nombreCompleto;
END;

GO

-- PROCEDIMIENTO: [dbo].[sp_PermisoArea_Crear]

CREATE   PROCEDURE dbo.sp_PermisoArea_Crear
  @otorga  NVARCHAR(50) = NULL,
  @recibe  NVARCHAR(50),
  @idorg   BIGINT,
  @alcance NVARCHAR(50) = N'SUBARBOL',
  @motivo  NVARCHAR(500) = NULL,
  @fecha_fin NVARCHAR(50) = NULL
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @r NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@recibe, N'')));
  IF (@r = N'')
  BEGIN
    RAISERROR('carnet_recibe requerido.', 16, 1);
    RETURN;
  END

  DECLARE @ff DATETIME = TRY_CONVERT(DATETIME, @fecha_fin);

  INSERT INTO dbo.p_permiso_area
    (carnet_otorga, carnet_recibe, idorg_raiz, alcance, motivo, activo, creado_en, fecha_fin)
  VALUES
    (NULLIF(LTRIM(RTRIM(@otorga)), N''), @r, @idorg, @alcance, @motivo, 1, GETDATE(), @ff);

  SELECT SCOPE_IDENTITY() AS id;
END;

GO

-- PROCEDIMIENTO: [dbo].[sp_PermisoArea_Desactivar]

CREATE   PROCEDURE dbo.sp_PermisoArea_Desactivar
  @id BIGINT
AS
BEGIN
  SET NOCOUNT ON;
  UPDATE dbo.p_permiso_area
  SET activo = 0
  WHERE id = @id;
END;

GO

-- PROCEDIMIENTO: [dbo].[sp_PermisoArea_ListarActivos]

CREATE   PROCEDURE dbo.sp_PermisoArea_ListarActivos
AS
BEGIN
  SET NOCOUNT ON;
  SELECT *
  FROM dbo.p_permiso_area
  WHERE activo = 1
  ORDER BY creado_en DESC;
END;

GO

-- PROCEDIMIENTO: [dbo].[sp_PermisoArea_ObtenerActivosPorRecibe]

/* ============================================
   PERMISO ÁREA
   ============================================ */

CREATE   PROCEDURE dbo.sp_PermisoArea_ObtenerActivosPorRecibe
  @carnetRecibe NVARCHAR(50)
AS
BEGIN
  SET NOCOUNT ON;
  DECLARE @c NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@carnetRecibe, N'')));

  SELECT *
  FROM dbo.p_permiso_area
  WHERE LTRIM(RTRIM(carnet_recibe)) = @c
    AND activo = 1
  ORDER BY creado_en DESC;
END;

GO

-- PROCEDIMIENTO: [dbo].[sp_PermisoEmpleado_Crear]

CREATE   PROCEDURE dbo.sp_PermisoEmpleado_Crear
  @otorga  NVARCHAR(50) = NULL,
  @recibe  NVARCHAR(50),
  @objetivo NVARCHAR(50),
  @tipo    NVARCHAR(50) = N'ALLOW',
  @motivo  NVARCHAR(500) = NULL
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @r NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@recibe, N'')));
  DECLARE @o NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@objetivo, N'')));

  IF (@r = N'' OR @o = N'')
  BEGIN
    RAISERROR('carnet_recibe y carnet_objetivo requeridos.', 16, 1);
    RETURN;
  END

  INSERT INTO dbo.p_permiso_empleado
    (carnet_otorga, carnet_recibe, carnet_objetivo, tipo_acceso, motivo, activo, creado_en)
  VALUES
    (NULLIF(LTRIM(RTRIM(@otorga)), N''), @r, @o, @tipo, @motivo, 1, GETDATE());

  SELECT SCOPE_IDENTITY() AS id;
END;

GO

-- PROCEDIMIENTO: [dbo].[sp_PermisoEmpleado_Desactivar]

CREATE   PROCEDURE dbo.sp_PermisoEmpleado_Desactivar
  @id BIGINT
AS
BEGIN
  SET NOCOUNT ON;
  UPDATE dbo.p_permiso_empleado
  SET activo = 0
  WHERE id = @id;
END;

GO

-- PROCEDIMIENTO: [dbo].[sp_PermisoEmpleado_ListarActivos]

CREATE   PROCEDURE dbo.sp_PermisoEmpleado_ListarActivos
AS
BEGIN
  SET NOCOUNT ON;
  SELECT *
  FROM dbo.p_permiso_empleado
  WHERE activo = 1
  ORDER BY creado_en DESC;
END;

GO

-- PROCEDIMIENTO: [dbo].[sp_PermisoEmpleado_ObtenerActivosPorRecibe]

/* ============================================
   PERMISO EMPLEADO
   ============================================ */

CREATE   PROCEDURE dbo.sp_PermisoEmpleado_ObtenerActivosPorRecibe
  @carnetRecibe NVARCHAR(50)
AS
BEGIN
  SET NOCOUNT ON;
  DECLARE @c NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@carnetRecibe, N'')));

  SELECT *
  FROM dbo.p_permiso_empleado
  WHERE LTRIM(RTRIM(carnet_recibe)) = @c
    AND activo = 1
  ORDER BY creado_en DESC;
END;

GO

-- PROCEDIMIENTO: [dbo].[sp_Tarea_Crear]
CREATE   PROCEDURE sp_Tarea_Crear
    @nombre NVARCHAR(200),
    @idUsuario INT,
    @idProyecto INT = NULL,
    @descripcion NVARCHAR(MAX) = NULL,
    @estado NVARCHAR(50) = 'Pendiente',
    @prioridad NVARCHAR(50) = 'Media',
    @esfuerzo NVARCHAR(20) = NULL,
    @tipo NVARCHAR(50) = 'Administrativa',
    @fechaInicioPlanificada DATETIME = NULL,
    @fechaObjetivo DATETIME = NULL,
    @porcentaje INT = 0,
    @orden INT = 0
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO p_Tareas (
        nombre, idCreador, idProyecto, descripcion, estado, prioridad, esfuerzo, tipo,
        fechaInicioPlanificada, fechaObjetivo, porcentaje, orden, fechaCreacion, fechaActualizacion
    )
    VALUES (
        @nombre, @idUsuario, @idProyecto, @descripcion, @estado, @prioridad, @esfuerzo, @tipo,
        @fechaInicioPlanificada, @fechaObjetivo, @porcentaje, @orden, GETDATE(), GETDATE()
    );

    SELECT SCOPE_IDENTITY() AS idTarea;
END
GO

-- PROCEDIMIENTO: [dbo].[sp_Tarea_CrearCompleta]

/* =========================================================
   4) SP Mejorado: sp_Tarea_CrearCompleta
   ========================================================= */
CREATE   PROCEDURE dbo.sp_Tarea_CrearCompleta
(
    @nombre NVARCHAR(255),
    @idUsuario INT,
    @idProyecto INT = NULL,
    @descripcion NVARCHAR(MAX) = NULL,
    @estado NVARCHAR(50) = 'Pendiente',
    @prioridad NVARCHAR(50) = 'Media',
    @esfuerzo NVARCHAR(50) = NULL,
    @tipo NVARCHAR(50) = 'Administrativa',
    @fechaInicioPlanificada DATETIME = NULL,
    @fechaObjetivo DATETIME = NULL,
    @porcentaje INT = 0,
    @orden INT = 0,
    @comportamiento NVARCHAR(50) = NULL,
    @idTareaPadre INT = NULL,
    @idResponsable INT = NULL,
    @requiereEvidencia BIT = 0,
    @idEntregable INT = NULL
)
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    BEGIN TRY
        BEGIN TRAN;

        IF @fechaObjetivo IS NULL
            SET @fechaObjetivo = GETDATE();

        IF @idTareaPadre IS NOT NULL
        BEGIN
            IF NOT EXISTS (
                SELECT 1
                FROM dbo.p_Tareas p
                WHERE p.idTarea = @idTareaPadre
                  AND p.activo = 1
            )
            BEGIN
                THROW 50001, 'idTareaPadre inválido o no existe.', 1;
            END
        END

        INSERT INTO dbo.p_Tareas (
            nombre, idCreador, idProyecto, descripcion, estado, prioridad, esfuerzo, tipo,
            fechaInicioPlanificada, fechaObjetivo, porcentaje, orden, comportamiento,
            idTareaPadre, requiereEvidencia, idEntregable, fechaCreacion, activo
        )
        VALUES (
            @nombre, @idUsuario, @idProyecto, @descripcion, @estado, @prioridad, @esfuerzo, @tipo,
            @fechaInicioPlanificada, @fechaObjetivo, @porcentaje, @orden, @comportamiento,
            @idTareaPadre, @requiereEvidencia, @idEntregable, GETDATE(), 1
        );

        DECLARE @idTarea INT = SCOPE_IDENTITY();

        IF @idResponsable IS NOT NULL AND @idResponsable <> @idUsuario
        BEGIN
            IF NOT EXISTS (
                SELECT 1 FROM dbo.p_TareaAsignados 
                WHERE idTarea = @idTarea AND idUsuario = @idResponsable AND tipo = 'Responsable'
            )
            BEGIN
                INSERT INTO dbo.p_TareaAsignados (idTarea, idUsuario, tipo, fechaAsignacion)
                VALUES (@idTarea, @idResponsable, 'Responsable', GETDATE());
            END
        END

        COMMIT;
        SELECT @idTarea AS idTarea;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK;
        THROW;
    END CATCH
END

GO

-- PROCEDIMIENTO: [dbo].[sp_UpsertAvanceMensual]
-- ============================================================
-- 5. STORED PROCEDURES
-- ============================================================

-- 5.1 SP: Upsert Avance Mensual (Plan de Trabajo)
CREATE   PROCEDURE sp_UpsertAvanceMensual
    @idTarea INT,
    @anio INT,
    @mes INT,
    @porcentajeMes DECIMAL(5,2),
    @comentario NVARCHAR(MAX) = NULL,
    @idUsuario INT
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRAN;

    MERGE p_TareaAvanceMensual AS t
    USING (SELECT @idTarea idTarea, @anio anio, @mes mes) AS s
    ON (t.idTarea = s.idTarea AND t.anio = s.anio AND t.mes = s.mes)
    WHEN MATCHED THEN
        UPDATE SET porcentajeMes = @porcentajeMes,
                   comentario = @comentario,
                   idUsuarioActualizador = @idUsuario,
                   fechaActualizacion = GETDATE()
    WHEN NOT MATCHED THEN
        INSERT (idTarea, anio, mes, porcentajeMes, comentario, idUsuarioActualizador)
        VALUES (@idTarea, @anio, @mes, @porcentajeMes, @comentario, @idUsuario);

    -- Marca completada si acumulado >= 100
    DECLARE @acum DECIMAL(6,2);
    SELECT @acum = ISNULL(SUM(porcentajeMes), 0)
    FROM p_TareaAvanceMensual
    WHERE idTarea = @idTarea;

    -- Actualiza el porcentaje global en p_Tareas
    UPDATE p_Tareas 
    SET porcentaje = CASE WHEN @acum > 100 THEN 100 ELSE @acum END,
        estado = CASE WHEN @acum >= 100 THEN 'Hecha' ELSE estado END,
        fechaCompletado = CASE WHEN @acum >= 100 AND estado <> 'Hecha' THEN GETDATE() ELSE fechaCompletado END
    WHERE idTarea = @idTarea;

    COMMIT;
END
GO

-- PROCEDIMIENTO: [dbo].[sp_Usuarios_Buscar]

CREATE   PROCEDURE dbo.sp_Usuarios_Buscar
  @termino NVARCHAR(200),
  @limite  INT = 10
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @t NVARCHAR(210) = N'%' + ISNULL(@termino, N'') + N'%';

  SELECT TOP (@limite) *
  FROM dbo.p_Usuarios
  WHERE activo = 1
    AND (
         LOWER(nombreCompleto) LIKE LOWER(@t)
      OR LTRIM(RTRIM(carnet)) LIKE LTRIM(RTRIM(@t))
      OR LOWER(correo) LIKE LOWER(@t)
    )
  ORDER BY nombreCompleto;
END;

GO

-- PROCEDIMIENTO: [dbo].[sp_Usuarios_BuscarPorCarnet]

CREATE   PROCEDURE dbo.sp_Usuarios_BuscarPorCarnet
  @carnet NVARCHAR(50)
AS
BEGIN
  SET NOCOUNT ON;
  DECLARE @c NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@carnet, N'')));

  SELECT TOP 1 *
  FROM dbo.p_Usuarios
  WHERE LTRIM(RTRIM(carnet)) = @c;
END;

GO

-- PROCEDIMIENTO: [dbo].[sp_Usuarios_BuscarPorCorreo]

CREATE   PROCEDURE dbo.sp_Usuarios_BuscarPorCorreo
  @correo NVARCHAR(200)
AS
BEGIN
  SET NOCOUNT ON;
  DECLARE @c NVARCHAR(200) = LOWER(LTRIM(RTRIM(ISNULL(@correo, N''))));

  SELECT TOP 1 *
  FROM dbo.p_Usuarios
  WHERE LOWER(LTRIM(RTRIM(correo))) = @c;
END;

GO

-- PROCEDIMIENTO: [dbo].[sp_Usuarios_ListarActivos]

CREATE   PROCEDURE dbo.sp_Usuarios_ListarActivos
AS
BEGIN
  SET NOCOUNT ON;
  SELECT *
  FROM dbo.p_Usuarios
  WHERE activo = 1
  ORDER BY nombreCompleto;
END;

GO

-- PROCEDIMIENTO: [dbo].[sp_Usuarios_ObtenerCarnetPorId]

CREATE   PROCEDURE dbo.sp_Usuarios_ObtenerCarnetPorId
  @idUsuario INT
AS
BEGIN
  SET NOCOUNT ON;
  SELECT TOP 1 u.carnet
  FROM dbo.p_Usuarios u
  WHERE u.idUsuario = @idUsuario;
END;

GO

-- PROCEDIMIENTO: [dbo].[sp_Usuarios_ObtenerDetallesPorCarnets]

/* ============================================
   USUARIOS
   ============================================ */

CREATE   PROCEDURE dbo.sp_Usuarios_ObtenerDetallesPorCarnets
  @CarnetsCsv NVARCHAR(MAX)
AS
BEGIN
  SET NOCOUNT ON;

  SELECT
    u.idUsuario,
    u.carnet,
    u.nombre,
    u.nombreCompleto,
    u.correo,
    u.cargo,
    u.departamento,
    u.orgDepartamento,
    u.orgGerencia,
    u.idOrg,
    u.jefeCarnet,
    u.jefeNombre,
    u.jefeCorreo,
    u.activo,
    u.gerencia,
    u.subgerencia,
    u.idRol,
    u.rolGlobal,
    r.nombre AS rolNombre
  FROM dbo.p_Usuarios u
  LEFT JOIN dbo.p_Roles r ON r.idRol = u.idRol
  JOIN dbo.fn_SplitCsv_NVarChar(@CarnetsCsv) s
    ON LTRIM(RTRIM(u.carnet)) = s.item
  ORDER BY u.nombreCompleto;
END;

GO

-- PROCEDIMIENTO: [dbo].[sp_Visibilidad_ObtenerCarnets]

/* ============================================
   VISIBILIDAD
   ============================================ */

/*
  sp_Visibilidad_ObtenerCarnets
  Devuelve carnets visibles para un solicitante:
  - el mismo solicitante
  - su jerarquía descendente por jefeCarnet (si usas esa relación)
  - permisos explícitos por empleado (p_permiso_empleado)
  - delegaciones activas (quien me delegó visibilidad) -> suma carnets visibles de esos delegantes también
  - (opcional) permisos por área: aquí lo dejamos como "carnet objetivo" no existe, entonces no agrega carnets
    (si tu área se resuelve a carnets por organigrama, lo podemos ampliar)
*/
CREATE   PROCEDURE dbo.sp_Visibilidad_ObtenerCarnets
  @carnetSolicitante NVARCHAR(50)
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @c NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@carnetSolicitante, N'')));
  IF (@c = N'')
  BEGIN
    SELECT CAST(N'' AS NVARCHAR(50)) AS carnet WHERE 1=0;
    RETURN;
  END

  /* 1) Delegantes activos: personas que me delegaron su vista */
  DECLARE @Delegantes TABLE (carnet NVARCHAR(50) PRIMARY KEY);

  INSERT INTO @Delegantes(carnet)
  SELECT DISTINCT LTRIM(RTRIM(dv.carnet_delegante))
  FROM dbo.p_delegacion_visibilidad dv
  WHERE LTRIM(RTRIM(dv.carnet_delegado)) = @c
    AND dv.activo = 1
    AND (dv.fecha_inicio IS NULL OR dv.fecha_inicio <= GETDATE())
    AND (dv.fecha_fin    IS NULL OR dv.fecha_fin    >= GETDATE())
    AND LTRIM(RTRIM(dv.carnet_delegante)) <> N'';

  /* 2) Actores efectivos = solicitante + delegantes */
  ;WITH Actores AS
  (
    SELECT @c AS carnet
    UNION ALL
    SELECT d.carnet FROM @Delegantes d
  ),
  /* 3) Jerarquía: subtree por jefeCarnet (si tu organigrama real es otro, cámbialo aquí) */
  Jerarquia AS
  (
    SELECT u.carnet
    FROM dbo.p_Usuarios u
    JOIN Actores a ON LTRIM(RTRIM(u.carnet)) = a.carnet

    UNION ALL

    SELECT u2.carnet
    FROM dbo.p_Usuarios u2
    JOIN Jerarquia j ON LTRIM(RTRIM(u2.jefeCarnet)) = LTRIM(RTRIM(j.carnet))
    WHERE u2.activo = 1
      AND LTRIM(RTRIM(u2.carnet)) <> N''
  ),
  /* 4) Permisos explícitos por empleado */
  PermisosEmpleado AS
  (
    SELECT pe.carnet_objetivo AS carnet
    FROM dbo.p_permiso_empleado pe
    JOIN Actores a ON LTRIM(RTRIM(pe.carnet_recibe)) = a.carnet
    WHERE pe.activo = 1
      AND LTRIM(RTRIM(pe.carnet_objetivo)) <> N''
  )
  SELECT DISTINCT LTRIM(RTRIM(x.carnet)) AS carnet
  FROM
  (
    SELECT carnet FROM Jerarquia
    UNION ALL
    SELECT carnet FROM PermisosEmpleado
  ) x
  WHERE LTRIM(RTRIM(x.carnet)) <> N'';
END;

GO


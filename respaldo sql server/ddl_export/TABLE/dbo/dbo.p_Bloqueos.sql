-- DDL Generado el 2026-01-25T20:04:11.371Z

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

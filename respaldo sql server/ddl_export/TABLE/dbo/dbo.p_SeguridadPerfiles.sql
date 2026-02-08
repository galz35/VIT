-- DDL Generado el 2026-01-25T20:04:26.373Z

CREATE TABLE [dbo].[p_SeguridadPerfiles] (
    [id] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(100) NOT NULL,
    [permisos] nvarchar(max) NULL,
    [activo] bit NULL DEFAULT ((1)),
    [fechaActualizacion] datetime NULL,
    CONSTRAINT [PK__p_Seguri__3213E83F1A7B9A05] PRIMARY KEY ([id])
);
GO

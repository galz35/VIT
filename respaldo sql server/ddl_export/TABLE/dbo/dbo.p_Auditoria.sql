-- DDL Generado el 2026-01-25T20:04:10.376Z

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

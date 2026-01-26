-- DDL Generado el 2026-01-25T20:04:24.427Z

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

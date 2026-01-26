-- DDL Generado el 2026-01-25T20:04:23.403Z

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

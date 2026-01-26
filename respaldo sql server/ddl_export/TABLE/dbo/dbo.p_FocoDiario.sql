-- DDL Generado el 2026-01-25T20:04:15.386Z

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

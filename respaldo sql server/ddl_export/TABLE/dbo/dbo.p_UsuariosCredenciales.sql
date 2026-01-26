-- DDL Generado el 2026-01-25T20:04:40.404Z

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

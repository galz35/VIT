-- DDL Generado el 2026-01-25T20:04:35.928Z

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

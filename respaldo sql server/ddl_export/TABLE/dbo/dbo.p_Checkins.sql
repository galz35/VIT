-- DDL Generado el 2026-01-25T20:04:12.361Z

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

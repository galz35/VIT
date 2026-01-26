-- DDL Generado el 2026-01-25T20:04:31.493Z

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

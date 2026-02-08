-- DDL Generado el 2026-01-25T20:04:33.235Z

CREATE TABLE [dbo].[p_TareaInstancia] (
    [id] int IDENTITY(1,1) NOT NULL,
    [idTarea] int NOT NULL,
    [idRecurrencia] int NULL,
    [fechaProgramada] date NOT NULL,
    [fechaEjecucion] date NULL,
    [estadoInstancia] nvarchar(30) NULL DEFAULT ('PENDIENTE'),
    [comentario] nvarchar(max) NULL,
    [idUsuarioEjecutor] int NULL,
    [fechaRegistro] datetime NULL DEFAULT (getdate()),
    [fechaReprogramada] date NULL,
    CONSTRAINT [PK__p_TareaI__3213E83F81C4262C] PRIMARY KEY ([id])
);
GO
ALTER TABLE [dbo].[p_TareaInstancia] ADD CONSTRAINT [FK__p_TareaIn__idRec__178E47FC] FOREIGN KEY ([idRecurrencia]) REFERENCES [dbo].[p_TareaRecurrencia] ([id]);
GO
ALTER TABLE [dbo].[p_TareaInstancia] ADD CONSTRAINT [FK__p_TareaIn__idUsu__18826C35] FOREIGN KEY ([idUsuarioEjecutor]) REFERENCES [dbo].[p_Usuarios] ([idUsuario]);
GO
ALTER TABLE [dbo].[p_TareaInstancia] ADD CONSTRAINT [FK__p_TareaIn__idTar__169A23C3] FOREIGN KEY ([idTarea]) REFERENCES [dbo].[p_Tareas] ([idTarea]);
GO

-- DDL Generado el 2026-01-25T20:04:34.069Z

CREATE TABLE [dbo].[p_TareaRecurrencia] (
    [id] int IDENTITY(1,1) NOT NULL,
    [idTarea] int NOT NULL,
    [tipoRecurrencia] nvarchar(20) NOT NULL,
    [diasSemana] nvarchar(20) NULL,
    [diaMes] int NULL,
    [fechaInicioVigencia] date NOT NULL,
    [fechaFinVigencia] date NULL,
    [activo] bit NULL DEFAULT ((1)),
    [fechaCreacion] datetime NULL DEFAULT (getdate()),
    [idCreador] int NOT NULL,
    CONSTRAINT [PK__p_TareaR__3213E83F9FB2AAE5] PRIMARY KEY ([id])
);
GO
ALTER TABLE [dbo].[p_TareaRecurrencia] ADD CONSTRAINT [FK__p_TareaRe__idCre__11D56EA6] FOREIGN KEY ([idCreador]) REFERENCES [dbo].[p_Usuarios] ([idUsuario]);
GO
ALTER TABLE [dbo].[p_TareaRecurrencia] ADD CONSTRAINT [FK__p_TareaRe__idTar__10E14A6D] FOREIGN KEY ([idTarea]) REFERENCES [dbo].[p_Tareas] ([idTarea]);
GO

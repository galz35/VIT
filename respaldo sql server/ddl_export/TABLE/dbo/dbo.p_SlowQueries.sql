-- DDL Generado el 2026-01-25T20:04:27.516Z

CREATE TABLE [dbo].[p_SlowQueries] (
    [id] int IDENTITY(1,1) NOT NULL,
    [fecha] datetime NULL DEFAULT (getdate()),
    [duracionMS] int NOT NULL,
    [sqlText] nvarchar(max) NOT NULL,
    [parametros] nvarchar(max) NULL,
    [tipo] nvarchar(50) NULL,
    CONSTRAINT [PK__p_SlowQu__3213E83F6D9FC0DF] PRIMARY KEY ([id])
);
GO

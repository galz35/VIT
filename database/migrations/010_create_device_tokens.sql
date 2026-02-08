IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[p_DispositivosUsuario]') AND type in (N'U'))
BEGIN
    CREATE TABLE [dbo].[p_DispositivosUsuario](
        [idDispositivo] [int] IDENTITY(1,1) NOT NULL,
        [idUsuario] [int] NOT NULL,
        [tokenFCM] [nvarchar](500) NOT NULL,
        [plataforma] [nvarchar](50) NULL, -- 'android', 'ios', 'web'
        [fechaRegistro] [datetime2](7) DEFAULT GETDATE(),
        [ultimoUso] [datetime2](7) DEFAULT GETDATE(),
        [activo] [bit] DEFAULT 1,
        CONSTRAINT [PK_p_DispositivosUsuario] PRIMARY KEY CLUSTERED ([idDispositivo] ASC)
    );
    
    -- Índice para búsquedas rápidas por usuario (para enviar notificaciones)
    CREATE INDEX [IX_Dispositivos_Usuario] ON [dbo].[p_DispositivosUsuario] ([idUsuario], [activo]);
    
    -- Índice para evitar duplicados de tokens (si el token ya existe, solo actualizamos fecha)
    CREATE INDEX [IX_Dispositivos_Token] ON [dbo].[p_DispositivosUsuario] ([tokenFCM]);
END
GO

-- Procedimiento para registrar/actualizar dispositivo
CREATE OR ALTER PROCEDURE [dbo].[sp_Dispositivos_Registrar]
    @idUsuario INT,
    @tokenFCM NVARCHAR(500),
    @plataforma NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Si el token ya existe para este usuario, actualizamos fecha
    IF EXISTS (SELECT 1 FROM p_DispositivosUsuario WHERE tokenFCM = @tokenFCM AND idUsuario = @idUsuario)
    BEGIN
        UPDATE p_DispositivosUsuario
        SET ultimoUso = GETDATE(), activo = 1, plataforma = @plataforma
        WHERE tokenFCM = @tokenFCM AND idUsuario = @idUsuario;
    END
    ELSE
    BEGIN
        -- Si el token existe pero para OTRO usuario (cambio de cuenta en mismo cel), lo desactivamos del anterior
        UPDATE p_DispositivosUsuario SET activo = 0 WHERE tokenFCM = @tokenFCM;
        
        -- Insertamos nuevo registro
        INSERT INTO p_DispositivosUsuario (idUsuario, tokenFCM, plataforma)
        VALUES (@idUsuario, @tokenFCM, @plataforma);
    END
END
GO

-- Procedimiento para obtener tokens de un usuario
CREATE OR ALTER PROCEDURE [dbo].[sp_Dispositivos_ObtenerPorUsuario]
    @idUsuario INT
AS
BEGIN
    SET NOCOUNT ON;
    SELECT tokenFCM FROM p_DispositivosUsuario 
    WHERE idUsuario = @idUsuario AND activo = 1;
END
GO

-- DDL Generado el 2026-01-25T20:04:08.583Z


CREATE   PROCEDURE dbo.sp_Usuarios_ObtenerCarnetPorId
  @idUsuario INT
AS
BEGIN
  SET NOCOUNT ON;
  SELECT TOP 1 u.carnet
  FROM dbo.p_Usuarios u
  WHERE u.idUsuario = @idUsuario;
END;

GO

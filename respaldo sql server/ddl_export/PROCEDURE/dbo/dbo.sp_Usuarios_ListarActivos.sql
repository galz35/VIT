-- DDL Generado el 2026-01-25T20:04:08.401Z


CREATE   PROCEDURE dbo.sp_Usuarios_ListarActivos
AS
BEGIN
  SET NOCOUNT ON;
  SELECT *
  FROM dbo.p_Usuarios
  WHERE activo = 1
  ORDER BY nombreCompleto;
END;

GO

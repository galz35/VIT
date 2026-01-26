-- DDL Generado el 2026-01-25T20:04:05.692Z


CREATE   PROCEDURE dbo.sp_PermisoArea_Desactivar
  @id BIGINT
AS
BEGIN
  SET NOCOUNT ON;
  UPDATE dbo.p_permiso_area
  SET activo = 0
  WHERE id = @id;
END;

GO

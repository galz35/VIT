-- DDL Generado el 2026-01-25T20:04:02.301Z


CREATE   PROCEDURE dbo.sp_DelegacionVisibilidad_Desactivar
  @id BIGINT
AS
BEGIN
  SET NOCOUNT ON;
  UPDATE dbo.p_delegacion_visibilidad
  SET activo = 0
  WHERE id = @id;
END;

GO

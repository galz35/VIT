-- DDL Generado el 2026-01-25T20:04:04.106Z


CREATE   PROCEDURE dbo.sp_Organizacion_ContarEmpleadosPorNodo
AS
BEGIN
  SET NOCOUNT ON;

  SELECT
    CAST(u.idOrg AS NVARCHAR(50)) AS idOrg,
    COUNT(*) AS [count]
  FROM dbo.p_Usuarios u
  WHERE u.activo = 1
    AND u.idOrg IS NOT NULL
  GROUP BY u.idOrg;
END;

GO

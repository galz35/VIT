-- DDL Generado el 2026-01-25T20:04:09.052Z


/* ============================================
   VISIBILIDAD
   ============================================ */

/*
  sp_Visibilidad_ObtenerCarnets
  Devuelve carnets visibles para un solicitante:
  - el mismo solicitante
  - su jerarquía descendente por jefeCarnet (si usas esa relación)
  - permisos explícitos por empleado (p_permiso_empleado)
  - delegaciones activas (quien me delegó visibilidad) -> suma carnets visibles de esos delegantes también
  - (opcional) permisos por área: aquí lo dejamos como "carnet objetivo" no existe, entonces no agrega carnets
    (si tu área se resuelve a carnets por organigrama, lo podemos ampliar)
*/
CREATE   PROCEDURE dbo.sp_Visibilidad_ObtenerCarnets
  @carnetSolicitante NVARCHAR(50)
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @c NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@carnetSolicitante, N'')));
  IF (@c = N'')
  BEGIN
    SELECT CAST(N'' AS NVARCHAR(50)) AS carnet WHERE 1=0;
    RETURN;
  END

  /* 1) Delegantes activos: personas que me delegaron su vista */
  DECLARE @Delegantes TABLE (carnet NVARCHAR(50) PRIMARY KEY);

  INSERT INTO @Delegantes(carnet)
  SELECT DISTINCT LTRIM(RTRIM(dv.carnet_delegante))
  FROM dbo.p_delegacion_visibilidad dv
  WHERE LTRIM(RTRIM(dv.carnet_delegado)) = @c
    AND dv.activo = 1
    AND (dv.fecha_inicio IS NULL OR dv.fecha_inicio <= GETDATE())
    AND (dv.fecha_fin    IS NULL OR dv.fecha_fin    >= GETDATE())
    AND LTRIM(RTRIM(dv.carnet_delegante)) <> N'';

  /* 2) Actores efectivos = solicitante + delegantes */
  ;WITH Actores AS
  (
    SELECT @c AS carnet
    UNION ALL
    SELECT d.carnet FROM @Delegantes d
  ),
  /* 3) Jerarquía: subtree por jefeCarnet (si tu organigrama real es otro, cámbialo aquí) */
  Jerarquia AS
  (
    SELECT u.carnet
    FROM dbo.p_Usuarios u
    JOIN Actores a ON LTRIM(RTRIM(u.carnet)) = a.carnet

    UNION ALL

    SELECT u2.carnet
    FROM dbo.p_Usuarios u2
    JOIN Jerarquia j ON LTRIM(RTRIM(u2.jefeCarnet)) = LTRIM(RTRIM(j.carnet))
    WHERE u2.activo = 1
      AND LTRIM(RTRIM(u2.carnet)) <> N''
  ),
  /* 4) Permisos explícitos por empleado */
  PermisosEmpleado AS
  (
    SELECT pe.carnet_objetivo AS carnet
    FROM dbo.p_permiso_empleado pe
    JOIN Actores a ON LTRIM(RTRIM(pe.carnet_recibe)) = a.carnet
    WHERE pe.activo = 1
      AND LTRIM(RTRIM(pe.carnet_objetivo)) <> N''
  )
  SELECT DISTINCT LTRIM(RTRIM(x.carnet)) AS carnet
  FROM
  (
    SELECT carnet FROM Jerarquia
    UNION ALL
    SELECT carnet FROM PermisosEmpleado
  ) x
  WHERE LTRIM(RTRIM(x.carnet)) <> N'';
END;

GO

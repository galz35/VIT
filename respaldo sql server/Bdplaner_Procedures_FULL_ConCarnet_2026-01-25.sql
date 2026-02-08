-- Bdplaner - Extracto de Stored Procedures (dump)
-- Generado: 2026-01-25



/* ============================================================
   sp_Clarity_CrearTareaRapida
   ============================================================ */
CREATE    PROCEDURE sp_Clarity_CrearTareaRapida
    @titulo NVARCHAR(200),
    @idUsuario INT,
    @prioridad NVARCHAR(50) = 'Media',
    @tipo NVARCHAR(50) = 'Administrativa'
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO p_Tareas (nombre, idCreador, estado, prioridad, tipo, fechaCreacion, fechaActualizacion)
    VALUES (@titulo, @idUsuario, 'Pendiente', @prioridad, @tipo, GETDATE(), GETDATE());
    SELECT SCOPE_IDENTITY() AS idTarea;
END;


GO


/* ============================================================
   sp_Acceso_ObtenerArbol
   ============================================================ */
CREATE    PROCEDURE sp_Acceso_ObtenerArbol
AS
BEGIN
    SET NOCOUNT ON;
    SELECT id AS idorg, nombre, tipo, idPadre AS padre, orden, activo 
    FROM p_OrganizacionNodos WHERE activo = 1;
END;

GO


/* ============================================================
   sp_Tarea_Crear
   ============================================================ */
CREATE   PROCEDURE sp_Tarea_Crear
    @nombre NVARCHAR(200),
    @idUsuario INT,
    @idProyecto INT = NULL,
    @descripcion NVARCHAR(MAX) = NULL,
    @estado NVARCHAR(50) = 'Pendiente',
    @prioridad NVARCHAR(50) = 'Media',
    @esfuerzo NVARCHAR(20) = NULL,
    @tipo NVARCHAR(50) = 'Administrativa',
    @fechaInicioPlanificada DATETIME = NULL,
    @fechaObjetivo DATETIME = NULL,
    @porcentaje INT = 0,
    @orden INT = 0
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO p_Tareas (
        nombre, idCreador, idProyecto, descripcion, estado, prioridad, esfuerzo, tipo,
        fechaInicioPlanificada, fechaObjetivo, porcentaje, orden, fechaCreacion, fechaActualizacion
    )
    VALUES (
        @nombre, @idUsuario, @idProyecto, @descripcion, @estado, @prioridad, @esfuerzo, @tipo,
        @fechaInicioPlanificada, @fechaObjetivo, @porcentaje, @orden, GETDATE(), GETDATE()
    );

    SELECT SCOPE_IDENTITY() AS idTarea;
END
GO


/* ============================================================
   sp_Checkin_Crear
   ============================================================ */
CREATE   PROCEDURE sp_Checkin_Crear
    @idUsuario INT,
    @fecha DATE,
    @entregableTexto NVARCHAR(MAX),
    @nota NVARCHAR(MAX) = NULL,
    @linkEvidencia NVARCHAR(MAX) = NULL,
    @estadoAnimo NVARCHAR(50) = NULL,
    @idNodo INT = NULL,
    @energia INT = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- Upsert simple: Si ya existe checkin para ese usuario/fecha, actualizar. Si no, insertar.
    MERGE p_Checkins AS target
    USING (SELECT @idUsuario, @fecha) AS source (idUsuario, fecha)
    ON (target.idUsuario = source.idUsuario AND target.fecha = source.fecha)
    WHEN MATCHED THEN
        UPDATE SET 
            entregableTexto = @entregableTexto,
            nota = @nota,
            linkEvidencia = @linkEvidencia,
            estadoAnimo = @estadoAnimo,
            idNodo = @idNodo,
            energia = @energia,
            fechaCreacion = GETDATE() -- o fechaActualizacion si existiera
    WHEN NOT MATCHED THEN
        INSERT (idUsuario, fecha, entregableTexto, nota, linkEvidencia, estadoAnimo, idNodo, energia, fechaCreacion)
        VALUES (@idUsuario, @fecha, @entregableTexto, @nota, @linkEvidencia, @estadoAnimo, @idNodo, @energia, GETDATE());
    
    -- Devolver ID (si insertó) o buscarlo
    SELECT idCheckin FROM p_Checkins WHERE idUsuario = @idUsuario AND fecha = @fecha;
END
GO


/* ============================================================
   sp_Organizacion_ObtenerArbol
   ============================================================ */
CREATE   PROCEDURE dbo.sp_Organizacion_ObtenerArbol
AS
BEGIN
  SET NOCOUNT ON;

  SELECT
    id          AS idorg,
    nombre,
    tipo,
    idPadre     AS padre,
    orden,
    activo
  FROM dbo.p_OrganizacionNodos
  WHERE activo = 1
  ORDER BY orden, nombre;
END;

GO


/* ============================================================
   sp_Visibilidad_ObtenerCarnets
   ============================================================ */
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


/* ============================================================
   sp_UpsertAvanceMensual
   ============================================================ */
CREATE   PROCEDURE sp_UpsertAvanceMensual
    @idTarea INT,
    @anio INT,
    @mes INT,
    @porcentajeMes DECIMAL(5,2),
    @comentario NVARCHAR(MAX) = NULL,
    @idUsuario INT
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRAN;

    MERGE p_TareaAvanceMensual AS t
    USING (SELECT @idTarea idTarea, @anio anio, @mes mes) AS s
    ON (t.idTarea = s.idTarea AND t.anio = s.anio AND t.mes = s.mes)
    WHEN MATCHED THEN
        UPDATE SET porcentajeMes = @porcentajeMes,
                   comentario = @comentario,
                   idUsuarioActualizador = @idUsuario,
                   fechaActualizacion = GETDATE()
    WHEN NOT MATCHED THEN
        INSERT (idTarea, anio, mes, porcentajeMes, comentario, idUsuarioActualizador)
        VALUES (@idTarea, @anio, @mes, @porcentajeMes, @comentario, @idUsuario);

    -- Marca completada si acumulado >= 100
    DECLARE @acum DECIMAL(6,2);
    SELECT @acum = ISNULL(SUM(porcentajeMes), 0)
    FROM p_TareaAvanceMensual
    WHERE idTarea = @idTarea;

    -- Actualiza el porcentaje global en p_Tareas
    UPDATE p_Tareas 
    SET porcentaje = CASE WHEN @acum > 100 THEN 100 ELSE @acum END,
        estado = CASE WHEN @acum >= 100 THEN 'Hecha' ELSE estado END,
        fechaCompletado = CASE WHEN @acum >= 100 AND estado <> 'Hecha' THEN GETDATE() ELSE fechaCompletado END
    WHERE idTarea = @idTarea;

    COMMIT;
END
GO


/* ============================================================
   sp_CrearGrupoInicial
   ============================================================ */
CREATE   PROCEDURE sp_CrearGrupoInicial
    @idTarea INT
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE p_Tareas
    SET idGrupo = @idTarea, numeroParte = 1
    WHERE idTarea = @idTarea AND (idGrupo IS NULL OR idGrupo = 0);
END
GO


/* ============================================================
   sp_AgregarFaseGrupo
   ============================================================ */
CREATE   PROCEDURE sp_AgregarFaseGrupo
    @idGrupo INT,
    @idTareaNueva INT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @n INT;
    SELECT @n = ISNULL(MAX(numeroParte), 0) + 1
    FROM p_Tareas WHERE idGrupo = @idGrupo;

    UPDATE p_Tareas
    SET idGrupo = @idGrupo, numeroParte = @n
    WHERE idTarea = @idTareaNueva;
END
GO


/* ============================================================
   sp_ObtenerProyectos
   ============================================================ */
CREATE PROCEDURE sp_ObtenerProyectos
    @idUsuario INT,
    @filtroNombre NVARCHAR(100) = NULL,
    @filtroEstado NVARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- Lógica de visibilidad simplificada (Usuario ve lo que creó O donde está asignado)
    -- Se puede extender con lógica de jerarquía si se requiere
    SELECT DISTINCT p.*
    FROM p_Proyectos p
    LEFT JOIN p_Tareas t ON p.idProyecto = t.idProyecto
    LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
    WHERE 
        (p.idCreador = @idUsuario OR ta.idUsuario = @idUsuario)
        AND (@filtroNombre IS NULL OR p.nombre LIKE '%' + @filtroNombre + '%')
        AND (@filtroEstado IS NULL OR p.estado = @filtroEstado)
    ORDER BY p.fechaCreacion DESC;
END;
GO


/* ============================================================
   sp_Usuarios_ObtenerDetallesPorCarnets
   ============================================================ */
CREATE   PROCEDURE dbo.sp_Usuarios_ObtenerDetallesPorCarnets
  @CarnetsCsv NVARCHAR(MAX)
AS
BEGIN
  SET NOCOUNT ON;

  SELECT
    u.idUsuario,
    u.carnet,
    u.nombre,
    u.nombreCompleto,
    u.correo,
    u.cargo,
    u.departamento,
    u.orgDepartamento,
    u.orgGerencia,
    u.idOrg,
    u.jefeCarnet,
    u.jefeNombre,
    u.jefeCorreo,
    u.activo,
    u.gerencia,
    u.subgerencia,
    u.idRol,
    u.rolGlobal,
    r.nombre AS rolNombre
  FROM dbo.p_Usuarios u
  LEFT JOIN dbo.p_Roles r ON r.idRol = u.idRol
  JOIN dbo.fn_SplitCsv_NVarChar(@CarnetsCsv) s
    ON LTRIM(RTRIM(u.carnet)) = s.item
  ORDER BY u.nombreCompleto;
END;

GO


/* ============================================================
   sp_Usuarios_ObtenerCarnetPorId
   ============================================================ */
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


/* ============================================================
   sp_DelegacionVisibilidad_ObtenerActivas
   ============================================================ */
CREATE   PROCEDURE dbo.sp_DelegacionVisibilidad_ObtenerActivas
  @carnetDelegado NVARCHAR(50)
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @c NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@carnetDelegado, N'')));

  SELECT *
  FROM dbo.p_delegacion_visibilidad
  WHERE LTRIM(RTRIM(carnet_delegado)) = @c
    AND activo = 1
    AND (fecha_inicio IS NULL OR fecha_inicio <= GETDATE())
    AND (fecha_fin    IS NULL OR fecha_fin    >= GETDATE())
  ORDER BY creado_en DESC;
END;

GO


/* ============================================================
   sp_Usuarios_BuscarPorCarnet
   ============================================================ */
CREATE   PROCEDURE dbo.sp_Usuarios_BuscarPorCarnet
  @carnet NVARCHAR(50)
AS
BEGIN
  SET NOCOUNT ON;
  DECLARE @c NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@carnet, N'')));

  SELECT TOP 1 *
  FROM dbo.p_Usuarios
  WHERE LTRIM(RTRIM(carnet)) = @c;
END;

GO


/* ============================================================
   sp_Usuarios_BuscarPorCorreo
   ============================================================ */
CREATE   PROCEDURE dbo.sp_Usuarios_BuscarPorCorreo
  @correo NVARCHAR(200)
AS
BEGIN
  SET NOCOUNT ON;
  DECLARE @c NVARCHAR(200) = LOWER(LTRIM(RTRIM(ISNULL(@correo, N''))));

  SELECT TOP 1 *
  FROM dbo.p_Usuarios
  WHERE LOWER(LTRIM(RTRIM(correo))) = @c;
END;

GO


/* ============================================================
   sp_Usuarios_ListarActivos
   ============================================================ */
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


/* ============================================================
   sp_Usuarios_Buscar
   ============================================================ */
CREATE   PROCEDURE dbo.sp_Usuarios_Buscar
  @termino NVARCHAR(200),
  @limite  INT = 10
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @t NVARCHAR(210) = N'%' + ISNULL(@termino, N'') + N'%';

  SELECT TOP (@limite) *
  FROM dbo.p_Usuarios
  WHERE activo = 1
    AND (
         LOWER(nombreCompleto) LIKE LOWER(@t)
      OR LTRIM(RTRIM(carnet)) LIKE LTRIM(RTRIM(@t))
      OR LOWER(correo) LIKE LOWER(@t)
    )
  ORDER BY nombreCompleto;
END;

GO


/* ============================================================
   sp_Organizacion_SubarbolPreviewEmpleados
   ============================================================ */
CREATE   PROCEDURE dbo.sp_Organizacion_SubarbolPreviewEmpleados
  @idOrgRaiz NVARCHAR(50),
  @limite INT = 50
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @id NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@idOrgRaiz, N'')));
  IF (@id = N'')
  BEGIN
    SELECT TOP 0 * FROM dbo.p_Usuarios;
    RETURN;
  END

  ;WITH NodosSub AS
  (
    SELECT CAST(id AS NVARCHAR(50)) AS idorg
    FROM dbo.p_OrganizacionNodos
    WHERE CAST(id AS NVARCHAR(50)) = @id

    UNION ALL

    SELECT CAST(n.id AS NVARCHAR(50))
    FROM dbo.p_OrganizacionNodos n
    JOIN NodosSub ns ON CAST(n.idPadre AS NVARCHAR(50)) = ns.idorg
  )
  SELECT TOP (@limite)
    u.idUsuario, u.carnet, u.nombre, u.nombreCompleto, u.correo,
    u.cargo, u.departamento, u.orgDepartamento, u.orgGerencia,
    u.idOrg, u.jefeCarnet, u.jefeNombre, u.jefeCorreo, u.activo,
    u.gerencia, u.subgerencia, u.idRol, u.rolGlobal
  FROM dbo.p_Usuarios u
  JOIN NodosSub ns ON CAST(u.idOrg AS NVARCHAR(50)) = ns.idorg
  WHERE u.activo = 1
  ORDER BY u.nombreCompleto;
END;

GO


/* ============================================================
   sp_Organizacion_SubarbolContarEmpleados
   ============================================================ */
CREATE   PROCEDURE dbo.sp_Organizacion_SubarbolContarEmpleados
  @idOrgRaiz NVARCHAR(50)
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @id NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@idOrgRaiz, N'')));
  IF (@id = N'')
  BEGIN
    SELECT CAST(0 AS INT) AS total;
    RETURN;
  END

  ;WITH NodosSub AS
  (
    SELECT CAST(id AS NVARCHAR(50)) AS idorg
    FROM dbo.p_OrganizacionNodos
    WHERE CAST(id AS NVARCHAR(50)) = @id

    UNION ALL

    SELECT CAST(n.id AS NVARCHAR(50))
    FROM dbo.p_OrganizacionNodos n
    JOIN NodosSub ns ON CAST(n.idPadre AS NVARCHAR(50)) = ns.idorg
  )
  SELECT COUNT(*) AS total
  FROM dbo.p_Usuarios u
  JOIN NodosSub ns ON CAST(u.idOrg AS NVARCHAR(50)) = ns.idorg
  WHERE u.activo = 1;
END;

GO


/* ============================================================
   sp_DelegacionVisibilidad_Crear
   ============================================================ */
CREATE   PROCEDURE dbo.sp_DelegacionVisibilidad_Crear
  @delegante NVARCHAR(50),
  @delegado  NVARCHAR(50),
  @motivo    NVARCHAR(500) = NULL,
  @fecha_inicio NVARCHAR(50) = NULL,
  @fecha_fin    NVARCHAR(50) = NULL
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @d1 NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@delegante, N'')));
  DECLARE @d2 NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@delegado,  N'')));

  IF (@d1 = N'' OR @d2 = N'')
  BEGIN
    RAISERROR('Delegante/Delegado requerido.', 16, 1);
    RETURN;
  END

  DECLARE @fi DATETIME = TRY_CONVERT(DATETIME, @fecha_inicio);
  DECLARE @ff DATETIME = TRY_CONVERT(DATETIME, @fecha_fin);

  INSERT INTO dbo.p_delegacion_visibilidad
    (carnet_delegante, carnet_delegado, motivo, activo, creado_en, fecha_inicio, fecha_fin)
  VALUES
    (@d1, @d2, @motivo, 1, GETDATE(), @fi, @ff);

  SELECT SCOPE_IDENTITY() AS id;
END;

GO


/* ============================================================
   sp_DelegacionVisibilidad_Desactivar
   ============================================================ */
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


/* ============================================================
   sp_DelegacionVisibilidad_ListarActivas
   ============================================================ */
CREATE   PROCEDURE dbo.sp_DelegacionVisibilidad_ListarActivas
AS
BEGIN
  SET NOCOUNT ON;
  SELECT *
  FROM dbo.p_delegacion_visibilidad
  WHERE activo = 1
  ORDER BY creado_en DESC;
END;

GO


/* ============================================================
   sp_DelegacionVisibilidad_ListarPorDelegante
   ============================================================ */
CREATE   PROCEDURE dbo.sp_DelegacionVisibilidad_ListarPorDelegante
  @carnetDelegante NVARCHAR(50)
AS
BEGIN
  SET NOCOUNT ON;
  DECLARE @c NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@carnetDelegante, N'')));

  SELECT *
  FROM dbo.p_delegacion_visibilidad
  WHERE LTRIM(RTRIM(carnet_delegante)) = @c
  ORDER BY creado_en DESC;
END;

GO


/* ============================================================
   sp_PermisoArea_ObtenerActivosPorRecibe
   ============================================================ */
CREATE   PROCEDURE dbo.sp_PermisoArea_ObtenerActivosPorRecibe
  @carnetRecibe NVARCHAR(50)
AS
BEGIN
  SET NOCOUNT ON;
  DECLARE @c NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@carnetRecibe, N'')));

  SELECT *
  FROM dbo.p_permiso_area
  WHERE LTRIM(RTRIM(carnet_recibe)) = @c
    AND activo = 1
  ORDER BY creado_en DESC;
END;

GO


/* ============================================================
   sp_PermisoArea_Crear
   ============================================================ */
CREATE   PROCEDURE dbo.sp_PermisoArea_Crear
  @otorga  NVARCHAR(50) = NULL,
  @recibe  NVARCHAR(50),
  @idorg   BIGINT,
  @alcance NVARCHAR(50) = N'SUBARBOL',
  @motivo  NVARCHAR(500) = NULL,
  @fecha_fin NVARCHAR(50) = NULL
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @r NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@recibe, N'')));
  IF (@r = N'')
  BEGIN
    RAISERROR('carnet_recibe requerido.', 16, 1);
    RETURN;
  END

  DECLARE @ff DATETIME = TRY_CONVERT(DATETIME, @fecha_fin);

  INSERT INTO dbo.p_permiso_area
    (carnet_otorga, carnet_recibe, idorg_raiz, alcance, motivo, activo, creado_en, fecha_fin)
  VALUES
    (NULLIF(LTRIM(RTRIM(@otorga)), N''), @r, @idorg, @alcance, @motivo, 1, GETDATE(), @ff);

  SELECT SCOPE_IDENTITY() AS id;
END;

GO


/* ============================================================
   sp_PermisoArea_Desactivar
   ============================================================ */
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


/* ============================================================
   sp_PermisoArea_ListarActivos
   ============================================================ */
CREATE   PROCEDURE dbo.sp_PermisoArea_ListarActivos
AS
BEGIN
  SET NOCOUNT ON;
  SELECT *
  FROM dbo.p_permiso_area
  WHERE activo = 1
  ORDER BY creado_en DESC;
END;

GO


/* ============================================================
   sp_PermisoEmpleado_ObtenerActivosPorRecibe
   ============================================================ */
CREATE   PROCEDURE dbo.sp_PermisoEmpleado_ObtenerActivosPorRecibe
  @carnetRecibe NVARCHAR(50)
AS
BEGIN
  SET NOCOUNT ON;
  DECLARE @c NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@carnetRecibe, N'')));

  SELECT *
  FROM dbo.p_permiso_empleado
  WHERE LTRIM(RTRIM(carnet_recibe)) = @c
    AND activo = 1
  ORDER BY creado_en DESC;
END;

GO


/* ============================================================
   sp_PermisoEmpleado_Crear
   ============================================================ */
CREATE   PROCEDURE dbo.sp_PermisoEmpleado_Crear
  @otorga  NVARCHAR(50) = NULL,
  @recibe  NVARCHAR(50),
  @objetivo NVARCHAR(50),
  @tipo    NVARCHAR(50) = N'ALLOW',
  @motivo  NVARCHAR(500) = NULL
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @r NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@recibe, N'')));
  DECLARE @o NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@objetivo, N'')));

  IF (@r = N'' OR @o = N'')
  BEGIN
    RAISERROR('carnet_recibe y carnet_objetivo requeridos.', 16, 1);
    RETURN;
  END

  INSERT INTO dbo.p_permiso_empleado
    (carnet_otorga, carnet_recibe, carnet_objetivo, tipo_acceso, motivo, activo, creado_en)
  VALUES
    (NULLIF(LTRIM(RTRIM(@otorga)), N''), @r, @o, @tipo, @motivo, 1, GETDATE());

  SELECT SCOPE_IDENTITY() AS id;
END;

GO


/* ============================================================
   sp_PermisoEmpleado_Desactivar
   ============================================================ */
CREATE   PROCEDURE dbo.sp_PermisoEmpleado_Desactivar
  @id BIGINT
AS
BEGIN
  SET NOCOUNT ON;
  UPDATE dbo.p_permiso_empleado
  SET activo = 0
  WHERE id = @id;
END;

GO


/* ============================================================
   sp_PermisoEmpleado_ListarActivos
   ============================================================ */
CREATE   PROCEDURE dbo.sp_PermisoEmpleado_ListarActivos
AS
BEGIN
  SET NOCOUNT ON;
  SELECT *
  FROM dbo.p_permiso_empleado
  WHERE activo = 1
  ORDER BY creado_en DESC;
END;

GO


/* ============================================================
   sp_Organizacion_BuscarNodoPorId
   ============================================================ */
CREATE   PROCEDURE dbo.sp_Organizacion_BuscarNodoPorId
  @idorg BIGINT
AS
BEGIN
  SET NOCOUNT ON;

  SELECT TOP 1
    id          AS idorg,
    nombre,
    tipo,
    idPadre     AS padre,
    orden,
    activo
  FROM dbo.p_OrganizacionNodos
  WHERE id = @idorg;
END;

GO


/* ============================================================
   sp_Organizacion_BuscarNodos
   ============================================================ */
CREATE   PROCEDURE dbo.sp_Organizacion_BuscarNodos
  @termino NVARCHAR(200)
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @t NVARCHAR(210) = N'%' + ISNULL(@termino, N'') + N'%';

  SELECT TOP 50
    id          AS idorg,
    nombre,
    tipo,
    idPadre     AS padre,
    orden,
    activo
  FROM dbo.p_OrganizacionNodos
  WHERE LOWER(nombre) LIKE LOWER(@t)
  ORDER BY nombre;
END;

GO


/* ============================================================
   sp_Organizacion_ContarEmpleadosPorNodo
   ============================================================ */
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


/* ============================================================
   sp_Organizacion_ObtenerEmpleadosNodoDirecto
   ============================================================ */
CREATE   PROCEDURE dbo.sp_Organizacion_ObtenerEmpleadosNodoDirecto
  @idOrg INT,
  @limite INT = 50
AS
BEGIN
  SET NOCOUNT ON;

  SELECT TOP (@limite)
    u.idUsuario, u.carnet, u.nombre, u.nombreCompleto, u.correo,
    u.cargo, u.departamento, u.orgDepartamento, u.orgGerencia,
    u.idOrg, u.jefeCarnet, u.jefeNombre, u.jefeCorreo, u.activo,
    u.gerencia, u.subgerencia, u.idRol, u.rolGlobal
  FROM dbo.p_Usuarios u
  WHERE u.activo = 1
    AND u.idOrg = @idOrg
  ORDER BY u.nombreCompleto;
END;

GO


/* ============================================================
   sp_Organizacion_ContarEmpleadosNodoDirecto
   ============================================================ */
CREATE   PROCEDURE dbo.sp_Organizacion_ContarEmpleadosNodoDirecto
  @idOrg INT
AS
BEGIN
  SET NOCOUNT ON;

  SELECT COUNT(*) AS total
  FROM dbo.p_Usuarios u
  WHERE u.activo = 1
    AND u.idOrg = @idOrg;
END;

GO


/* ============================================================
   sp_Clarity_MiDia_Get
   ============================================================ */
CREATE   PROCEDURE dbo.sp_Clarity_MiDia_Get
(
  @IdUsuario INT,
  @Fecha     DATE
)
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  -- Buscamos el ID del último check-in anterior para los arrastrados (Solución para fines de semana)
  DECLARE @IdUltimoCheckin INT;
  SELECT TOP (1) @IdUltimoCheckin = idCheckin
  FROM dbo.p_Checkins
  WHERE idUsuario = @IdUsuario AND fecha < @Fecha
  ORDER BY fecha DESC, creadoEn DESC;

  -----------------------------------------------------------------------
  -- 1) Check-in hoy (Datos de la jornada actual)
  -----------------------------------------------------------------------
  SELECT TOP (1)
      c.idCheckin,
      c.fecha,
      c.entregableTexto,
      c.nota,
      c.creadoEn AS fechaCreacion -- Alias para el frontend
  FROM dbo.p_Checkins c
  WHERE c.idUsuario = @IdUsuario
    AND c.fecha     = @Fecha
  ORDER BY c.creadoEn DESC;

  -----------------------------------------------------------------------
  -- 2) Arrastrados (Tareas de la jornada anterior no finalizadas)
  -----------------------------------------------------------------------
  SELECT
      t.idTarea,
      t.nombre AS Titulo, -- Mapeamos 'nombre' a 'Titulo' para el Front
      t.estado,
      t.prioridad,
      t.esfuerzo,
      ISNULL(t.fechaActualizacion, t.fechaCreacion) AS fechaActualizacion,
      t.fechaObjetivo,
      t.idProyecto
  FROM dbo.p_Tareas t
  INNER JOIN dbo.p_CheckinTareas ct ON ct.idTarea = t.idTarea
  WHERE ct.idCheckin = @IdUltimoCheckin
    AND t.estado NOT IN ('Hecha','Descartada')
  ORDER BY
      CASE t.estado 
        WHEN 'EnCurso' THEN 1 
        WHEN 'Bloqueada' THEN 2 
        WHEN 'Revision' THEN 3 
        ELSE 4 END,
      CASE t.prioridad -- Orden lógico: Alta, Media, Baja
        WHEN 'Alta' THEN 1 
        WHEN 'Media' THEN 2 
        WHEN 'Baja' THEN 3 
        ELSE 4 END,
      ISNULL(t.fechaObjetivo, '9999-12-31') ASC;

  -----------------------------------------------------------------------
  -- 3) Mis bloqueos activos
  -----------------------------------------------------------------------
  SELECT
      b.idBloqueo,
      b.idTarea,
      t.nombre AS Tarea,
      b.descripcion AS Motivo,
      u.nombre AS BloqueadoPor,
      b.fechaCreacion,
      b.estado
  FROM dbo.p_Bloqueos b
  LEFT JOIN dbo.p_Usuarios u ON u.idUsuario = b.idUsuario
  LEFT JOIN dbo.p_Tareas   t ON t.idTarea   = b.idTarea
  WHERE b.idUsuario = @IdUsuario
    AND b.estado = 'Activo'
  ORDER BY b.fechaCreacion DESC;

  -----------------------------------------------------------------------
  -- 4) Selector de tareas pendientes (Backlog)
  -----------------------------------------------------------------------
  SELECT
      t.idTarea,
      t.nombre AS Titulo,
      t.estado,
      t.prioridad,
      t.esfuerzo,
      ISNULL(p.nombre, '(Personal)') AS Proyecto,
      t.fechaObjetivo,
      t.idProyecto
  FROM dbo.p_Tareas t
  INNER JOIN dbo.p_TareaAsignados ta ON ta.idTarea = t.idTarea
  LEFT  JOIN dbo.p_Proyectos p       ON p.idProyecto = t.idProyecto
  WHERE ta.idUsuario = @IdUsuario
    AND t.estado IN ('Pendiente','EnCurso','Bloqueada','Revision')
  ORDER BY
      CASE t.estado WHEN 'EnCurso' THEN 1 WHEN 'Bloqueada' THEN 2 ELSE 3 END,
      CASE t.prioridad WHEN 'Alta' THEN 1 WHEN 'Media' THEN 2 ELSE 3 END,
      ISNULL(t.fechaObjetivo, '9999-12-31') ASC;
END;

GO


/* ============================================================
   sp_Checkin_Upsert
   ============================================================ */
CREATE   PROCEDURE dbo.sp_Checkin_Upsert
(
    @idUsuario        INT,
    @fecha            DATE,
    @entregableTexto  NVARCHAR(4000),
    @nota             NVARCHAR(4000) = NULL,
    @linkEvidencia    NVARCHAR(1000) = NULL,
    @estadoAnimo      NVARCHAR(50) = NULL,
    @idNodo           INT = NULL,
    @tareas           dbo.TVP_CheckinTareas READONLY
)
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON; 

    BEGIN TRY
        BEGIN TRAN;

        DECLARE @idCheckin INT;

        SELECT @idCheckin = c.idCheckin
        FROM dbo.p_Checkins c WITH (UPDLOCK, HOLDLOCK)
        WHERE c.idUsuario = @idUsuario AND c.fecha = @fecha;

        IF @idCheckin IS NULL
        BEGIN
            INSERT INTO dbo.p_Checkins(idUsuario, fecha, entregableTexto, nota, linkEvidencia, estadoAnimo, idNodo)
            VALUES(@idUsuario, @fecha, @entregableTexto, @nota, @linkEvidencia, @estadoAnimo, @idNodo);

            SET @idCheckin = SCOPE_IDENTITY();
        END
        ELSE
        BEGIN
            UPDATE dbo.p_Checkins
            SET entregableTexto = @entregableTexto,
                nota = @nota,
                linkEvidencia = @linkEvidencia,
                estadoAnimo = @estadoAnimo,
                idNodo = @idNodo
            WHERE idCheckin = @idCheckin;
        END

        DELETE FROM dbo.p_CheckinTareas WHERE idCheckin = @idCheckin;

        INSERT INTO dbo.p_CheckinTareas(idCheckin, idTarea, tipo)
        SELECT
            @idCheckin,
            x.idTarea,
            x.tipo
        FROM (
            SELECT DISTINCT idTarea, tipo
            FROM @tareas
        ) x
        INNER JOIN dbo.p_Tareas t ON t.idTarea = x.idTarea
        WHERE t.activo = 1;

        COMMIT;

        SELECT @idCheckin AS idCheckin;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK;
        THROW;
    END CATCH
END

GO


/* ============================================================
   sp_Bloqueo_Crear
   ============================================================ */
CREATE   PROCEDURE dbo.sp_Bloqueo_Crear
(
    @idTarea          INT,
    @idOrigenUsuario  INT,
    @idDestinoUsuario INT = NULL,
    @destinoTexto     NVARCHAR(200) = NULL,
    @motivo           NVARCHAR(1000),
    @accionMitigacion NVARCHAR(1000) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    BEGIN TRY
        BEGIN TRAN;

        DECLARE @idBloqueo INT;

        SELECT TOP (1) @idBloqueo = b.idBloqueo
        FROM dbo.p_Bloqueos b WITH (UPDLOCK, HOLDLOCK)
        WHERE b.idTarea = @idTarea AND b.estado <> 'Resuelto'
        ORDER BY b.creadoEn DESC;

        IF @idBloqueo IS NULL
        BEGIN
            INSERT INTO dbo.p_Bloqueos
            (idTarea, idOrigenUsuario, idDestinoUsuario, destinoTexto, motivo, accionMitigacion, creadoEn, estado)
            VALUES
            (@idTarea, @idOrigenUsuario, @idDestinoUsuario, @destinoTexto, @motivo, @accionMitigacion, GETDATE(), 'Activo');

            SET @idBloqueo = SCOPE_IDENTITY();
        END

        SELECT @idBloqueo AS idBloqueo;
        
        -- Actualizar estado tarea (fuera del INSERT para asegurar que se ejecute incluso si devolvimos bloqueo existente, aunque la regla de negocio podria variar)
        -- En este caso, aseguramos que la tarea se marque bloqueada.
        UPDATE dbo.p_Tareas
        SET estado = 'Bloqueada'
        WHERE idTarea = @idTarea
          AND activo = 1
          AND estado NOT IN ('Hecha', 'Archivada');

        COMMIT;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK;
        THROW;
    END CATCH
END

GO


/* ============================================================
   sp_Tarea_CrearCompleta
   ============================================================ */
CREATE   PROCEDURE dbo.sp_Tarea_CrearCompleta
(
    @nombre NVARCHAR(255),
    @idUsuario INT,
    @idProyecto INT = NULL,
    @descripcion NVARCHAR(MAX) = NULL,
    @estado NVARCHAR(50) = 'Pendiente',
    @prioridad NVARCHAR(50) = 'Media',
    @esfuerzo NVARCHAR(50) = NULL,
    @tipo NVARCHAR(50) = 'Administrativa',
    @fechaInicioPlanificada DATETIME = NULL,
    @fechaObjetivo DATETIME = NULL,
    @porcentaje INT = 0,
    @orden INT = 0,
    @comportamiento NVARCHAR(50) = NULL,
    @idTareaPadre INT = NULL,
    @idResponsable INT = NULL,
    @requiereEvidencia BIT = 0,
    @idEntregable INT = NULL
)
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    BEGIN TRY
        BEGIN TRAN;

        IF @fechaObjetivo IS NULL
            SET @fechaObjetivo = GETDATE();

        IF @idTareaPadre IS NOT NULL
        BEGIN
            IF NOT EXISTS (
                SELECT 1
                FROM dbo.p_Tareas p
                WHERE p.idTarea = @idTareaPadre
                  AND p.activo = 1
            )
            BEGIN
                THROW 50001, 'idTareaPadre inválido o no existe.', 1;
            END
        END

        INSERT INTO dbo.p_Tareas (
            nombre, idCreador, idProyecto, descripcion, estado, prioridad, esfuerzo, tipo,
            fechaInicioPlanificada, fechaObjetivo, porcentaje, orden, comportamiento,
            idTareaPadre, requiereEvidencia, idEntregable, fechaCreacion, activo
        )
        VALUES (
            @nombre, @idUsuario, @idProyecto, @descripcion, @estado, @prioridad, @esfuerzo, @tipo,
            @fechaInicioPlanificada, @fechaObjetivo, @porcentaje, @orden, @comportamiento,
            @idTareaPadre, @requiereEvidencia, @idEntregable, GETDATE(), 1
        );

        DECLARE @idTarea INT = SCOPE_IDENTITY();

        IF @idResponsable IS NOT NULL AND @idResponsable <> @idUsuario
        BEGIN
            IF NOT EXISTS (
                SELECT 1 FROM dbo.p_TareaAsignados 
                WHERE idTarea = @idTarea AND idUsuario = @idResponsable AND tipo = 'Responsable'
            )
            BEGIN
                INSERT INTO dbo.p_TareaAsignados (idTarea, idUsuario, tipo, fechaAsignacion)
                VALUES (@idTarea, @idResponsable, 'Responsable', GETDATE());
            END
        END

        COMMIT;
        SELECT @idTarea AS idTarea;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK;
        THROW;
    END CATCH
END

GO
/*
 Bdplaner - Patch Carnet-First (v4)
 Fecha: 2026-01-25

 Objetivo:
 1) Asegurar que dbo.p_Usuarios.carnet esté lleno y sea único (carnet = identificador público).
 2) Backfill de columnas Carnet en tablas que ya las tienen (p_Tareas.creadorCarnet, p_Checkins.usuarioCarnet).
 3) Actualizar SPs existentes que INSERTan tareas para que escriban también el carnet (sin cambiar firma).
 4) Agregar SPs utilitarios/wrappers para operar por carnet.
 5) Crear SPs v2 para Checkins alineados a la tabla real (p_Checkins actual).

 NOTA:
 - No se cambia PK; idUsuario sigue como PK interno.
 - Ejecuta por secciones. Idempotente (en lo posible).
*/

SET NOCOUNT ON;

PRINT 'DB: ' + DB_NAME();
PRINT 'Inicio: ' + CONVERT(varchar(19), GETDATE(), 120);

--------------------------------------------------------------------------------
-- 0) REPORTES (antes)
--------------------------------------------------------------------------------
PRINT '--- Reporte: usuarios sin carnet (antes) ---';
SELECT TOP (50) u.idUsuario, u.username, u.correo, u.carnet
FROM dbo.p_Usuarios u
WHERE u.carnet IS NULL OR LTRIM(RTRIM(u.carnet)) = ''
ORDER BY u.idUsuario;

PRINT '--- Reporte: carnets duplicados (antes) ---';
SELECT u.carnet, COUNT(*) AS cantidad
FROM dbo.p_Usuarios u
WHERE u.carnet IS NOT NULL AND LTRIM(RTRIM(u.carnet)) <> ''
GROUP BY u.carnet
HAVING COUNT(*) > 1;

--------------------------------------------------------------------------------
-- 1) BACKFILL: p_Usuarios.carnet
--------------------------------------------------------------------------------
IF COL_LENGTH('dbo.p_Usuarios', 'carnet') IS NULL
BEGIN
    PRINT 'Agregando columna carnet en dbo.p_Usuarios...';
    ALTER TABLE dbo.p_Usuarios ADD carnet NVARCHAR(50) NULL;
END

/* Opcion A (rápida): si username ya es el carnet (numérico), copiarlo */
UPDATE u
SET u.carnet = LTRIM(RTRIM(u.username))
FROM dbo.p_Usuarios u
WHERE (u.carnet IS NULL OR LTRIM(RTRIM(u.carnet)) = '')
  AND u.username IS NOT NULL
  AND LTRIM(RTRIM(u.username)) <> ''
  AND LTRIM(RTRIM(u.username)) NOT LIKE '%[^0-9]%';

/* Opcion B (si tienes tabla/DB de empleados con carnet): ejemplo por correo
   Ajusta nombre de DB/tabla/columna según tu entorno.
*/
BEGIN TRY
    IF OBJECT_ID('SIGHO1.dbo.EMP2024', 'U') IS NOT NULL
    BEGIN
        PRINT 'Backfill carnet desde SIGHO1.dbo.EMP2024 por correo...';
        UPDATE u
        SET u.carnet = LTRIM(RTRIM(e.carnet))
        FROM dbo.p_Usuarios u
        INNER JOIN SIGHO1.dbo.EMP2024 e ON e.correo = u.correo
        WHERE (u.carnet IS NULL OR LTRIM(RTRIM(u.carnet)) = '')
          AND e.carnet IS NOT NULL AND LTRIM(RTRIM(e.carnet)) <> '';
    END
END TRY
BEGIN CATCH
    PRINT 'Aviso: no se pudo ejecutar Opcion B (SIGHO1.dbo.EMP2024). Continuando...';
END CATCH;

--------------------------------------------------------------------------------
-- 2) VALIDACIONES + INDICE UNICO (filtered)
--------------------------------------------------------------------------------
IF EXISTS (
    SELECT 1
    FROM dbo.p_Usuarios
    WHERE carnet IS NOT NULL AND LTRIM(RTRIM(carnet)) <> ''
    GROUP BY carnet
    HAVING COUNT(*) > 1
)
BEGIN
    RAISERROR('Hay carnets duplicados en dbo.p_Usuarios. Corrige antes de crear índice único.', 16, 1);
    RETURN;
END

IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'UX_p_Usuarios_carnet'
      AND object_id = OBJECT_ID('dbo.p_Usuarios')
)
BEGIN
    PRINT 'Creando índice único UX_p_Usuarios_carnet (filtered)...';
    CREATE UNIQUE NONCLUSTERED INDEX UX_p_Usuarios_carnet
    ON dbo.p_Usuarios (carnet)
    WHERE carnet IS NOT NULL AND LTRIM(RTRIM(carnet)) <> '';
END
ELSE
BEGIN
    PRINT 'Índice UX_p_Usuarios_carnet ya existe.';
END

--------------------------------------------------------------------------------
-- 3) BACKFILL: columnas Carnet en tablas que ya las tienen
--------------------------------------------------------------------------------
/* p_Tareas.creadorCarnet */
IF COL_LENGTH('dbo.p_Tareas', 'creadorCarnet') IS NOT NULL
BEGIN
    PRINT 'Backfill p_Tareas.creadorCarnet desde p_Usuarios...';
    UPDATE t
    SET t.creadorCarnet = u.carnet
    FROM dbo.p_Tareas t
    INNER JOIN dbo.p_Usuarios u ON u.idUsuario = t.idCreador
    WHERE (t.creadorCarnet IS NULL OR LTRIM(RTRIM(t.creadorCarnet)) = '')
      AND u.carnet IS NOT NULL AND LTRIM(RTRIM(u.carnet)) <> '';
END

/* p_Checkins.usuarioCarnet */
IF COL_LENGTH('dbo.p_Checkins', 'usuarioCarnet') IS NOT NULL
BEGIN
    PRINT 'Backfill p_Checkins.usuarioCarnet desde p_Usuarios...';
    UPDATE c
    SET c.usuarioCarnet = u.carnet
    FROM dbo.p_Checkins c
    INNER JOIN dbo.p_Usuarios u ON u.idUsuario = c.idUsuario
    WHERE (c.usuarioCarnet IS NULL OR LTRIM(RTRIM(c.usuarioCarnet)) = '')
      AND u.carnet IS NOT NULL AND LTRIM(RTRIM(u.carnet)) <> '';
END

--------------------------------------------------------------------------------
-- 4) SP utilitario: obtener idUsuario por carnet
--------------------------------------------------------------------------------
IF OBJECT_ID('dbo.sp_Usuarios_ObtenerIdPorCarnet', 'P') IS NULL
    EXEC('CREATE PROCEDURE dbo.sp_Usuarios_ObtenerIdPorCarnet AS BEGIN SET NOCOUNT ON; END');
GO

ALTER PROCEDURE dbo.sp_Usuarios_ObtenerIdPorCarnet
    @carnet NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT TOP (1) u.idUsuario
    FROM dbo.p_Usuarios u
    WHERE u.carnet = LTRIM(RTRIM(@carnet));
END
GO

--------------------------------------------------------------------------------
-- 5) ACTUALIZAR SPs existentes (TAREAS) para que escriban creadorCarnet
--    (no cambia la firma; mantiene @idUsuario como siempre)
--------------------------------------------------------------------------------

/* sp_Tarea_Crear: agrega creadorCarnet */
ALTER PROCEDURE dbo.sp_Tarea_Crear
    @nombre NVARCHAR(255),
    @descripcion NVARCHAR(MAX) = NULL,
    @idUsuario INT,
    @idProyecto INT = NULL,
    @prioridad NVARCHAR(50) = NULL,
    @fechaVencimiento DATETIME = NULL,
    @tipo NVARCHAR(50) = NULL,
    @tipoTarea NVARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @creadorCarnet NVARCHAR(50);
    SELECT @creadorCarnet = u.carnet
    FROM dbo.p_Usuarios u
    WHERE u.idUsuario = @idUsuario;

    INSERT INTO dbo.p_Tareas (
        nombre, descripcion, estado, prioridad, fechaVencimiento,
        fechaCreacion, fechaActualizacion,
        idCreador, creadorCarnet, idProyecto,
        tipo, tipoTarea,
        idAsignado
    )
    VALUES (
        @nombre, @descripcion, 'Pendiente', @prioridad, @fechaVencimiento,
        GETDATE(), GETDATE(),
        @idUsuario, @creadorCarnet, @idProyecto,
        @tipo, @tipoTarea,
        @idUsuario
    );

    SELECT CAST(SCOPE_IDENTITY() AS INT) AS idTarea;
END
GO

/* sp_Clarity_CrearTareaRapida: agrega creadorCarnet */
ALTER PROCEDURE dbo.sp_Clarity_CrearTareaRapida
    @idUsuario INT,
    @idProyecto INT,
    @nombre NVARCHAR(255),
    @descripcion NVARCHAR(MAX) = NULL,
    @prioridad NVARCHAR(20) = 'Media',
    @fechaVencimiento DATETIME = NULL,
    @tipo NVARCHAR(50) = NULL,
    @tipoTarea NVARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @creadorCarnet NVARCHAR(50);
    SELECT @creadorCarnet = u.carnet
    FROM dbo.p_Usuarios u
    WHERE u.idUsuario = @idUsuario;

    INSERT INTO dbo.p_Tareas (
        nombre, descripcion, estado, prioridad, fechaVencimiento,
        fechaCreacion, fechaActualizacion,
        idCreador, creadorCarnet, idProyecto,
        tipo, tipoTarea,
        idAsignado, esRapida
    )
    VALUES (
        @nombre, @descripcion, 'Pendiente', @prioridad, @fechaVencimiento,
        GETDATE(), GETDATE(),
        @idUsuario, @creadorCarnet, @idProyecto,
        @tipo, @tipoTarea,
        @idUsuario, 1
    );

    SELECT CAST(SCOPE_IDENTITY() AS INT) AS idTarea;
END
GO

/* sp_Tarea_CrearCompleta: agrega creadorCarnet + fechaActualizacion en INSERT */
ALTER PROCEDURE dbo.sp_Tarea_CrearCompleta
    @idUsuario INT,
    @idProyecto INT,
    @nombre NVARCHAR(255),
    @descripcion NVARCHAR(MAX) = NULL,
    @estado NVARCHAR(50) = 'Pendiente',
    @prioridad NVARCHAR(50) = 'Media',
    @esfuerzo NVARCHAR(50) = NULL,
    @tipo NVARCHAR(50) = NULL,
    @fechaInicioPlanificada DATE = NULL,
    @fechaObjetivo DATE = NULL,
    @porcentaje INT = 0,
    @orden INT = 0,
    @comportamiento NVARCHAR(50) = NULL,
    @idTareaPadre INT = NULL,
    @requiereEvidencia BIT = 0,
    @idEntregable INT = NULL,
    @idResponsable INT = NULL,
    @AsignadosCsv NVARCHAR(MAX) = NULL,
    @ResponsablesCsv NVARCHAR(MAX) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @creadorCarnet NVARCHAR(50);
    SELECT @creadorCarnet = u.carnet
    FROM dbo.p_Usuarios u
    WHERE u.idUsuario = @idUsuario;

    BEGIN TRY
        BEGIN TRAN;

        INSERT INTO dbo.p_Tareas (
            nombre, idCreador, creadorCarnet, idProyecto, descripcion, estado, prioridad, esfuerzo, tipo,
            fechaInicioPlanificada, fechaObjetivo, porcentaje, orden, comportamiento,
            idTareaPadre, requiereEvidencia, idEntregable,
            fechaCreacion, fechaActualizacion, activo
        )
        VALUES (
            @nombre, @idUsuario, @creadorCarnet, @idProyecto, @descripcion, @estado, @prioridad, @esfuerzo, @tipo,
            @fechaInicioPlanificada, @fechaObjetivo, @porcentaje, @orden, @comportamiento,
            @idTareaPadre, @requiereEvidencia, @idEntregable,
            GETDATE(), GETDATE(), 1
        );

        DECLARE @idTarea INT = SCOPE_IDENTITY();

        IF @idResponsable IS NOT NULL AND @idResponsable <> @idUsuario
        BEGIN
            IF NOT EXISTS (
                SELECT 1 FROM dbo.p_TareaAsignados 
                WHERE idTarea = @idTarea AND idUsuario = @idResponsable AND tipo = 'Responsable'
            )
            BEGIN
                INSERT INTO dbo.p_TareaAsignados (idTarea, idUsuario, tipo)
                VALUES (@idTarea, @idResponsable, 'Responsable');
            END
        END

        -- Insertar asignados (CSV de idUsuario)
        IF @AsignadosCsv IS NOT NULL AND LTRIM(RTRIM(@AsignadosCsv)) <> ''
        BEGIN
            ;WITH Asignados AS (
                SELECT DISTINCT TRY_CAST(LTRIM(RTRIM(value)) AS INT) AS idUsuario
                FROM STRING_SPLIT(@AsignadosCsv, ',')
                WHERE LTRIM(RTRIM(value)) <> ''
            )
            INSERT INTO dbo.p_TareaAsignados (idTarea, idUsuario, tipo)
            SELECT @idTarea, a.idUsuario, 'Asignado'
            FROM Asignados a
            WHERE a.idUsuario IS NOT NULL
              AND NOT EXISTS (
                  SELECT 1 FROM dbo.p_TareaAsignados ta
                  WHERE ta.idTarea = @idTarea AND ta.idUsuario = a.idUsuario AND ta.tipo = 'Asignado'
              );
        END

        -- Insertar responsables (CSV de idUsuario)
        IF @ResponsablesCsv IS NOT NULL AND LTRIM(RTRIM(@ResponsablesCsv)) <> ''
        BEGIN
            ;WITH Responsables AS (
                SELECT DISTINCT TRY_CAST(LTRIM(RTRIM(value)) AS INT) AS idUsuario
                FROM STRING_SPLIT(@ResponsablesCsv, ',')
                WHERE LTRIM(RTRIM(value)) <> ''
            )
            INSERT INTO dbo.p_TareaAsignados (idTarea, idUsuario, tipo)
            SELECT @idTarea, r.idUsuario, 'Responsable'
            FROM Responsables r
            WHERE r.idUsuario IS NOT NULL
              AND NOT EXISTS (
                  SELECT 1 FROM dbo.p_TareaAsignados ta
                  WHERE ta.idTarea = @idTarea AND ta.idUsuario = r.idUsuario AND ta.tipo = 'Responsable'
              );
        END

        COMMIT;
        SELECT @idTarea AS idTarea;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK;
        THROW;
    END CATCH
END
GO

--------------------------------------------------------------------------------
-- 6) SPs v2 Checkins (alineados a dbo.p_Checkins actual)
--    (NO rompe los SPs viejos: crea v2 nuevos)
--------------------------------------------------------------------------------

IF OBJECT_ID('dbo.sp_Checkin_Upsert_v2', 'P') IS NULL
    EXEC('CREATE PROCEDURE dbo.sp_Checkin_Upsert_v2 AS BEGIN SET NOCOUNT ON; END');
GO
ALTER PROCEDURE dbo.sp_Checkin_Upsert_v2
    @carnetUsuario NVARCHAR(50),
    @fecha DATE,
    @prioridad1 NVARCHAR(255) = NULL,
    @prioridad2 NVARCHAR(255) = NULL,
    @prioridad3 NVARCHAR(255) = NULL,
    @entregableTexto NVARCHAR(MAX) = NULL,
    @nota NVARCHAR(MAX) = NULL,
    @energia INT = NULL,
    @estadoAnimo INT = NULL,
    @comentarios NVARCHAR(MAX) = NULL,
    @estado NVARCHAR(50) = NULL,
    @linkEvidencia NVARCHAR(500) = NULL,
    @idNodo INT = NULL
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @idUsuario INT;
    SELECT @idUsuario = u.idUsuario
    FROM dbo.p_Usuarios u
    WHERE u.carnet = LTRIM(RTRIM(@carnetUsuario));

    IF @idUsuario IS NULL
    BEGIN
        RAISERROR('Carnet no encontrado en p_Usuarios.', 16, 1);
        RETURN;
    END

    DECLARE @idCheckin INT;

    SELECT @idCheckin = c.idCheckin
    FROM dbo.p_Checkins c
    WHERE c.idUsuario = @idUsuario AND c.fecha = @fecha;

    IF @idCheckin IS NULL
    BEGIN
        INSERT INTO dbo.p_Checkins (
            idUsuario, usuarioCarnet, fecha,
            prioridad1, prioridad2, prioridad3,
            entregableTexto, nota,
            energia, estadoAnimo, comentarios, estado,
            linkEvidencia, idNodo
        )
        VALUES (
            @idUsuario, @carnetUsuario, @fecha,
            @prioridad1, @prioridad2, @prioridad3,
            @entregableTexto, @nota,
            @energia, @estadoAnimo, @comentarios, @estado,
            @linkEvidencia, @idNodo
        );

        SET @idCheckin = SCOPE_IDENTITY();
    END
    ELSE
    BEGIN
        UPDATE dbo.p_Checkins
        SET usuarioCarnet   = COALESCE(@carnetUsuario, usuarioCarnet),
            prioridad1      = @prioridad1,
            prioridad2      = @prioridad2,
            prioridad3      = @prioridad3,
            entregableTexto = @entregableTexto,
            nota            = @nota,
            energia         = @energia,
            estadoAnimo     = @estadoAnimo,
            comentarios     = @comentarios,
            estado          = @estado,
            linkEvidencia   = @linkEvidencia,
            idNodo          = @idNodo
        WHERE idCheckin = @idCheckin;
    END

    SELECT @idCheckin AS idCheckin;
END
GO

--------------------------------------------------------------------------------
-- 7) WRAPPERS Carnet-First (para no pasar idUsuario desde API)
--------------------------------------------------------------------------------

/* sp_ObtenerProyectos_Carnet: llama a sp_ObtenerProyectos resolviendo idUsuario */
IF OBJECT_ID('dbo.sp_ObtenerProyectos_Carnet', 'P') IS NULL
    EXEC('CREATE PROCEDURE dbo.sp_ObtenerProyectos_Carnet AS BEGIN SET NOCOUNT ON; END');
GO
ALTER PROCEDURE dbo.sp_ObtenerProyectos_Carnet
    @carnetSolicitante NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @idUsuario INT;
    SELECT @idUsuario = u.idUsuario
    FROM dbo.p_Usuarios u
    WHERE u.carnet = LTRIM(RTRIM(@carnetSolicitante));

    IF @idUsuario IS NULL
    BEGIN
        RAISERROR('Carnet no encontrado en p_Usuarios.', 16, 1);
        RETURN;
    END

    EXEC dbo.sp_ObtenerProyectos @idUsuario = @idUsuario;
END
GO

/* sp_Clarity_MiDia_Get_Carnet */
IF OBJECT_ID('dbo.sp_Clarity_MiDia_Get_Carnet', 'P') IS NULL
    EXEC('CREATE PROCEDURE dbo.sp_Clarity_MiDia_Get_Carnet AS BEGIN SET NOCOUNT ON; END');
GO
ALTER PROCEDURE dbo.sp_Clarity_MiDia_Get_Carnet
    @carnetSolicitante NVARCHAR(50),
    @fecha DATE
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @idUsuario INT;
    SELECT @idUsuario = u.idUsuario
    FROM dbo.p_Usuarios u
    WHERE u.carnet = LTRIM(RTRIM(@carnetSolicitante));

    IF @idUsuario IS NULL
    BEGIN
        RAISERROR('Carnet no encontrado en p_Usuarios.', 16, 1);
        RETURN;
    END

    EXEC dbo.sp_Clarity_MiDia_Get @idUsuario = @idUsuario, @fecha = @fecha;
END
GO

/* sp_Tarea_Crear_Carnet */
IF OBJECT_ID('dbo.sp_Tarea_Crear_Carnet', 'P') IS NULL
    EXEC('CREATE PROCEDURE dbo.sp_Tarea_Crear_Carnet AS BEGIN SET NOCOUNT ON; END');
GO
ALTER PROCEDURE dbo.sp_Tarea_Crear_Carnet
    @carnetCreador NVARCHAR(50),
    @nombre NVARCHAR(255),
    @descripcion NVARCHAR(MAX) = NULL,
    @idProyecto INT = NULL,
    @prioridad NVARCHAR(50) = NULL,
    @fechaVencimiento DATETIME = NULL,
    @tipo NVARCHAR(50) = NULL,
    @tipoTarea NVARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @idUsuario INT;
    SELECT @idUsuario = u.idUsuario
    FROM dbo.p_Usuarios u
    WHERE u.carnet = LTRIM(RTRIM(@carnetCreador));

    IF @idUsuario IS NULL
    BEGIN
        RAISERROR('Carnet no encontrado en p_Usuarios.', 16, 1);
        RETURN;
    END

    EXEC dbo.sp_Tarea_Crear
        @nombre = @nombre,
        @descripcion = @descripcion,
        @idUsuario = @idUsuario,
        @idProyecto = @idProyecto,
        @prioridad = @prioridad,
        @fechaVencimiento = @fechaVencimiento,
        @tipo = @tipo,
        @tipoTarea = @tipoTarea;
END
GO

/* sp_Clarity_CrearTareaRapida_Carnet */
IF OBJECT_ID('dbo.sp_Clarity_CrearTareaRapida_Carnet', 'P') IS NULL
    EXEC('CREATE PROCEDURE dbo.sp_Clarity_CrearTareaRapida_Carnet AS BEGIN SET NOCOUNT ON; END');
GO
ALTER PROCEDURE dbo.sp_Clarity_CrearTareaRapida_Carnet
    @carnetCreador NVARCHAR(50),
    @idProyecto INT,
    @nombre NVARCHAR(255),
    @descripcion NVARCHAR(MAX) = NULL,
    @prioridad NVARCHAR(20) = 'Media',
    @fechaVencimiento DATETIME = NULL,
    @tipo NVARCHAR(50) = NULL,
    @tipoTarea NVARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @idUsuario INT;
    SELECT @idUsuario = u.idUsuario
    FROM dbo.p_Usuarios u
    WHERE u.carnet = LTRIM(RTRIM(@carnetCreador));

    IF @idUsuario IS NULL
    BEGIN
        RAISERROR('Carnet no encontrado en p_Usuarios.', 16, 1);
        RETURN;
    END

    EXEC dbo.sp_Clarity_CrearTareaRapida
        @idUsuario = @idUsuario,
        @idProyecto = @idProyecto,
        @nombre = @nombre,
        @descripcion = @descripcion,
        @prioridad = @prioridad,
        @fechaVencimiento = @fechaVencimiento,
        @tipo = @tipo,
        @tipoTarea = @tipoTarea;
END
GO

/* sp_UpsertAvanceMensual_Carnet */
IF OBJECT_ID('dbo.sp_UpsertAvanceMensual_Carnet', 'P') IS NULL
    EXEC('CREATE PROCEDURE dbo.sp_UpsertAvanceMensual_Carnet AS BEGIN SET NOCOUNT ON; END');
GO
ALTER PROCEDURE dbo.sp_UpsertAvanceMensual_Carnet
    @carnetActualizador NVARCHAR(50),
    @idTarea INT,
    @anio INT,
    @mes INT,
    @porcentajeMes DECIMAL(5,2),
    @comentario NVARCHAR(MAX) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @idUsuario INT;
    SELECT @idUsuario = u.idUsuario
    FROM dbo.p_Usuarios u
    WHERE u.carnet = LTRIM(RTRIM(@carnetActualizador));

    IF @idUsuario IS NULL
    BEGIN
        RAISERROR('Carnet no encontrado en p_Usuarios.', 16, 1);
        RETURN;
    END

    EXEC dbo.sp_UpsertAvanceMensual
        @idTarea = @idTarea,
        @anio = @anio,
        @mes = @mes,
        @porcentajeMes = @porcentajeMes,
        @comentario = @comentario,
        @idUsuario = @idUsuario;
END
GO

/* sp_Tarea_CrearCompleta_Carnet: recibe carnets para responsable/asignados/responsables */
IF OBJECT_ID('dbo.sp_Tarea_CrearCompleta_Carnet', 'P') IS NULL
    EXEC('CREATE PROCEDURE dbo.sp_Tarea_CrearCompleta_Carnet AS BEGIN SET NOCOUNT ON; END');
GO
ALTER PROCEDURE dbo.sp_Tarea_CrearCompleta_Carnet
    @carnetCreador NVARCHAR(50),
    @idProyecto INT,
    @nombre NVARCHAR(255),
    @descripcion NVARCHAR(MAX) = NULL,
    @estado NVARCHAR(50) = 'Pendiente',
    @prioridad NVARCHAR(50) = 'Media',
    @esfuerzo NVARCHAR(50) = NULL,
    @tipo NVARCHAR(50) = NULL,
    @fechaInicioPlanificada DATE = NULL,
    @fechaObjetivo DATE = NULL,
    @porcentaje INT = 0,
    @orden INT = 0,
    @comportamiento NVARCHAR(50) = NULL,
    @idTareaPadre INT = NULL,
    @requiereEvidencia BIT = 0,
    @idEntregable INT = NULL,
    @carnetResponsable NVARCHAR(50) = NULL,
    @AsignadosCarnetsCsv NVARCHAR(MAX) = NULL,
    @ResponsablesCarnetsCsv NVARCHAR(MAX) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @idUsuario INT, @idResponsable INT = NULL;

    SELECT @idUsuario = u.idUsuario
    FROM dbo.p_Usuarios u
    WHERE u.carnet = LTRIM(RTRIM(@carnetCreador));

    IF @idUsuario IS NULL
    BEGIN
        RAISERROR('Carnet creador no encontrado en p_Usuarios.', 16, 1);
        RETURN;
    END

    IF @carnetResponsable IS NOT NULL AND LTRIM(RTRIM(@carnetResponsable)) <> ''
    BEGIN
        SELECT @idResponsable = u.idUsuario
        FROM dbo.p_Usuarios u
        WHERE u.carnet = LTRIM(RTRIM(@carnetResponsable));

        IF @idResponsable IS NULL
        BEGIN
            RAISERROR('Carnet responsable no encontrado en p_Usuarios.', 16, 1);
            RETURN;
        END
    END

    DECLARE @AsignadosCsv NVARCHAR(MAX) = NULL;
    DECLARE @ResponsablesCsv NVARCHAR(MAX) = NULL;

    IF @AsignadosCarnetsCsv IS NOT NULL AND LTRIM(RTRIM(@AsignadosCarnetsCsv)) <> ''
    BEGIN
        SELECT @AsignadosCsv = STUFF((
            SELECT ',' + CAST(u.idUsuario AS VARCHAR(20))
            FROM (
                SELECT DISTINCT LTRIM(RTRIM(value)) AS carnet
                FROM STRING_SPLIT(@AsignadosCarnetsCsv, ',')
                WHERE LTRIM(RTRIM(value)) <> ''
            ) s
            INNER JOIN dbo.p_Usuarios u ON u.carnet = s.carnet
            FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 1, '');
    END

    IF @ResponsablesCarnetsCsv IS NOT NULL AND LTRIM(RTRIM(@ResponsablesCarnetsCsv)) <> ''
    BEGIN
        SELECT @ResponsablesCsv = STUFF((
            SELECT ',' + CAST(u.idUsuario AS VARCHAR(20))
            FROM (
                SELECT DISTINCT LTRIM(RTRIM(value)) AS carnet
                FROM STRING_SPLIT(@ResponsablesCarnetsCsv, ',')
                WHERE LTRIM(RTRIM(value)) <> ''
            ) s
            INNER JOIN dbo.p_Usuarios u ON u.carnet = s.carnet
            FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 1, '');
    END

    EXEC dbo.sp_Tarea_CrearCompleta
        @idUsuario = @idUsuario,
        @idProyecto = @idProyecto,
        @nombre = @nombre,
        @descripcion = @descripcion,
        @estado = @estado,
        @prioridad = @prioridad,
        @esfuerzo = @esfuerzo,
        @tipo = @tipo,
        @fechaInicioPlanificada = @fechaInicioPlanificada,
        @fechaObjetivo = @fechaObjetivo,
        @porcentaje = @porcentaje,
        @orden = @orden,
        @comportamiento = @comportamiento,
        @idTareaPadre = @idTareaPadre,
        @requiereEvidencia = @requiereEvidencia,
        @idEntregable = @idEntregable,
        @idResponsable = @idResponsable,
        @AsignadosCsv = @AsignadosCsv,
        @ResponsablesCsv = @ResponsablesCsv;
END
GO

--------------------------------------------------------------------------------
-- 8) REPORTES (después)
--------------------------------------------------------------------------------
PRINT '--- Reporte: usuarios sin carnet (despues) ---';
SELECT TOP (50) u.idUsuario, u.username, u.correo, u.carnet
FROM dbo.p_Usuarios u
WHERE u.carnet IS NULL OR LTRIM(RTRIM(u.carnet)) = ''
ORDER BY u.idUsuario;

PRINT '--- Reporte: carnets duplicados (despues) ---';
SELECT u.carnet, COUNT(*) AS cantidad
FROM dbo.p_Usuarios u
WHERE u.carnet IS NOT NULL AND LTRIM(RTRIM(u.carnet)) <> ''
GROUP BY u.carnet
HAVING COUNT(*) > 1;

PRINT 'Fin: ' + CONVERT(varchar(19), GETDATE(), 120);

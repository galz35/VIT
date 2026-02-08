# Bdplaner - Stored Procedures: lo que tiene vs lo que debe tener

## Lo que tiene (según ESTRUCTURA_REAL_COMPLETA)

### Acceso (1)

- sp_Acceso_ObtenerArbol  
  Params: ``

### Usuarios (6)

- sp_Usuarios_Buscar  
  Params: `@limite, @t, @termino`
- sp_Usuarios_BuscarPorCarnet  
  Params: `@c, @carnet`
- sp_Usuarios_BuscarPorCorreo  
  Params: `@c, @correo`
- sp_Usuarios_ListarActivos  
  Params: ``
- sp_Usuarios_ObtenerCarnetPorId  
  Params: `@idUsuario`
- sp_Usuarios_ObtenerDetallesPorCarnets  
  Params: `@CarnetsCsv`

### Permisos (8)

- sp_PermisoArea_Crear  
  Params: `@alcance, @fecha_fin, @ff, @idorg, @motivo, @otorga, @r, @recibe`
- sp_PermisoArea_Desactivar  
  Params: `@id`
- sp_PermisoArea_ListarActivos  
  Params: ``
- sp_PermisoArea_ObtenerActivosPorRecibe  
  Params: `@c, @carnetRecibe`
- sp_PermisoEmpleado_Crear  
  Params: `@motivo, @o, @objetivo, @otorga, @r, @recibe, @tipo`
- sp_PermisoEmpleado_Desactivar  
  Params: `@id`
- sp_PermisoEmpleado_ListarActivos  
  Params: ``
- sp_PermisoEmpleado_ObtenerActivosPorRecibe  
  Params: `@c, @carnetRecibe`

### Delegaciones (5)

- sp_DelegacionVisibilidad_Crear  
  Params: `@d1, @d2, @delegado, @delegante, @fecha_fin, @fecha_inicio, @ff, @fi, @motivo`
- sp_DelegacionVisibilidad_Desactivar  
  Params: `@id`
- sp_DelegacionVisibilidad_ListarActivas  
  Params: ``
- sp_DelegacionVisibilidad_ListarPorDelegante  
  Params: `@c, @carnetDelegante`
- sp_DelegacionVisibilidad_ObtenerActivas  
  Params: `@c, @carnetDelegado`

### Organización (10)

- sp_AgregarFaseGrupo  
  Params: `@idGrupo, @idTareaNueva, @n`
- sp_CrearGrupoInicial  
  Params: `@idTarea`
- sp_Organizacion_BuscarNodoPorId  
  Params: `@idorg`
- sp_Organizacion_BuscarNodos  
  Params: `@t, @termino`
- sp_Organizacion_ContarEmpleadosNodoDirecto  
  Params: `@idOrg`
- sp_Organizacion_ContarEmpleadosPorNodo  
  Params: ``
- sp_Organizacion_ObtenerArbol  
  Params: ``
- sp_Organizacion_ObtenerEmpleadosNodoDirecto  
  Params: `@idOrg, @limite`
- sp_Organizacion_SubarbolContarEmpleados  
  Params: `@id, @idOrgRaiz`
- sp_Organizacion_SubarbolPreviewEmpleados  
  Params: `@id, @idOrgRaiz, @limite`

### Visibilidad (1)

- sp_Visibilidad_ObtenerCarnets  
  Params: `@c, @carnetSolicitante, @Delegantes`

### Proyectos (1)

- sp_ObtenerProyectos  
  Params: `@filtroEstado, @filtroNombre, @idUsuario`

### Tareas (5)

- sp_Clarity_CrearTareaRapida  
  Params: `@idUsuario, @prioridad, @tipo, @titulo`
- sp_Clarity_MiDia_Get  
  Params: `@Fecha, @IdUltimoCheckin, @IdUsuario`
- sp_Tarea_Crear  
  Params: `@descripcion, @esfuerzo, @estado, @fechaInicioPlanificada, @fechaObjetivo, @idProyecto, @idUsuario, @nombre, @orden, @porcentaje, @prioridad, @tipo`
- sp_Tarea_CrearCompleta  
  Params: `@comportamiento, @descripcion, @esfuerzo, @estado, @fechaInicioPlanificada, @fechaObjetivo, @idEntregable, @idProyecto, @idResponsable, @idTareaPadre, @idUsuario, @nombre, @orden, @porcentaje, @prioridad, @requiereEvidencia, @tipo`
- sp_UpsertAvanceMensual  
  Params: `@acum, @anio, @comentario, @idTarea, @idUsuario, @mes, @porcentajeMes`

### Bloqueos (1)

- sp_Bloqueo_Crear  
  Params: `@accionMitigacion, @destinoTexto, @idBloqueo, @idDestinoUsuario, @idOrigenUsuario, @idTarea, @motivo, @TRANCOUNT`

### Checkins (legacy) (2)

- sp_Checkin_Crear  
  Params: `@energia, @entregableTexto, @estadoAnimo, @fecha, @idNodo, @idUsuario, @linkEvidencia, @nota`
- sp_Checkin_Upsert  
  Params: `@entregableTexto, @estadoAnimo, @fecha, @idCheckin, @idNodo, @idUsuario, @linkEvidencia, @nota, @tareas`

## Lo que debe tener (mínimo para Carnet-First consistente)

Estos SPs/ajustes están implementados en el patch v4.

- Índice único: **UX_p_Usuarios_carnet** (filtered)
- Backfill: p_Tareas.creadorCarnet y p_Checkins.usuarioCarnet
- SP utilitario: **sp_Usuarios_ObtenerIdPorCarnet**
- Wrappers Carnet-First: **sp_ObtenerProyectos_Carnet**, **sp_Clarity_MiDia_Get_Carnet**, **sp_Tarea_Crear_Carnet**, **sp_Clarity_CrearTareaRapida_Carnet**, **sp_Tarea_CrearCompleta_Carnet**, **sp_UpsertAvanceMensual_Carnet**
- Checkins v2 alineado a tabla real: **sp_Checkin_Upsert_v2**

## Faltantes recomendados (CRUD completo)

Proyectos:
- sp_Proyecto_Crear
- sp_Proyecto_Actualizar
- sp_Proyecto_Detalle
- sp_Proyecto_Desactivar

Tareas:
- sp_Tarea_Detalle
- sp_Tarea_ListarPorProyecto
- sp_Tarea_Actualizar
- sp_Tarea_CambiarEstado
- sp_Tarea_Asignados_Set (reemplazar lista de asignados/responsables)
- sp_Tarea_Desactivar

Bloqueos:
- sp_Bloqueo_Resolver
- sp_Bloqueo_Listar (por proyecto/tarea/usuario)

Checkins:
- sp_Checkin_Get_v2 (por carnet+fecha)
- sp_Checkin_ListarRango_v2
- sp_CheckinTareas_Upsert (si vas a usar dbo.p_CheckinTareas)

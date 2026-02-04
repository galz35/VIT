# Endpoints: Acceso / Visibilidad

## Endpoints activos (backend)
- `POST /acceso/permiso-area`
- `GET /acceso/permiso-area/:carnetRecibe`
- `GET /acceso/permiso-area`
- `DELETE /acceso/permiso-area/:id`
- `POST /acceso/permiso-empleado`
- `GET /acceso/permiso-empleado/:carnetRecibe`
- `GET /acceso/permiso-empleado`
- `DELETE /acceso/permiso-empleado/:id`
- `POST /acceso/delegacion`
- `GET /acceso/delegacion/delegado/:carnetDelegado`
- `GET /acceso/delegacion/delegante/:carnetDelegante`
- `GET /acceso/delegacion`
- `DELETE /acceso/delegacion/:id`
- `GET /acceso/empleado/:carnet`
- `GET /acceso/empleados`
- `GET /acceso/empleados/buscar`
- `GET /acceso/empleado/email/:correo`
- `GET /acceso/organizacion/buscar`
- `GET /acceso/organizacion/tree`
- `GET /acceso/organizacion/nodo/:idOrg`
- `GET /acceso/organizacion/nodo/:idOrg/preview`
- `GET /acceso/debug-raw-data`

## Visibilidad
- `GET /visibilidad/:carnet`
- `GET /visibilidad/:carnet/empleados`
- `GET /visibilidad/:carnet/puede-ver/:carnetObjetivo`
- `GET /visibilidad/:carnet/actores`
- `GET /visibilidad/:carnet/quien-puede-verme`

## Estado
- No se detectan inconsistencias directas con las rutas usadas por el frontend para estas áreas.

# Endpoints: Planning

## Endpoints activos (backend)
- `POST /planning/check-permission`
- `POST /planning/request-change`
- `GET /planning/pending`
- `GET /planning/approvals`
- `POST /planning/resolve`
- `POST /planning/approvals/:idSolicitud/resolve`
- `POST /planning/update-operative`
- `GET /planning/plans`
- `POST /planning/plans`
- `GET /planning/stats`
- `GET /planning/team`
- `GET /planning/my-projects`
- `POST /planning/tasks/:id/clone`
- `POST /planning/reassign`
- `GET /planning/tasks/:id/history`
- `POST /planning/plans/:id/close`
- `POST /planning/tasks/:id/avance-mensual`
- `GET /planning/tasks/:id/avance-mensual`
- `POST /planning/tasks/:id/crear-grupo`
- `POST /planning/tasks/:id/agregar-fase`
- `GET /planning/grupos/:idGrupo`

## Hallazgos
- La respuesta de avance mensual está doblemente envuelta (por `TransformInterceptor`).
- Existe doble controlador para `/asignaciones` (ver doc general).

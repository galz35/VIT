# Endpoints: Clarity Core

## Endpoints activos (backend)
- `GET /mi-dia`
- `POST /checkins`
- `POST /tareas/rapida`
- `GET /tareas/mias`
- `PATCH /tareas/:id`
- `POST /tareas/:id/revalidar`
- `GET /agenda/:targetUserId`
- `GET /equipo/miembro/:idMiembro/tareas`
- `GET /equipo/miembro/:idMiembro`
- `GET /tareas/historico/:carnet`
- `POST /tareas/:id/avance`
- `GET /planning/workload`
- `GET /audit-logs/task/:idTarea`
- `POST /tareas/solicitud-cambio`
- `GET/POST/PATCH/DELETE /proyectos`
- `GET /proyectos/:id`
- `GET /proyectos/:id/tareas`
- `POST /tareas/:id/recurrencia`
- `GET /tareas/:id/recurrencia`
- `POST /tareas/:id/instancia`
- `GET /tareas/:id/instancias`
- `GET /equipo/bloqueos`
- `GET /agenda-recurrente`

## Endpoints esperados por frontend pero faltantes
- `POST /bloqueos`
- `PATCH /bloqueos/:id/resolver`
- `POST /tareas/:id/descartar`
- `GET /equipo/backlog`
- `GET /equipo/miembro/:id/bloqueos`
- `GET /reportes/*`
- `GET /gerencia/resumen`
- `GET/POST /config`
- `GET/POST/PATCH/DELETE /foco/*`

## Notas
- Muchas rutas faltantes existen únicamente en `clarity.controller.ts.bak`, no en el controlador activo.

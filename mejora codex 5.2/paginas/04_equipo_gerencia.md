# Páginas: Equipo / Gerencia

## Rutas UI
- `/app/equipo`
- `/app/equipo/hoy`
- `/app/equipo/bloqueos`
- `/app/equipo/mi-equipo`
- `/app/equipo/planning/:userId`
- `/app/agenda/:userId` (agenda de miembro)

## Llamadas API principales
- `GET /equipo/hoy`
- `GET /equipo/bloqueos`
- `POST /bloqueos`
- `PATCH /bloqueos/:id/resolver`
- `GET /equipo/miembro/:id`
- `GET /equipo/miembro/:id/tareas`
- `GET /equipo/miembro/:id/bloqueos`
- `GET /planning/team`
- `GET /planning/workload`
- `GET /planning/my-projects`

## Hallazgos
### 1) Endpoints faltantes
- `POST /bloqueos` y `PATCH /bloqueos/:id/resolver` no existen en backend activo.
- `GET /equipo/miembro/:id/bloqueos` no existe en backend activo.

### 2) Endpoint `GET /equipo/bloqueos` sí existe, pero falta la creación/resolución
- Se obtiene lista de bloqueos, pero el flujo de creación/resolución falla por endpoints faltantes.

## Impacto UX
- La pantalla de bloqueos de equipo no permite registrar ni resolver bloqueos.
- El detalle de bloqueos por miembro fallará (error 404).

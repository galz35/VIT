# Página: Mi Día (MiDiaPage + vistas hijas)

## Rutas UI
- `/app/hoy`
  - `ExecutionView` (index)
  - `CalendarView`
  - `TimelineView`
  - `ExecutiveView` (KPIs)
  - `AlertsView`
  - `BlockersView`
  - `MetricsView`
  - `TeamView`
  - `VisibilidadView`

## Llamadas API principales
- `GET /mi-dia`
- `POST /checkins`
- `POST /tareas/rapida`
- `GET /tareas/mias`
- `POST /tareas/:id/avance`
- `POST /tareas/:id/revalidar`
- `GET /agenda-recurrente`
- `GET /tareas/:id/recurrencia`
- `POST /tareas/:id/recurrencia`
- `GET /tareas/:id/instancias`
- `POST /tareas/:id/instancia`
- `GET /equipo/hoy`
- `GET /planning/workload`
- `GET /equipo/miembro/:id/tareas`
- `GET /equipo/miembro/:id`

## Hallazgos
### 1) Endpoints faltantes en backend activo
- **Bloqueos**: la UI llama `POST /bloqueos` y `PATCH /bloqueos/:id/resolver` (por ejemplo en `TaskDetailModal` y `EquipoBloqueosPage`), pero el controlador activo de Clarity no expone esas rutas.
- **Foco diario**: se usan `/foco`, `/foco/:id`, `/foco/reordenar`, `/foco/estadisticas`, pero no existen en controlador activo.
- **Backlog de equipo**: `/equipo/backlog` es usado por el frontend, pero no existe en backend activo.
- **Bloqueos por miembro**: `/equipo/miembro/:id/bloqueos` no existe en backend activo.

### 2) Potencial duplicación en datos de “Mi Día”
- El contexto de Mi Día fusiona `disponibles`, `backlog` y `arrastrados` y deduplica por `idTarea`.
- Si backend retorna tareas sin `idTarea` estable o con `idTarea` ambiguo, la deduplicación podría fallar y presentar duplicados.

## Impacto UX
- Bloqueos, foco diario y backlog aparecerán “rotos” o sin datos en UI (errores 404/500).
- El usuario verá tareas duplicadas o inconsistentes si el backend no normaliza correctamente `idTarea`.

# Página: Planificación

## Rutas UI
- `/app/planning/*`
  - `planning/proyectos`
  - `planning/approvals`
  - `planning/timeline`
  - `planning/roadmap`
  - `planning/carga`
  - `planning/simulation`
  - `planning/plan-trabajo`

## Llamadas API principales
- `POST /planning/check-permission`
- `POST /planning/request-change`
- `GET /planning/approvals`
- `POST /planning/approvals/:idSolicitud/resolve`
- `GET /planning/my-projects`
- `POST /planning/tasks/:id/avance-mensual`
- `GET /planning/tasks/:id/avance-mensual`
- `POST /planning/tasks/:id/crear-grupo`
- `POST /planning/tasks/:id/agregar-fase`
- `GET /planning/grupos/:id`
- `POST /asignaciones` (reasignación en PlanTrabajo)
- `POST /tareas/:id/descartar` (usado para eliminar/descartar tareas)

## Hallazgos
### 1) Ruta `POST /tareas/:id/descartar` no existe en controlador activo
- El frontend usa `descartarTarea` para eliminar o descartar tareas, pero no existe endpoint activo en backend.

### 2) Ruta `/asignaciones` está duplicada
- Hay dos controladores con `@Controller('asignaciones')`:
  - `planning/controllers/asignacion.controller.ts`
  - `clarity/kpis.controller.ts`
- Esto puede generar colisiones y comportamiento no determinista.

### 3) Respuesta de avance mensual con doble envoltura
- El backend devuelve `{ success, data: { historial, acumulado } }` y el `TransformInterceptor` vuelve a envolver.
- La UI (modal de avance mensual) espera `data.acumulado` y `data.historial` en primer nivel, por lo que puede fallar.

## Impacto UX
- El botón de descartar/eliminar tarea puede fallar con error 404/500.
- Reasignaciones podrían resolverse en un controlador distinto según el orden de carga.
- El historial de avance mensual puede no cargarse correctamente (UI sin datos).

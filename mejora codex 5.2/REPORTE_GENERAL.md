# Reporte general de hallazgos (frontend + backend)

Este reporte consolida los hallazgos de revisión **página por página** y **endpoint por endpoint**. Los detalles desglosados por página y por endpoint están en subcarpetas.

## 1) Hallazgos críticos (impactan funcionalidad)

### 1.1 Endpoints llamados por el frontend que no existen en el backend activo
- **Bloqueos**: el frontend llama `POST /bloqueos` y `PATCH /bloqueos/:id/resolver`, pero el controlador activo de Clarity no expone esas rutas (solo estaban en el archivo `.bak`).
- **Foco diario**: el frontend llama `/foco`, `/foco/:id`, `/foco/reordenar`, `/foco/estadisticas`, pero el controlador activo no tiene esas rutas (solo existen en el `.bak`).
- **Backlog de equipo**: el frontend llama `/equipo/backlog`, pero no hay ruta activa.
- **Bloqueos por miembro**: el frontend llama `/equipo/miembro/:id/bloqueos`, pero no hay ruta activa.
- **Descartar tarea**: el frontend llama `POST /tareas/:id/descartar`, pero no existe en el controlador activo.
- **Reportes**: el frontend llama `/reportes/*` y `/gerencia/resumen`, pero esas rutas no existen en el controlador activo.
- **Config**: el frontend llama `/config` para preferencias, pero no existe un controlador con esa ruta.

> Referencias: rutas frontend en `clarity.service.ts` y `TaskDetailModal`/`PlanTrabajoPage`; rutas backend en `clarity.controller.ts` activo y `clarity.controller.ts.bak`.

### 1.2 Colisión de rutas en backend
- Existe **doble controlador para `/asignaciones`**:
  - `AsignacionController` en `planning/controllers/asignacion.controller.ts`.
  - `AsignacionesController` en `clarity/kpis.controller.ts`.
- Esto puede causar colisiones o comportamiento inconsistente dependiendo del orden de registro de módulos.

### 1.3 Respuesta de Avance Mensual (doble envoltura de data)
- `AvanceMensualController` devuelve `{ success, data: { historial, acumulado } }`.
- El `TransformInterceptor` vuelve a envolver el resultado como `{ success, data: <objeto-anterior> }`.
- El frontend espera `data.acumulado` directo (no doblemente anidado), lo que puede romper la UI en el modal de avance mensual.

## 2) Hallazgos funcionales por área

### 2.1 Admin
- **Importación**: el frontend llama `/admin/empleados/import`, pero el backend expone `/admin/import/empleados`.
- **Reset password**: frontend llama `/admin/empleados/:correo/reset-password`, no existe en backend.
- **Menús**: frontend llama `/admin/roles/:id/menu` y `/admin/usuarios/:id/menu`, pero backend usa `/admin/security/assign-menu`.
- **Crear usuario**: frontend llama `POST /admin/usuarios` pero no hay ruta activa equivalente.

### 2.2 Equipo / Gerencia
- **Equipo bloqueos**: frontend depende de `/bloqueos` y `/equipo/bloqueos` para la experiencia; solo está disponible `/equipo/bloqueos` en controlador activo, pero la creación/resolución de bloqueos no existe.

### 2.3 Reportes
- Todas las rutas de reportes en frontend apuntan a `/reportes/*` y `/gerencia/resumen`, pero no existen en controlador activo.

## 3) Archivos generados

- `paginas/` contiene el detalle **página por página** (UI → endpoints → riesgos).
- `endpoints/` contiene el detalle **endpoint por endpoint** (backend expuesto vs frontend esperado).

---

## Recomendaciones de acción inmediata
1. **Decidir si se reactivan los endpoints de `clarity.controller.ts.bak`** o si se migran explícitamente a nuevas rutas activas.
2. **Unificar rutas admin** (import, reset password, menús) para que frontend y backend coincidan.
3. **Resolver colisión de `/asignaciones`** (fusionar o renombrar uno de los controladores).
4. **Alinear respuesta de avance mensual** al formato esperado por el frontend.

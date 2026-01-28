---
description: Plan de refactorización de la vista Hoy
---

# Plan de Implementación: Refactorización Vista "Hoy"

## Objetivo
Restaurar la funcionalidad de la pestaña "Bitácora" y reemplazar el panel lateral en la vista de "Ejecución" con un nuevo componente de "Tareas Atrasadas" (Backlog) que reutilice el diseño de la bitácora.

## Pasos

### 1. Crear Componente `OverdueTimeline` (Copia de Bitácora)
- [ ] Duplicar `src/pages/Hoy/components/AgendaTimeline.tsx` a `src/pages/Hoy/components/OverdueTimeline.tsx`.
- [ ] Modificar `OverdueTimeline` para recibir tareas (`backlog`) como `prop` en lugar de realizar una petición API interna.
- [ ] Cambiar el título del componente a "Tareas Atrasadas" o "Backlog".
- [ ] Adaptar la lógica de agrupación por fechas (si es necesario) o mantener la agrupación visual existente para las tareas atrasadas.

### 2. Refactorizar `ExecutionView` (`/app/hoy/`)
- [ ] Importar `OverdueTimeline`.
- [ ] Obtener la lista de `backlog` desde `useMiDiaContext`.
- [ ] Reemplazar el uso de `<AgendaTimeline />` en el panel lateral derecho con `<OverdueTimeline tasks={backlog} ... />`.
- [ ] Asegurar que las callbacks `onTaskComplete` y `onTaskCancel` funcionen correctamente para actualizar el estado de las tareas atrasadas.

### 3. Restaurar Pestaña "Bitácora" (`/app/hoy/bitacora`)
- [ ] Editar `src/pages/Hoy/MiDiaPage.tsx`.
- [ ] Descomentar el `NavLink` correspondiente a "Bitácora".
- [ ] Verificar que la ruta `/app/hoy/bitacora` apunte correctamente a `TimelineView` (que renderiza la Bitácora original).

## Verificación
- [ ] La pestaña "Ejecutar" muestra el plan activo y, a la derecha, el panel de "Tareas Atrasadas" con las tareas del backlog.
- [ ] La pestaña "Bitácora" es accesible y muestra el historial completo de actividades (AgendaTimeline original).

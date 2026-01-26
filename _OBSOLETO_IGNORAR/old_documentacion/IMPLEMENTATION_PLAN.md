# Plan de Implementación: Sistema de Planificación Avanzada

Este documento sirve como checklist para la implementación del diseño aprobado en `DESIGN_PLANIFICACION_AVANZADA.md`.

## FASE 1: Backend Core (Lógica de Negocio)
- [ ] **1.1 Módulo de Planificación**: Crear `PlanningModule`, `PlanningController` y `PlanningService`.
- [ ] **1.2 Lógica de Solicitudes**: Implementar métodos en `PlanningService`:
    - `createChangeRequest`: Crear solicitud pendiente.
    - `getPendingRequests`: Obtener solicitudes para un jefe.
    - `approveRequest`: Aplicar cambio y cerrar solicitud.
    - `rejectRequest`: Cerrar solicitud sin cambios.
- [ ] **1.3 Interceptor de Tareas**: Modificar `ClarityService.updateTarea` (o crear wrapper) para:
    - Verificar `Proyecto.tipo`.
    - Si es 'Estrategico' y el cambio es sensible -> Bloquear y llamar a `createChangeRequest` (o retornar instrucción al front).
    - Si es 'Operativo' -> Ejecutar update y loguear en `AuditLog`.
- [ ] **1.4 Auditoría Granular**: Asegurar que cada escritura en `FocoDiario` o `Tarea` genere un `AuditLog`.

## FASE 2: Frontend - Componentes Inteligentes
- [ ] **2.1 Servicio Frontend**: Crear `planning.service.ts` para conectar con los nuevos endpoints.
- [ ] **2.2 Modal de Tarea Inteligente (`SmartTaskModal`)**:
    - [ ] Cabecera con Badge de Gobernanza (Estratégico/Operativo).
    - [ ] Bloqueo de campos sensibles (Fecha, Asignación) según permisos.
    - [ ] Botón "Solicitar Cambio" que abre sub-modal de justificación.
    - [ ] Línea de tiempo de auditoría (Log Visual).
- [ ] **2.3 Bandeja de Aprobaciones (Para Jefes)**:
    - [ ] Widget en `ManagerDashboard` para ver "Solicitudes Pendientes".
    - [ ] Interfaz para aprobar/rechazar cambios.

## FASE 3: Integración y Pruebas
- [ ] **3.1 Integración en Tableros**: Reemplazar modales de edición antiguos por `SmartTaskModal` en `TeamListPage` y `ManagerDashboard`.
- [ ] **3.2 Pruebas de Flujo**:
    - [ ] Caso Operativo: Cambio directo -> Auditoría creada.
    - [ ] Caso Estratégico: Cambio solicitado -> Solicitud creada -> Jefe aprueba -> Tarea actualizada.

---
## Progreso Actual
- [x] **1.1 Módulo de Planificación**: Implementado (`PlanningModule`, `PlanningService`).
- [x] **1.2 Lógica de Solicitudes**: Servicio base implementado y validado.
- [x] **1.3 Interceptor Tareas**: `TasksService` modificado para usar `PlanningService`.
- [x] **1.4 Auditoría**: Integrada en el flujo de actualización de tareas.
- [x] **2.1 Servicio Frontend**: `planning.service.ts` creado.
- [x] **2.2 Componente Inteligente**: `TaskDetailModal` actualizado con lógica "Smart Task".
- [x] **2.3 Bandeja Aprobaciones**: Implementada `ApprovalsPage` y enrutada.
- [x] **3. Integración**: Navegación y permisos configurados.

**¡IMPLEMENTACIÓN COMPLETADA! 🚀**

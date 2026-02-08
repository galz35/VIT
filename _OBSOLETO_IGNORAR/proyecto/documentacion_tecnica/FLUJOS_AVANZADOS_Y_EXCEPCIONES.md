# 🔄 Flujos Avanzados y Gestión de Excepciones

Este documento profundiza en los escenarios complejos de operación del sistema Clarity, detallando la lógica de negocio, bloqueos, y gestión de crisis.

---

## 🔐 1. El Candado "Inteligente" (Locking Logic)

El sistema diferencia entre **Planificar** (cambiar metas) y **Ejecutar** (trabajar).

### A. Tarea "Enllavada" (Plan Confirmado / Proyecto Estratégico)
Cuando un Jefe confirma un Plan Mensual, las tareas entran en modo `Read-Only` parcia para el dueño.

| Acción Intentada | ¿Permitido? | Comportamiento del Sistema |
|------------------|-------------|----------------------------|
| **Cambiar Título/Objetivo** | ⛔ NO | Muestra candado gris. Requiere `SolicitudCambio`. |
| **Cambiar Fecha Límite** | ⛔ NO | Afecta cronograma. Requiere `SolicitudCambio`. |
| **Eliminar Tarea** | ⛔ NO | Prohibido. Debe marcarse como "Cancelada" con motivo. |
| **Subir Progreso (0 -> 50%)** | ✅ SI | Permitido libremente (Update Operativo). |
| **Adjuntar Evidencia** | ✅ SI | Permitido. |
| **Marcar Bloqueo** | ✅ SI | Permitido. |

**Lógica Técnica:**
```typescript
// Backend: planning.service.ts
if (requiereAprobacion && !isExecutionUpdate) {
    throw new ForbiddenException('Solo puede actualizar progreso/estado. Solicite cambio para fechas/título.');
}
```

---

## 🚧 2. Ciclo de Vida del Bloqueo

Qué pasa cuando una tarea no puede avanzar.

### Paso 1: El Grito de Ayuda (Operativo)
*   **Actor:** Josue (Operativo).
*   **Acción:** En la tarea #505, clic en botón ⚠️ "Reportar Bloqueo".
*   **Input:** Motivo: "Finanzas no envió reporte", Accion Sugerida: "Escalar con Gerente Finanzas".
*   **Resultado:**
    *   La tarea se pone en estado `BLOQUEADO` (rojo).
    *   El SLA de la tarea se "congela" (para métricas de desempeño).
    *   Se crea registro en tabla `p_Bloqueos`.

### Paso 2: La Visibilidad (Jefatura)
*   **Actor:** Juan Ortuño (Gerente).
*   **Dashboard:** Aparece alerta roja en widget "Equipo": "1 Bloqueo Activo (Josue)".
*   **Acción:** Juan revisa el bloqueo. Puede:
    *   A) **Resolverlo él mismo:** Llama a Finanzas.
    *   B) **Delegarlo:** Reasigna el bloqueo a otro (en futuras versiones).

### Paso 3: Resolución y Continuidad
*   **Actor:** Juan o Josue.
*   **Acción:** Clic en "Resolver Bloqueo".
*   **Input:** Solución: "Reporte recibido por correo".
*   **Resultado:**
    *   La tarea vuelve a estado `EN PROGRESO` o `PENDIENTE`.
    *   El bloqueo pasa a histórico (fechaResolucion = now).

---

## 🚑 3. Gestión de Bajas y Reasignación (Crisis Management)

Escenario: Un empleado ("Franklin Flores") se va de la empresa o está de baja médica prolongada.

### Estado Actual (Lo que pasa hoy)
1.  **Usuario Inactivo:** Admin marca `Usuario.activo = false`.
2.  **Tareas Huérfanas:** Las tareas de Franklin siguen existiendo (`idAsignado = ID_FRANKLIN`), pero nadie las está trabajando. Desaparecen de los dashboards de ejecución diaria.

### Procedimiento de Recuperación (Workaround Actual)
El Jefe Inmediato (o Admin) debe intervenir:

1.  **Identificación:**
    *   Ir a `/app/planning/team-tasks` (Vista de Equipo).
    *   Filtrar por Usuario: "Franklin (Inactivo)".
2.  **Reasignación Masiva (o Manual):**
    *   Seleccionar las tareas críticas pendientes.
    *   **Acción:** Editar Tarea -> Cambiar "Responsable" a "Nuevo Empleado".
    *   *Nota:* Al cambiar el responsable, la tarea aparece automáticamente en la agenda (`/app/hoy`) del nuevo empleado.
3.  **Clonación (Opcional):**
    *   Si la tarea era personal y compleja, a veces es mejor "Clonar" la tarea para el nuevo usuario (crea copia limpia) y "Cancelar" la original para mantener el histórico de que Franklin no la terminó.

---

## 🔀 4. Topología Multivista (Una Tarea, Mil Caras)

La misma entidad de base de datos (`p_Tareas, ID=99`) se visualiza diferente según el contexto.

| Vista | Contexto | Qué se ve | Objetivo |
|-------|----------|-----------|----------|
| **Mi Día** (`/app/hoy`) | Ejecución Inmediata | Solo título, check, bloqueo. | "Hazlo ya". |
| **PlanTrabajo** (`/app/planning`) | Táctico Mensual | Matriz (Urgente/Importante). | Priorización y Orden. |
| **Cronograma** (`/app/timeline`) | Proyecto Macro | Barra en el tiempo (Gantt). | Dependencias y Fechas. |
| **Listado** (`/app/pendientes`) | Backlog | Lista plana filtrable. | Limpiar basura / Organizar. |
| **Aprobaciones** | Auditoría | Diff (Valor Antes vs Nuevo). | Control de Cambios. |

**Sincronización:**
Cualquier cambio en "Mi Día" (ej. subir progreso al 80%) se refleja **instantáneamente** en el "Cronograma" del Jefe. No hay sincronización batch; es la misma base de datos.

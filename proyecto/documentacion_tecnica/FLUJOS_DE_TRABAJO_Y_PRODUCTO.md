# 🔄 Flujos de Trabajo y Producto Final

Este documento describe cómo "respira" el software Clarity, detallando los procesos de negocio soportados y criterios de éxito.

---

## 🔁 1. Flujos de Trabajo Principales (Workflows)

### Flujo A: El Ciclo Diario (Nivel Operativo)
**Actor:** Especialista (Ej. Josue Garcia)
**Frecuencia:** Diaria

1.  **Inicio (08:00 AM):**
    *   Login (`/login`).
    *   **Dashboard Personal:** Revisa "Mis Tareas para Hoy".
    *   **Foco Diario:** Define su meta ("Terminar informe X").
2.  **Ejecución:**
    *   Abre tarea #505.
    *   Marca checklist items.
    *   Sube % de progreso al 50%.
    *   *Sistema:* Guarda avance en tiempo real.
3.  **Bloqueo (Excepción):**
    *   Detecta impedimento.
    *   Clic en "Reportar Bloqueo" -> "Falta Info de Finanzas".
    *   *Sistema:* Notifica al Tablero del Jefe inmediato.

### Flujo B: Planificación Táctica (Nivel Líder)
**Actor:** Coordinador (Ej. Cándida Sánchez)
**Frecuencia:** Semanal/Mensual

1.  **Creación:**
    *   Crea Proyecto "Mantenimiento Q1".
    *   Define Tipo: **"TACTICO"** (Flexible).
2.  **Asignación:**
    *   Vista Gantt (`/app/planning/timeline`).
    *   Crea Tareas y asigna a su staff (Gustavo, Mario).
    *   Crea dependencias (Tarea A -> Tarea B).
3.  **Análisis de Carga:**
    *   Revisa `WorkloadPage`. Ve que Gustavo está al 110%.
    *   Mueve tarea al siguiente sprint.

### Flujo C: Gobernanza y Aprobación (Nivel Gerencial)
**Actor:** Gerente General RRHH (Juan Ortuño)
**Frecuencia:** Ad-hoc / Semanal

1.  **Supervisión:**
    *   Revisa `ManagerDashboard`.
    *   Ve alerta: "1 Solicitud de Cambio Pendiente".
2.  **Decisión:**
    *   Abre solicitud (Modal de Revisión).
    *   Ve impacto: "Mover fecha fin impacta KPI trimestral".
    *   **Acción:** APROBAR (con comentario: "Ok, pero recuperar tiempo en fase 2").
3.  **Resultado:**
    *   El sistema actualiza la fecha ORIGINAL de la tarea bloqueda.
    *   Se notifica al solicitante.

---

## 🏆 2. Producto Final: Definition of Done (DoD)

¿Cumple el software con lo esperado? Evaluación técnica y funcional.

### ✅ Criterios de Éxito Funcionales
| Característica | Estado | ¿Cumple? | Notas |
|----------------|--------|----------|-------|
| **Multi-país** | 🟢 Listo | SI | Datos segregados correctamente por columna `pais`. |
| **Jerarquía** | 🟢 Listo | SI | Juan Ortuño ve todo el árbol hacia abajo. |
| **Gobernanza** | 🟢 Listo | SI | Proyectos Estratégicos bloquean edición directa. |
| **Auditoría** | 🟢 Listo | SI | Logs de quién cambió qué en `p_auditoria`. |
| **Interface** | 🟢 Listo | SI | UI Moderna, Drag&Drop, Responsive. |

### 🛠️ Criterios Técnicos
| Métrica | Valor Actual | Meta | Estado |
|---------|--------------|------|--------|
| **Tests Backend** | 100% Pass | 100% | ✅ Exitoso |
| **Seguridad** | JWT + RBAC | RBAC | ✅ Seguro |
| **Performance** | <200ms API | <500ms | ✅ Rápido |
| **Tests Frontend**| 17% | 50% | ⚠️ Deuda Técnica (Mejorable) |

### 🔍 Veredicto Final del Agente
El software **CUMPLE** con los requisitos operativos y estratégicos fundamentales.
*   **Fortaleza:** Modelo de datos robusto y diferenciación clara entre tipos de proyectos (Gobernanza).
*   **Punto de Atención:** Se recomienda subir cobertura de tests en frontend antes del despliegue masivo a producción, pero para un piloto funcional está listo.

---

## 3. Topología de Pantallas (Mapa de Navegación)
*   **Acceso Público:** `/login`
*   **Espacio Personal:**
    *   `/app/hoy` (Ejecución)
    *   `/app/pendientes` (Backlog personal)
*   **Espacio Planificación:**
    *   `/app/planning/roadmap` (Lista de Proyectos)
    *   `/app/planning/timeline` (Gantt)
    *   `/app/planning/plan-trabajo` (Vista Calendario/Matriz)
*   **Espacio Gerencial:**
    *   `/app/equipo` (Dashboard Líder)
    *   `/app/planning/approvals` (Bandeja de Aprobaciones)
*   **Espacio Administrador:**
    *   `/app/admin/users`, `/app/admin/import`, `/app/admin/audit`

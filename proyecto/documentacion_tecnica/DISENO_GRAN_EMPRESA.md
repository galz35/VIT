# Diseño Detallado: Gestión de Proyectos en Gran Empresa (Enterprise)

Este documento detalla el diseño funcional y técnico para soportar escenarios complejos de gestión de proyectos en una organización de gran escala, utilizando CLARITY OS.

## 1. Actores y Permisos

En un entorno Enterprise, los roles no son planos. Se definen por **Jerarquía Organizacional** y **Rol en el Proyecto**.

| Actor | Rol Global | Contexto del Proyecto | Permisos |
| :--- | :--- | :--- | :--- |
| **Director / VP** | `Director` | Dueño del Nodo (Área) | **Total**: Puede ver, editar, bloquear y archivar cualquier proyecto bajo su estructura (recursivo). |
| **Gerente de Proyecto** | `Jefe` / `Lider` | Creador / Dueño | **Total**: Gestión completa de SU proyecto. Puede asignar tareas a cualquier empleado (incluso de otras áreas si la política lo permite). |
| **Staff Táctico** | `Empleado` | Colaborador (Asignado) | **Operativo**: Puede cambiar Estado (Pendiente -> En Curso) y actualizar Progreso (%). <br> **Restringido**: NO puede cambiar Fechas, Títulos ni borrar tareas si el plan está "Enllavado". |
| **Stakeholder** | `Invitado` / `Otros` | Observador | **Lectura**: Solo puede ver el estado del proyecto (dashboard). No edita nada. |

## 2. Escenarios de Uso (Casos de Prueba)

### Escenario A: Planificación Estricta (Top-Down)
*El Gerente planifica el trimestre y "cierra" el plan.*
1.  **Gerente** crea el proyecto "Lanzamiento Q3".
2.  **Gerente** define 50 tareas y asigna responsables.
3.  **Gerente** presiona **"Enllavar Plan"**.
    *   *Estado del Sistema*: El proyecto pasa a `enllavado = true`.
4.  **Empleado** intenta cambiar la fecha de una tarea porque no llega a tiempo.
    *   *Sistema*: Bloquea la edición directa. Muestra modal "Solicitar Cambio".
5.  **Empleado** envía solicitud: "Mover fecha al día 20".
6.  **Gerente** recibe notificación en **Centro de Aprobaciones**.
7.  **Gerente** aprueba.
    *   *Sistema*: Actualiza la fecha automáticamente y notifica al empleado.

### Escenario B: Colaboración Transversal (Cross-Functional)
*Un proyecto de IT requiere apoyo de Finanzas.*
1.  **Gerente IT** crea tarea "Validar Presupuesto".
2.  **Gerente IT** asigna a **Analista Finanzas** (que no es su subordinado directo).
3.  **Analista Finanzas** entra a su "Mi Agenda".
    *   Ve la tarea "Validar Presupuesto" junto con sus tareas de Finanzas.
4.  **Analista Finanzas** trabaja y cambia estado a "En Curso".
    *   *Sistema*: Permite el cambio de estado libremente (colaboración fluida).
5.  **Jefe de Finanzas** (Jefe real del Analista) revisa la "Carga Laboral" de su equipo.
    *   *Sistema*: Muestra que su Analista tiene una tarea asignada por IT (Visibilidad Matricial). *Nota: Esto requiere que la vista de equipo agregue tareas de terceros.*

### Escenario C: Auditoría y Control
*Seguridad ante cambios no autorizados.*
1.  Un **Empleado** intenta cambiar la prioridad de "Alta" a "Baja" para aliviar su carga.
2.  *Sistema*: Detecta que el campo "Prioridad" es propiedad del Manager.
3.  *UI*: El campo Prioridad aparece deshabilitado para el Empleado.
4.  Si el Empleado intenta forzar la API, el **Backend** rechaza la petición (`403 Forbidden`) o registra el intento fallido.

## 3. Matriz de Estados de la Interfaz (PlanTrabajoPage)

La UI se adapta dinámicamente según 3 variables: `RolUsuario`, `SoyAsignado`, `EstadoProyecto`.

| Campo Tarea | Proyecto Abierto (Manager) | Proyecto Abierto (Empleado) | Proyecto Enllavado (Manager) | Proyecto Enllavado (Empleado) |
| :--- | :--- | :--- | :--- | :--- |
| **Título/Desc** | ✅ Editable | ✅ Editable | ✅ Editable (con advertencia) | 🔒 **Bloqueado** (Solicitar) |
| **Fechas** | ✅ Editable | ✅ Editable | ✅ Editable | 🔒 **Bloqueado** (Solicitar) |
| **Prioridad** | ✅ Editable | 🔒 Bloqueado | ✅ Editable | 🔒 Bloqueado |
| **Estado** | ✅ Editable | ✅ Editable | ✅ Editable | ✅ Editable |
| **Progreso %** | ✅ Editable | ✅ Editable | ✅ Editable | ✅ Editable |

## 4. Diseño Técnico de Seguridad

### A. Nivel Base de Datos
*   **Entidad `Proyecto`**: Campo `enllavado` (boolean). Campo `idNodoDuenio` (para jerarquía).
*   **Entidad `SolicitudCambio`**: Registro inmutable de peticiones de cambio. Audit trail.

### B. Nivel API (Backend)
1.  **Guard**: `JwtAuthGuard` valida identidad.
2.  **Service Layer**:
    *   `verifyAccess(user, project)`: Verifica si es dueño (o superior jerárquico) para permitir cambios estructurales.
    *   `isAssignee(user, task)`: Permite cambios de estado/progreso sin importar el nivel jerárquico.
    *   `crearSolicitudCambio(...)`: Única vía para modificar campos bloqueados por no-managers en proyectos enllavados.

### C. Nivel Frontend (UX)
*   **Componente `LockedField`**: Wrapper visual que detecta permisos. Si no hay permiso, muestra candado y activa flujo de "Solicitud".
*   **Feedback Inmediato**: Toast notifications ("Solicitud enviada", "Cambio guardado") para dar certeza al usuario.

## 5. Implementación Pendiente / Refinamiento Sugerido

Para cerrar el ciclo Enterprise, sugerimos:
1.  **Visibilidad Matricial**: Asegurar que los Jefes de Área puedan ver qué tareas tienen sus empleados en proyectos *externos*.
2.  **Notificaciones**: Email o Push Notification cuando llega una Solicitud de Cambio.
3.  **Historial de Cambios**: Un log visible en la tarea ("Juan cambió fecha de X a Y").

---
*Este diseño asegura el equilibrio entre CONTROL (Managers/Directores) y AGILIDAD (Ejecución diaria).*

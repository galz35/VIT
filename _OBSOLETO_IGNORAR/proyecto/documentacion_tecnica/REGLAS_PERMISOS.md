# 🔐 REGLAS DE PERMISOS Y JERARQUÍA

> **PRINCIPIO FUNDAMENTAL:**  
> 🚫 **PROHIBIDO** usar nombres de cargos (strings como "Lider", "Gerente", "Coordinador") para definir permisos o lógica de negocio.  
> ✅ **USAR** estrictamente la estructura jerárquica (`idOrg`) y los roles de sistema (`rolGlobal`).

---

## 1. Definición de Roles

El sistema utiliza **Roles Globales** definidos en la tabla `p_Usuarios` y `p_Roles`, no en la tabla de empleados de RRHH.

| Rol Global | Alcance | Descripción |
|------------|---------|-------------|
| `Admin`    | **Total** | Tiene acceso irrestricto a todo el sistema. Ignora validaciones de jerarquía. |
| `Jefe`     | **Jerárquico** | Tiene autoridad sobre su nodo organizacional (`idOrg`) y todos los descendientes. |
| `Empleado` | **Individual** | Solo tiene acceso a sus propios datos y lo que se le asigne explícitamente. |

---

## 2. Validación de Jerarquía (Lógica de Negocio)

Para determinar si un usuario puede gestionar (editar, bloquear, aprobar) un recurso (ej. Proyecto, Tarea), se debe seguir este algoritmo:

1.  **¿Es Admin?**
    *   SI: ✅ Acceso concedido inmediato.
    *   NO: Continuar.

2.  **¿Tiene Rol 'Jefe'?**
    *   NO: ❌ Acceso denegado (Solo lectura/edición básica).
    *   SI: Continuar.

3.  **¿Coincidencia de Nodo (Scope)?**
    *   Se compara el `idOrg` del Usuario con el `idNodoDuenio` del recurso.
    *   SI (`user.idOrg === resource.idNodo`): ✅ Acceso concedido (Es el jefe de esa unidad).
    *   NO: Verificar si el `resource.idNodo` es un **descendiente** del `user.idOrg` (Lógica de árbol).

---

## 3. Flujo de Aprobación de Tareas (Candado)

El sistema implementa un flujo de "Oficialización" de tareas mediante un bloqueo explícito por parte del manager.

*   **Estado Inicial (Empleado)**: Las tareas nacen **Editables**. El empleado crea el plan.
*   **Acción de Manager**: El Jefe revisa y pulsa **"Aprobar & Bloquear"** (`isLockedByManager = true`).
*   **Estado Bloqueado**:
    *   La tarea se vuelve **Solo Lectura** para el empleado.
    *   Si el empleado necesita cambios, debe usar el botón de **"Solicitar Cambio"** (icono candado).
    *   El sistema registra la solicitud (actualmente simulado con Toast).
*   **Desbloqueo**: El Jefe puede quitar el candado en cualquier momento para permitir edición masiva nuevamente.

---

## 4. Permisos Especiales y Excepciones

Si un usuario necesita realizar acciones fuera de su jerarquía natural, **NO** se debe hardcodear una excepción por su cargo.

*   **Mecanismo**: Usar las tablas de permisos explícitos.
    *   `p_permiso_empleado`: Otorga capacidad específica a un usuario sobre un recurso o acción.
    *   `p_delegacion_visibilidad`: Permite a un usuario ver/gestionar datos de otro usuario temporalmente.

---

## 5. Resumen para Desarrolladores

Al implementar features:

*   **NUNCA**: `if (user.cargo === 'Lider de Desarrollo') ...`
*   **SIEMPRE**: `if (user.rolGlobal === 'Jefe' && user.idOrg === project.orgId) ...`

Esta estandarización asegura que si RRHH cambia los nombres de los cargos, el sistema de planificación sigue funcionando sin romper la seguridad.

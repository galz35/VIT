# 🎬 Escenario 4: Administración y Mantenimiento (IT / Admin)

Este escenario detalla el flujo de configuración, seguridad y auditoría global del sistema.

---

## 👤 Perfil del Actor
*   **Rol:** Administrador del Sistema
*   **Usuario Prueba:** `gustavo.lira@claro.com.ni` (Tiene Rol ADMIN asignado en BD)
*   **Contraseña:** `123456`
*   **Objetivo:** Gestionar usuarios, permisos y verificar la integridad de los datos.

---

## 🚶‍♂️ Guía Paso a Paso

### 1. Gestión de Usuarios y Roles
*   **Acción:** Login con `gustavo.lira@claro.com.ni`.
*   **Nota Visual:** Al ser Admin, verás una sección "ADMIN" en el Sidebar inferior.
*   **Navegación:** `/app/admin/users`.

1.  **Editar Usuario:**
    *   Busca a un usuario (ej. "Ramon Diaz").
    *   **Acción:** Clic "Editar".
    *   **Cambio:** Modificar su rol o asignarle un nuevo "Manager" si hubo reestructuración.
    *   *Importante:* Puedes cambiar el padre jerárquico (`id_jefe`) lo que re-configurará instantáneamente la visibilidad de los dashboards.

2.  **Gestión de Permisos:**
    *   **Navegación:** `/app/admin/permisos`.
    *   **Acción:** Crear un permiso especial "Ver Datos Sensibles".
    *   **Asignación:** Asignarlo al Rol "Subgerente".

### 2. Importación Masiva (Excel)
*   **Navegación:** `/app/admin/import`.
*   **Escenario:** Llegó un nuevo lote de empleados o actualización de estructura desde SAP/SIGHO.
*   **Acción:**
    *   Descargar plantilla excel.
    *   Subir archivo `.xlsx`.
    *   **Pre-visualizar:** El sistema muestra qué filas se crearán, actualizarán o darán error.
    *   **Confirmar:** Ejecutar importación.

### 3. Auditoría Global (Foreense)
*   **Navegación:** `/app/admin/audit` (o Logs).
*   **Escenario:** "Alguien borró una tarea crítica y nadie sabe quién fue".
*   **Acción:**
    *   Filtrar Logs por `Entidad: Tarea` y `Acción: DELETE`.
    *   **Resultado:** Tabla muestra:
        *   *Usuario:* Josue Garcia
        *   *Fecha:* Ayer 15:30
        *   *IP:* 192.168.1.55
        *   *Datos:* { id: 504, titulo: "Tarea Importante" }
    *   **Conclusión:** Trazabilidad total 100%.

### 4. Configuración del Sistema
*   **Países Activos:** Configurar qué países tienen acceso al sistema (feature flag multi-país).
*   **Log Logs:** Ver logs técnicos del servidor (Errores 500, Timeouts) desde la UI `/app/admin/logs`.

---

## 🔍 Comprobaciones Técnicas
1.  Tabla `Usuario`: Verificar cambios de `rol_id` o `jefe_id`.
2.  Tabla `p_auditoria` (AuditLog): Verificar que incluso las acciones del Admin quedan registradas.
3.  Endpoint `/usuarios/importar`: Probar carga útil y tiempo de respuesta.

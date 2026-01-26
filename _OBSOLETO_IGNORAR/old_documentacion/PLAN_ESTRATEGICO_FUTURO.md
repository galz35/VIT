# 🚀 PLAN TÉCNICO: ARQUITECTURA DE SEGURIDAD MULTI-PAÍS
**Estrategia:** Segregación Estricta de Datos + Visión Global para Directores.
**Fecha:** 13 Enero 2026

---

## 1. MODELO DE ROLES Y PERMISOS (RBAC 2.0)

Implementaremos 3 niveles jerárquicos de acceso.

| Rol | Alcance | Descripción | Usuarios Típicos |
|:---|:---|:---|:---|
| **SuperAdmin (Global)** | 🌎 Todo | Acceso total a los 5 países. Puede crear otros admins. Auditoría completa. | Gustavo Lira, Cándida Sanchez, Juan Ortuño |
| **Admin País** | 🏳️ Local | "Dueño" del país. Ve todos los usuarios y proyectos de SU territorio. | Gerentes de País (ej. Gerente Nicaragua) |
| **Usuario** | 👤 Personal | Solo ve sus asignaciones y proyectos donde colabora activamente. | Equipo Operativo |

### Recomendación sobre Cuentas
*   **Directores:** Usar cuentas nominativas (`gustavo.lira`) con rol `SuperAdmin` para mantener la auditoría de quién aprueba/rechaza.
*   **Soporte:** La cuenta `soporte.operacion@claro.com.ni` se configura como `SuperAdmin` de respaldo para mantenimiento técnico, pero no para uso diario de gestión.

---

## 2. ARQUITECTURA TÉCNICA (Cómo lo haremos)

### A. Base de Datos (Backend)
No necesitamos crear bases de datos separadas (sería costoso y difícil de mantener). Usaremos **"Row-Level Security Lógica"**.

1.  **Campo `pais_id`:** Asegurar que la tabla `users` tenga el país.
2.  **Herencia de País:** Las tareas y proyectos *no necesitan* campo país explícito; heredan el país del usuario que las creó o del proyecto al que pertenecen.
3.  **Global Filter (NestJS):**
    *   Al hacer cualquier consulta (ej. `getTasks`), el sistema inyecta automáticamente:
        ```typescript
        // Pseudocódigo del filtro automático
        if (user.rol === 'SuperAdmin') {
            // Si eligió ver un país específico en el selector, filtrar. Si no, mostrar todo.
            return where(pais = selectedCountry OR all);
        } else {
            // FORZAR filtro de país del usuario. Imposible ver data de otro lado.
            return where(pais = user.pais);
        }
        ```

### B. Frontend (Interfaz)

1.  **Para Gustavo / Cándida / Juan (SuperAdmin):**
    *   Aparece un nuevo **Dropdown en la Barra Superior**: 🏳️ `[ Seleccionar País / Vista Regional ]`.
    *   Al seleccionar "Nicaragua", toda la aplicacion se recarga mostrando solo data de Nicaragua.
    *   Al seleccionar "Regional", los Dashboards muestran gráficas comparativas (País vs País).

2.  **Para Usuarios Normales:**
    *   El dropdown NO existe. La experiencia es transparente. Creen que el software es solo de su país.

3.  **Módulo de Administración de Accesos:**
    *   Nueva pantalla para que los SuperAdmins puedan:
        *   Crear usuarios en otros países.
        *   Promover a un usuario a "Admin País".

---

## 3. PLAN DE EJECUCIÓN (Paso a Paso)

### FASE 1: Preparación de Datos (Backend)
1.  **Regla de Auto-Detección de País:**
    *   Implementar lógica en la creación/importación de usuarios que analice el dominio del correo:
        *   `@claro.com.ni` -> 🇳🇮 Nicaragua
        *   `@claro.com.hn` -> 🇭🇳 Honduras
        *   `@claro.com.sv` -> 🇸🇻 El Salvador
        *   `@claro.com.cr` -> 🇨🇷 Costa Rica
        *   `@claro.com.gt` -> 🇬🇹 Guatemala
    *   *Beneficio:* Cero configuración manual. El usuario cae en su contenedor de datos correcto automáticamente.
2.  Verificar que todos los usuarios actuales tengan `pais` asignado (Script de migración basado en sus correos).
3.  Crear el rol `SuperAdmin` y `AdminPais` en la definición de Tipos.

### FASE 2: Interceptor Global (Seguridad)
1.  Implementar la lógica en el Backend que intercepta cada consulta y aplica el filtro de país si NO es SuperAdmin. **Esto es lo más crítico para la seguridad.**

### FASE 3: UI de Superpoderes (Frontend)
1.  Crear el componente `CountrySelector` en la barra de navegación (visible solo para rol Global).
2.  Adaptar el **Dashboard Ejecutivo** para que acepte el contexto de país.

---

## 4. ESTADO DE OTRAS SOLICITUDES

*   **Integraciones:** ⏸️ **DESCARTADAS**. No se invertirán recursos aquí.
*   **Motor de Reglas:** ⏸️ **EN PAUSA**. Se implementará en una etapa posterior cuando la operación multi-país esté estabilizada.

---

## ✅ CONCLUSIÓN VERIFICADA
Este plan cumple con:
1.  **Seguridad Estricta:** Un usuario de Honduras *técnicamente no puede* ver datos de Nicaragua.
2.  **Centralización:** Gustavo/Cándida/Juan tienen control total desde un solo lugar.
3.  **Auditoría:** Se mantiene el rastreo exacto de acciones por persona.

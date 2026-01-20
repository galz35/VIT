# MANUAL TÉCNICO IOT/DEV - MOMENTUS (v1.3.1)
**Estado del Sistema:** Estable / Hardened
**Stack:** NestJS + React + TypeORM (Postgres)

---

## 1. Módulos Core Actualizados

### A. Seguridad & RBAC
- **Modelo:** Se utiliza un campo simple `rolGlobal` ('Admin' | 'Empleado') en la entidad `Usuario`.
- **Backend Protection:**
    - Los controladores en `/admin/*` deben verificar `req.user.rol === 'Admin'`.
    - `AuthService` inyecta el rol en el JWT Payload.
- **Frontend Protection:**
    - `Sidebar.tsx`: Renderizado condicional del menú Admin.
    - `UsersPage.tsx`: Redirección forzada (`navigate('/app/hoy')`) si un usuario no-admin intenta acceder por URL directa.

### B. Validación de Datos (Data Integrity)
- **Global Pipe:** Se activó `ValidationPipe({ whitelist: true })` en `main.ts`. Esto elimina automáticamente propiedades no definidas en los DTOs para evitar inyección de campos basura.
- **DTOs Estrictos:**
    - Se aplicó `@IsNotEmpty()` a todos los campos obligatorios (`titulo`, `nombre`, `idProyecto`).
    - Se mantienen `@IsString()`, `@IsInt()` y `@MaxLength()` para sanidad de DB.
    - **Impacto:** Requests malformados retornan `400 Bad Request` inmediatamente, protegiendo la lógica de negocio.

### C. Sistema de Traza (Logging)
- **Entidad:** `LogSistema` (`p_Logs`) almacena eventos críticos.
- **Inyección:** `ClarityService` tiene método `crearLog()`.
- **API:** `POST /api/logs` expuesto para reportes desde Frontend o Workers externos.

### D. Gestión de Rutinas (Frontend Logic)
- **Problema Previo:** Race conditions y duplicidad al hacer toggle rápido en UI.
- **Solución:** Implementación de estado local enriquecido en `ActivePlanView`.
    - Estructura: `{ [idRutina]: { done: boolean, taskId: number } }`.
    - Lógica Undo: Al desmarcar, se usa el `taskId` almacenado para llamar a `actualizarTarea({ estado: 'Descartada' })`.
    - **Persistencia:** Se migró el almacenamiento en `localStorage` para soportar esta estructura de objetos, con código defensivo para datos legacy.

---

## 2. Base de Datos (Cambios Recientes)
- **Tabla `p_Logs`:** Nueva.
- **Entidad `Proyecto`:** Agregada relación `@OneToMany` hacia `Tarea`.
- **Entidad `Nota`:** Creada (propósito: migración futura de notas locales).

## 3. Comandos de Despliegue
- Backend: `npm run build && npm run start:prod`
- Frontend: `npm run build` (genera `/dist`)

## 4. Notas para Futuros Desarrolladores
- **NO implementar WebSockets** a menos que la concurrencia supere los 100 usuarios simultáneos activos. El polling actual es suficiente.
- **Próximo Refactor:** Migrar configuración de usuario (vista preferida, rutinas) de `localStorage` a tabla `p_UsuariosConfig`.

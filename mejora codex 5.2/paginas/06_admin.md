# Páginas: Admin (Usuarios, Roles, Permisos, Import)

## Rutas UI
- `/app/admin/users`
- `/app/admin/roles`
- `/app/admin/permisos`
- `/app/admin/visibilidad`
- `/app/admin/logs`
- `/app/admin/audit`
- `/app/admin/import`
- `/app/admin/seguridad`

## Llamadas API principales (frontend)
- `/admin/usuarios` (GET y POST)
- `/admin/usuarios/:id/rol`
- `/admin/usuarios/:id/visibilidad-efectiva`
- `/admin/roles` (GET/POST/PATCH/DELETE)
- `/admin/roles/:id/menu`
- `/admin/usuarios/:id/menu`
- `/admin/empleados/:correo/reset-password`
- `/admin/empleados/import`
- `/admin/logs`
- `/admin/audit-logs`
- `/admin/import/*`
- `/admin/security/*`

## Hallazgos
### 1) Endpoints usados por frontend que no existen
- `POST /admin/usuarios` no existe (solo GET `/admin/usuarios`).
- `POST /admin/empleados/:correo/reset-password` no existe.
- `POST /admin/empleados/import` no existe (backend expone `/admin/import/empleados`).
- `POST /admin/roles/:id/menu` no existe.
- `POST /admin/usuarios/:id/menu` no existe (backend usa `/admin/security/assign-menu`).

### 2) Endpoints correctos
- `/admin/logs`, `/admin/audit-logs`, `/admin/roles`, `/admin/usuarios/:id/rol`, `/admin/usuarios/:id/visibilidad-efectiva`, `/admin/security/*` existen.
- `ImportController` existe pero con ruta base `/admin/import/*`, no `/admin/empleados/*`.

## Impacto UX
- Creación de usuarios y menús personalizados fallará.
- Importación desde UI fallará si apunta a `/admin/empleados/import`.
- Reset de contraseña no funciona.

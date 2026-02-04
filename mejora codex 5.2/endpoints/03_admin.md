# Endpoints: Admin

## Endpoints activos (backend)
- `GET /admin/stats`
- `GET /admin/usuarios`
- `PATCH /admin/usuarios/:id/rol`
- `GET /admin/usuarios/:id/visibilidad-efectiva`
- `GET /admin/roles`
- `POST /admin/roles`
- `PATCH /admin/roles/:id`
- `DELETE /admin/roles/:id`
- `GET /admin/logs`
- `GET /admin/audit-logs`
- `GET /admin/organigrama`
- `POST /admin/nodos`
- `POST /admin/usuarios-organizacion`
- `GET /admin/import/template/empleados`
- `GET /admin/import/template/organizacion`
- `POST /admin/import/empleados`
- `POST /admin/import/organizacion`
- `POST /admin/import/asignaciones`
- `GET /admin/import/stats`
- `GET /admin/security/users-access`
- `POST /admin/security/assign-menu`
- `DELETE /admin/security/assign-menu/:id`
- `GET /admin/security/profiles`

## Endpoints esperados por frontend pero faltantes
- `POST /admin/usuarios`
- `POST /admin/empleados/:correo/reset-password`
- `POST /admin/empleados/import`
- `POST /admin/roles/:id/menu`
- `POST /admin/usuarios/:id/menu`

## Notas
- El frontend usa `/admin/empleados/import`, pero el backend expone `/admin/import/empleados`.

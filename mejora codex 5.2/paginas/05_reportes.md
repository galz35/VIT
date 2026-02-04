# Página: Reportes

## Ruta UI
- `/app/reports`

## Llamadas API principales
- `GET /reportes/productividad`
- `GET /reportes/bloqueos-trend`
- `GET /reportes/equipo-performance`
- `GET /reportes/exportar`
- `GET /gerencia/resumen`
- `GET /admin/logs` y `GET /admin/audit-logs` (como insumo adicional)

## Hallazgos
- Las rutas `/reportes/*` y `/gerencia/resumen` **no existen** en el controlador activo.
- Estas rutas solo están definidas en `clarity.controller.ts.bak`.

## Impacto UX
- Reportes y exportación fallan completamente por falta de endpoints.

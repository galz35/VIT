# Endpoints: KPIs, Software, Diagnóstico

## KPIs / Equipo
- `GET /kpis/dashboard`
- `GET /equipo/hoy`
- `POST /asignaciones` (controlador alterno)
- `GET /tareas/:idTarea/avance-mensual`
- `POST /tareas/:idTarea/avance-mensual`

## Software
- `GET /software/dashboard-stats`

## Diagnóstico
- `GET /diagnostico/ping`
- `GET /diagnostico/stats`
- `GET /diagnostico/contexto`
- `GET /diagnostico/test-tarea`
- `GET /diagnostico/test-idcreador`

## Hallazgos
- La ruta `/asignaciones` también existe en Planning (posible colisión).
- La respuesta de `avance-mensual` puede quedar doblemente envuelta por `TransformInterceptor`.

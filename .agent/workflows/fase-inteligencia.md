---
description: Implementación de Inteligencia Interna y Dashboards
---

# Fase de Inteligencia Interna (Dashboards & Analytics)

Esta fase se enfoca la visualización de datos agregados para la toma de decisiones gerenciales.

## 1. Backend: Servicio de Analítica (`AnalyticsService`)
- [ ] Crear `d:\planificacion\backend\src\planning\analytics.service.ts`.
- [ ] Implementar métodos:
    - `getGlobalCompliance(month, year)`: Retorna % cumplimiento global y desglose por estado de planes.
    - `getAreaPerformance(month, year)`: Retorna cumplimiento agrupado por Área/Nodo.
    - `getBottlenecks()`: Identifica usuarios/áreas con más tareas retrasadas.
- [ ] Exponer endpoints en `PlanningController` (o un nuevo `AnalyticsController`).

## 2. Frontend: Dashboard Gerencial (`ManagerDashboard.tsx`)
- [ ] Refactorizar `ManagerDashboard` para consumir los nuevos endpoints.
- [ ] Implementar Gráficos con `recharts`:
    - Gráfico de Barras: Cumplimiento por Área.
    - Gráfico de Pastel: Estado Global de Planes (Borrador vs Confirmado vs Cerrado).
- [ ] Implementar Widget de "Alertas Críticas" (Cuellos de botella).

## 3. Verificación
- [ ] Ejecutar servidor y validar que los datos mostrados coinciden con la BD.

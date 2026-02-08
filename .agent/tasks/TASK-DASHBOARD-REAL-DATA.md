# Plan de Implementación: Dashboard Manager con Datos Reales

## Objetivo
Reemplazar los datos simulados (mocks) en el `DashboardManager` con datos reales provenientes de la base de datos, específicamente para las secciones de "Atrasos Críticos" y "Entregas de Hoy".

## Alcance
1. **Backend**:
   - Crear consulta SQL optimizada en `planning.repo.ts` para obtener tareas críticas filtradas por equipo visible.
   - Implementar lógica en `planning.service.ts` para resolver el equipo visible (usando `accesoRepo`) y obtener las alertas.
   - Exponer endpoint `GET /planning/dashboard/alerts` en `planning.controller.ts`.
2. **Frontend**:
   - Agregar método `getDashboardAlerts` en `clarity.service.ts`.
   - Modificar `DashboardManager.tsx` para consumir el servicio real y eliminar `simulatedTasks`.

## Pasos de Ejecución

### 1. Capa de Datos (Repo)
- [ ] Modificar `d:\planificacion\backend\src\planning\planning.repo.ts`:
  - Agregar función `obtenerTareasCriticas(carnets: string[])`.
  - Query: Filtrar por `IN (carnets)`, estado activo, y fecha objetivo <= hoy.

### 2. Capa de Negocio (Service)
- [ ] Modificar `d:\planificacion\backend\src\planning\planning.service.ts`:
  - Agregar método `getDashboardAlerts(userId)`.
  - Flujo: Obtener carnet usuario -> Obtener equipo (AccesoRepo) -> Llamar PlanningRepo.

### 3. Capa de Control (Controller)
- [ ] Modificar `d:\planificacion\backend\src\planning\planning.controller.ts`:
  - Agregar endpoint `@Get('dashboard/alerts')`.

### 4. Capa Cliente (Frontend Service)
- [ ] Modificar `d:\planificacion\clarity-pwa\src\services\clarity.service.ts`:
  - Agregar método `getDashboardAlerts()`.

### 5. Capa Vista (Component)
- [ ] Modificar `d:\planificacion\clarity-pwa\src\pages\Equipo\DashboardManager.tsx`:
  - Eliminar objeto `simulatedTasks`.
  - Agregar `useEffect` para cargar alertas reales.
  - Actualizar estado `dueTasks` con respuesta de API.

## Verificación
- Confirmar que las tareas atrasadas reales aparezcan rojo.
- Confirmar que las tareas para hoy aparezcan en verde/azul.
- Verificar tiempos de respuesta (debe ser rápido).

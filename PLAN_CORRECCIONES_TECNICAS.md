# PLAN DE CORRECCIONES TÉCNICAS URGENTES (Reportes Hardcoded)

Este plan detalla las acciones necesarias para erradicar los datos quemados ("hardcoded") y funcionalidades incompletas detectadas en el barrido técnico del 25/01/2026.

**Fecha de Identificación:** 25/01/2026
**Estado:** PENDIENTE
**Prioridad:** CRÍTICA

---

## 1. Módulo de Reportes (`reports.service.ts`)
*Estado Crítico: Funcionalidad simulada/no operativa.*

- [ ] **1.1 Reporte de Productividad** (`getReporteProductividad`)
    - **Problema**: Retorna un mensaje fijo "Reporte en proceso...".
    - **Acción**: Implementar consulta SQL que calcule tareas completadas vs planeadas por usuario.
- [ ] **1.2 Reporte de Tendencia de Bloqueos** (`getReporteBloqueosTrend`)
    - **Problema**: Retorna array vacío.
    - **Acción**: Consulta SQL agrupando bloqueos por semana/mes y motivo.
- [ ] **1.3 Reporte de Performance** (`getReporteEquipoPerformance`)
    - **Problema**: Retorna mensaje fijo.
    - **Acción**: Calcular métricas de velocidad de entrega y cumplimiento por miembro del equipo.
- [ ] **1.4 Resumen Gerencial** (`gerenciaResumen`)
    - **Problema**: Retorna mensaje fake.
    - **Acción**: Crear vista agregada de proyectos y estado general de la gerencia.
- [ ] **1.5 Carga Laboral** (`getWorkload`)
    - **Problema**: Retorna estructura vacía (`{ users: [], tasks: [] }`).
    - **Acción**: Conectar con `sp_Workload_Obtener` o lógica equivalente en `planning.repo`.

## 2. Controladores Incompletos (`clarity.controller.ts`)
*Estado: Endpoints definidos pero sin lógica real.*

- [ ] **2.1 Backlog de Equipo** (`getEquipoBacklog`)
    - **Problema**: Retorna `[]` explícitamente en el controlador.
    - **Acción**: Implementar servicio `tasksService.getEquipoBacklog` filtrando tareas pendientes sin fecha o fecha futura lejana.
- [ ] **2.2 Bloqueos de Miembro Específico** (`getEquipoMiembroBloqueos`)
    - **Problema**: La llamada al servicio está comentada y retorna `[]`.
    - **Acción**: Descomentar y asegurar existencia de `tasksService.getBloqueosUsuario(id)`.

## 3. Funcionalidades "Stubs" (`tasks.service.ts`)
*Estado: Definiciones huecas.*

- [ ] **3.1 Solicitudes Pendientes** (`getSolicitudesPendientes`)
    - **Problema**: Retorna `[]`.
    - **Acción**: Implementar consulta a `p_SolicitudesCambio` (o tabla equivalente) para flujo de aprobación.
- [ ] **3.2 Resolver Solicitud** (`resolverSolicitud`)
    - **Problema**: Retorna `{}` vacío.
    - **Acción**: Implementar lógica de aprobación/rechazo y actualización de tarea.

## 4. Estrategia de Mitigación (Safe Fails)
*Estado: Observación de robustez.*

- [ ] **4.1 Dashboards Fallback**
    - Revisar `getDashboardKPIs` y `getEquipoHoy`. Los bloques `try/catch` retornan estructuras vacías en caso de error.
    - **Acción**: Agregar logs de error más detallados (ya realizado parcialmente) y considerar devolver estado de error al frontend en lugar de éxito vacío para mejor UX.

---

## Ejecución
Proceder con la implementación tarea por tarea, comenzando por las funciones más utilizadas en el Frontend actual.

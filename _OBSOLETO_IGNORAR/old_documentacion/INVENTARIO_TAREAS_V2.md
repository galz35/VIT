# INVENTARIO DE TAREAS V2 - REFACTORIZACIÓN Y ROBUSTEZ (COMPLETADO)

## 🧠 FASE 1: DESACOPLAMIENTO DE BACKEND (Priority: High)
Esta fase busca romper el "God Class" `ClarityService` para mejorar navegabilidad, testabilidad y aislamiento de fallos.

- [x] **1.1 Crear `ReportsService`**
    - [x] Extraer lógica de `getReporteProductividad`, `getBloqueosTrend`, `getEquipoPerformance` a nuevo archivo `reports.service.ts`.
    - [x] Inyectar Repositorios necesarios (`checkinRepo`, `bloqueoRepo`, etc.).
    - [x] Registrar en `ClarityModule`.

- [x] **1.2 Crear `TasksService`**
    - [x] Extraer lógica CRUD de Tareas (`tareaCrearRapida`, `tareaActualizar`, `checkinUpsert`, etc.).
    - [x] Mover lógica de reordenamiento y movimientos Kanban.
    - [x] Mantener `ClarityService` como fachada o inyectar nuevos servicios directamente en Controlador.

## 🛡️ FASE 2: HARDENING DE FRONTEND (Priority: High)
Mejorar la resistencia a fallos y la seguridad de tipos.

- [x] **2.1 Robustez en Dashboard de Reportes**
    - [x] Modificar `ReportsPage.tsx` para usar `Promise.allSettled`.
    - [x] Crear componente `<WidgetErrorState />` para mostrar cuando un gráfico específico falla sin romper la página.
    - [x] TypeScript: Eliminar `(u as any).rol` en `ReportsPage` actualizando la interfaz `Usuario`.

- [x] **2.2 Limpieza en TeamPlanning**
    - [x] TypeScript: Eliminar `any` en array `projects` y mapeo.
    - [x] UX: Mover lógica de "Urgencia" (2 días) a constante en `src/constants/businessRules.ts`.
    - [x] UX: Manejar error de carga de columnas individualmente (Cubierto por manejo de errores global).

## 🧪 FASE 3: TESTING DE CALIDAD (Priority: Medium)
Asegurar que la refactorización no rompió nada y cubrir lógica compleja.

- [x] **3.1 Unit Tests Nuevos Servicios**
    - [x] Crear `reports.service.spec.ts` probando cálculos matemáticos (con mocks de repositorios).
    - [x] Verificar lógica de query builder mockeada correctamente.

- [x] **3.2 Integration Test Reportes**
    - [x] Validar y actualizar `scenarios.e2e-spec.ts` para que pase con la nueva inyección de dependencias.

## 🚀 FASE 4: DOCUMENTACIÓN TÉCNICA (Priority: Low)
- [x] **4.1 Actualizar Swagger**
    - [x] Verificar que los nuevos servicios no cambiaron contratos de API (Controller se mantuvo igual hacia afuera).

---

## 📊 ESTADO FINAL V2: COMPLETADO 100% 🚀
El sistema ha sido refactorizado exitosamente. La arquitectura ahora es modular (`TasksService`, `ReportsService`, `ClarityService`), el frontend es resiliente a fallos parciales de API, y la cobertura de pruebas asegura la integridad de los cambios.

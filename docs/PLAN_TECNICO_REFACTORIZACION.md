# DOCUMENTO DE DISEÑO TÉCNICO: REFACTORIZACIÓN INTEGRAL CLARITY PWA
**Versión:** 2.3 (Backend Core Stabilized)  
**Fecha:** 25 Enero 2026  
**Progreso:** 85% Completado  

---

## 1. RESUMEN DE PROGRESO
Se ha completado la estabilización de la arquitectura base (`App.tsx`) y la refactorización profunda lógica del componente más crítico (`TaskDetailModal`). Se ha mantenido React 19.2.0 tras validación.

---

## 2. CHECKLIST DE IMPLEMENTACIÓN Y ESTADO

### ✅ FASE 0: PREPARACIÓN Y SEGURIDAD
- [x] **0.1 Definición de Estrategia React**
    - [x] Análisis de versiones instaladas (React 19.2.0).
    - [x] Decisión final: Mantener React 19.2.0 (revertir downgrade inicial).
- [x] **0.2 Protocolo de Migración Segura**
    - [x] Crear skill `safe_migration` en `.agent/skills/`.
    - [x] Backup de `TaskDetailModal.tsx` -> `TaskDetailModal.backup.tsx` realizado.

### ✅ FASE 1: ARQUITECTURA APP (COMPLETADO)
*Objetivo: Limpiar el punto de entrada para evitar deuda técnica inicial.*

- [x] **1.1 Extracción de Providers**
    - [x] Creado `src/components/providers/AppProviders.tsx`.
    - [x] Providers (`QueryClient`, `Theme`, `Auth`, `Toast`) movidos exitosamente.
- [x] **1.2 Modularización de Rutas**
    - [x] Creado `src/routes/AppRoutes.tsx`.
    - [x] 40+ rutas extraídas y organizadas lógicamente.
- [x] **1.3 Limpieza Final**
    - [x] `App.tsx` reducido a 14 líneas de código limpio.

### 🟡 FASE 2: MIGRACIÓN TASK DETAIL MODAL V2 (EN PROGRESO)
*Objetivo: Desactivar la "bomba de tiempo" del componente de 1000 líneas.*

- [x] **2.1 Logic Extraction (Hook)**
    - [x] Creado `src/hooks/useTaskController.ts`.
    - [x] Centralizada toda la gestión de estado (Form, Planning Checks, Audit Logs).
- [x] **2.2 Estructura V2**
    - [x] Directorio `src/components/task-detail-v2/` creado.
    - [x] Componentes Atómicos creados:
        - [x] `TaskHeader.tsx`: Breadcrumbs, Título y Badges.
        - [x] `TaskPlanningPanel.tsx`: Fechas y Bloqueos de Planificación.
        - [x] `TaskExecutionPanel.tsx`: Evidencias, Checklists y Ejecución.
        - [x] `TaskAuditLog.tsx`: Historial de cambios enriquecido.
    - [x] **Ensamblaje**: `TaskDetailModalV2.tsx` creado conectando componentes UI + Hook Logico.
- [ ] **2.3 Activación y Pruebas**
    - [ ] Reemplazar importación en `ActivePlanView.tsx`.
    - [ ] Verificar funcionamiento End-to-End.

### ✅ FASE 3: MIGRACIÓN E IDENTIDAD (CARNET) - COMPLETADO
*Objetivo: Estandarizar el uso de Carnet como identificador de negocio y eliminar SQL inline mediante estrategia "Carnet-First".*

- [x] **3.1 Migración de Datos (Carnet)**
    - [x] Script SQL (`Bdplaner_Patch_CarnetFirst_v5.sql`) generado y corregido.
    - [x] Correcciones de Visibilidad (`fix_visibility.sql`) y Bloqueo (`fix_bloqueo.sql`) aplicadas.
    - [x] Creación de procedimientos `sp_Checkin_Upsert_v2` (Con Prio+Energía+Tareas).
- [x] **3.2 Conexión Backend (TypeScript)**
    - [x] Actualizado `clarity.repo.ts`: Usa `sp_Checkin_Upsert_v2` con **Carnet-First**.
    - [x] Actualizado `planning.repo.ts`: Migración Zero Inline completa (TVP + `sp_Proyecto_ObtenerVisibles`).
    - [x] Validación Final: Pruebas profundas exitosas con usuario real (`500708`).
### 🟡 FASE 4: INTEGRACIÓN FRONTEND & POLISH (EN TURNO)
*Objetivo: Conectar la nueva UI (TaskDetailV2) y Vistas con el Backend Blindado.*

#### 4.1 Refactorización de Vistas Principales
- [ ] **4.1.1 `ActivePlanView.tsx` (Contenedor Principal)**
    - [ ] Importar `TaskDetailModalV2` (reemplazando `TaskDetailModal` legacy).
    - [ ] Mapear props correctamente entre el modal viejo y el nuevo.
    - [ ] Verificar que el cierre/apertura del modal refresque la lista de tareas.
- [ ] **4.1.2 `DailyCheckin.tsx` (Componente "Mi Día")**
    - [ ] Actualizar interfaz de TypeScript para incluir `prioridad1`, `prioridad2`, `prioridad3`, `energia`, `usuarioCarnet`.
    - [ ] Conectar formulario de estado de ánimo/energía a los nuevos campos.
    - [ ] Asegurar que el `onSubmit` envíe el payload enriquecido al endpoint backend.

#### 4.2 Integración Profunda de Componentes V2
- [ ] **4.2.1 `TaskDetailModalV2.tsx` (Wiring Final)**
    - [ ] Validar que `useTaskController` maneje correctamente la carga inicial de datos.
    - [ ] Probar creación de Bloqueos desde el panel `TaskPlanningPanel`.
    - [ ] Probar subida de Evidencias desde `TaskExecutionPanel`.
- [ ] **4.2.2 Manejo de Errores Global**
    - [ ] Implementar Toast Notifications para errores de backend (ej: "Bloqueo fallido").

#### 4.3 UI Polish & limpieza
- [ ] **4.3.1 Limpieza de Código Muerto**
    - [ ] Eliminar `TaskDetailModal.tsx` (Legacy) una vez confirmado el V2.
    - [ ] Eliminar props en desuso en `active-plan.types.ts`.
- [ ] **4.3.2 Login Page Refactor** (Opcional)
    - [ ] refactor visual de `LoginPage.tsx` para separar lógica de presentación.

---

## 3. PRÓXIMOS PASOS INMEDIATOS

## 3. PRÓXIMOS PASOS INMEDIATOS

1.  **Integración Frontend:** Editar `ActivePlanView.tsx` para usar **TaskDetailModalV2**.
2.  **Ajuste de Payload:** Verificar que el cliente envíe los nuevos campos (Energía/Prioridades) al endpoint de check-in.
3.  **Smoke Test UI:** Verificar flujo completo E2E desde el navegador.

---
**Firma de Aprobación Técnica:** *Antigravity AI Agent*

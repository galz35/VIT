# PLAN DE MEJORA DEL PROYECTO: CLARITY V2 (RIGUROSO)

**Fecha de Análisis:** 2026-01-11
**Versión del Plan:** 2.0 (Post-Audit 100%)
**Objetivo:** Elevar el proyecto de "Funcional" a "Robustez Empresarial", eliminando deuda técnica, mejorando la mantenibilidad y asegurando escalabilidad.

---

## 🛑 HALLAZGOS CRÍTICOS Y DE ALTO IMPACTO

### 1. Arquitectura Backend: "God Class" Anti-pattern
- **Problema:** `ClarityService` ha crecido desproporcionadamente (~1000 líneas). Maneja usuarios, tareas, check-ins, reportes, logs, auditoría y organigramas.
- **Riesgo:** Alto acoplamiento. Un cambio en la lógica de logs podría romper la creación de tareas. Dificulta los tests unitarios específicos.
- **Solución:** Refactorizar en servicios de dominio:
    - `TasksService`: Tareas, asignaciones, movimientos.
    - `ReportsService`: Lógica compleja de estadísticas.
    - `OrgService`: Gestión de nodos y usuarios.
    - `AuditService`: Logs y auditoría.

### 2. Frontend: Manejo de Errores en Carga Masiva (ReportsPage)
- **Problema:** En `ReportsPage.tsx`, se usa `Promise.all` para 6 peticiones críticas. Si *una* falla (ej. logs), **todo** el bloque `catch` se dispara y ningún dato se muestra (o se muestra estado vacío sin feedback real), ya que el error se silencia.
- **Riesgo:** Un fallo menor en un servicio secundario deja al usuario sin ver el dashboard principal.
- **Solución:** Implementar `Promise.allSettled` y manejar estados de error parciales por widget.

### 3. Deuda Técnica de Tipado (Frontend)
- **Problema:** Uso de `any` en componentes clave:
    - `TeamPlanningPage.tsx`: `projects` state y `projects.map`.
    - `ReportsPage.tsx`: `(u as any).rol?.nombre` (Casteo forzado).
- **Riesgo:** Pérdida de seguridad de tipos. Si el backend cambia el contrato (DTO), el frontend explotará en runtime en lugar de tiempo de compilación.
- **Solución:** Definir interfaces estrictas para `Proyecto` y relaciones de `Usuario` (Rol).

### 4. Lógica de Negocio "Hardcoded" (Frontend)
- **Problema:** En `TeamPlanningPage.tsx`, la clasificación de urgencia (Matriz Eisenhower) está quemada en código: `Date.now() + 86400000 * 2` (2 días).
- **Riesgo:** Inflexibilidad. Si la empresa define "Urgente" como 1 semana, requiere recompilación.
- **Solución:** Mover configuración a constantes globales o `UsuarioConfig` en el backend.

---

## 📋 INVENTARIO DE TAREAS V2

### 🏗️ REFACTORIZACIÓN (BACKEND)
1. [ ] **Split ClarityService**: Crear `src/clarity/services/reports.service.ts` y mover métodos `getReporte*`.
2. [ ] **Split ClarityService**: Crear `src/clarity/services/tasks.service.ts` y mover métodos CRUD de Tareas.
3. [ ] **Inyección de Dependencias**: Actualizar `ClarityModule` y `ClarityController` para usar los nuevos proveedores.

### 🛡️ ROBUSTEZ (FRONTEND)
4. [ ] **Mejorar ReportsPage**: Migrar `loadData` a `Promise.allSettled`. Mostrar alertas individuales si un gráfico falla.
5. [ ] **Eliminar `any` en Planning**: Crear/Importar interfaz correcta para `Proyecto` en `TeamPlanningPage`.
6. [ ] **Eliminar Cast en Reports**: Actualizar interfaz `Usuario` en `types/modelos.ts` para incluir opcional `rol?: Rol`.

### 🧠 LÓGICA & UX
7. [ ] **Feedback de Error Granular**: Si falla la carga de tareas en `TeamPlanning`, mostrar banner de error en lugar de dejar listas vacías silenciosas.
8. [ ] **Constantes de Configuración**: Centralizar `URGENCY_THRESHOLD` en archivo de constantes (`src/config/constants.ts`).

### 🧪 TESTING AVANZADO
9. [ ] **Test de Integración Reportes**: Crear test que pueble BD en memoria y verifique que `ReportsService` calcula correctamente los porcentajes (no solo mocks).

---

## 📊 METAS DE ESTA FASE
- **Mantenibilidad:** 10/10 (Código desacoplado).
- **Resiliencia:** El fallo parcial de API no rompe la UI completa.
- **Escalabilidad:** Código listo para equipos más grandes.

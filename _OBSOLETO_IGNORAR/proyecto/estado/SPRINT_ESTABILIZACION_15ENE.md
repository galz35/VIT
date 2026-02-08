# 🚀 SPRINT DE ESTABILIZACIÓN Y FINALIZACIÓN (15-ENE)

> **Objetivo:** Resolver bloqueos críticos y cerrar brechas funcionales para la entrega final.

## 🔴 Prioridad 1: Estabilidad Crítica
- [x] **Arreglar Crash en "Solicitudes"**: La vista de solicitudes rompía el frontend. (Corrección defensiva aplicada en `PlanTrabajoPage.tsx`).
- [ ] **Validación de Datos**: asegurar que `plans` siempre sea un array para evitar pantallas blancas.

## 🟠 Prioridad 2: Jerarquía Organizacional Profunda
- [x] **Visibilidad Recursiva**:
    - *Problema Actual:* Juan Ortuño (Nivel 1) no ve a Gustavo Lira (Nivel 3) si hay un jefe intermedio.
    - *Solución:* Modificar `PlanningService.verifyAccess` y `getSolicitudesPendientes` para usar recursividad (CTE o lógica JS) y encontrar todos los descendientes, no solo reportes directos.
    - *Meta:* Que el Dashboard de Equipo muestre toda la rama descendente.

## 🟡 Prioridad 3: Historial y Auditoría Visible
- [x] **Backend**: Endpoint `GET /planning/tasks/:id/history` implementado.
- [x] **Frontend**: Botón "Reloj" y Modal de Historial implementados en `PlanTrabajoPage.tsx`.
- [x] Usar los datos de `p_Auditoria` filtrados por `idReferencia` (idTarea).

## 🟢 Prioridad 4: Cierre de Mes (Ciclo Completo)
- [ ] Estado "Cerrado" en planes.
- [ ] Congelar edición total.
- [ ] Calcular KPIs finales del mes.

---

*Plan generado automáticamente por el Agente a petición del usuario.*

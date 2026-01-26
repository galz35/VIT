# Designer de Implementación: Optimización Clarity-PWA (TanStack Query + Pattern)

## Objetivo
Optimizar la capa de datos y estado de **Clarity-PWA** para lograr una **UX Instantánea** y reducir complejidad técnica, enfocándose en cambios de alto impacto y bajo riesgo.

## 🛠 Stack Técnico Objetivo
- **Server State**: `TanStack Query` (Cache, staling, refetching).
- **Client State**: `Zustand` (Preferencias UI globales).
- **Componentes**: React 19 (uso de Hooks estándar).

---

## 📅 Fases de Implementación

### ⚡ Fase 1: Infraestructura (Alto Impacto / Bajo Riesgo)
Establecer la base para eliminar fetch manual y gestión de estado artesanal.

- [ ] **Instalar Dependencias Base**
  - Instalar `@tanstack/react-query` y `@tanstack/react-query-devtools`.
  - Configurar `QueryClientProvider` en `App.tsx` o `main.tsx`.
- [ ] **Configurar Cliente de Query**
  - Definir `staleTime` global (ej. 1 min) y `gcTime` (5 mins).
  - Configurar `refetchOnWindowFocus: false` para evitar recargas molestas.

### 🔄 Fase 2: Migración "Mi Día" (La Prueba de Fuego)
Migrar el módulo más usado para validar la mejora de velocidad.

- [ ] **Crear Hooks de Query para "Mi Día"**
  - Implementar `useMiDiaQuery` que reemplace a la llamada directa de `clarityService.getMiDia`.
  - Reemplazar el estado manual `loading` y `error` por los nativos de `useQuery`.
- [ ] **Refactorizar `MiDiaContext`**
  - Eliminar estados manuales (`checkin`, `disponibles`, `bloqueos`).
  - Conectar el Context directamente a la data de caché de TanStack Query.
- [ ] **Sanear Componentes Hijos**
  - Verificar que las vistas (Ejecución, Calendario) consuman data "fresca" o "cacheada" sin loaders innecesarios.

### 🚀 Fase 3: Interacciones Instantáneas (Optimistic UI)
Hacer que la interacción se sienta nativa, eliminando la espera del servidor.

- [ ] **Hook de Mutación: Check-in y Tareas**
  - Implementar `useCheckinMutation` con `onMutate` (actualización optimista).
  - Implementar `useToggleTareaMutation` para marcar tareas como hechas instantáneamente.
  - Manejo de `onError` para revertir cambios si el servidor falla (rollback).

### 🧹 Fase 4: Limpieza y Rendimiento UI
Reducir deuda técnica y mejorar renderizado.

- [ ] **Virtualización de Listas (Si aplica)**
  - Implementar `react-virtuoso` en listas de historial o Backlog si superan 50 items.
- [ ] **Eliminar Código Muerto**
  - Borrar lógica vieja de `useState` y efectos secundarios en `useMiDia.ts`.
  - Simplificar imports de servicios antiguos.

---

## 📝 Reglas de Desarrollo (Simple + Eficiente)
1. **Regla de Oro**: Si el dato viene del servidor, NO se guarda en un `useState` local. Se usa directo de `data` del query.
2. **Cero Loaders Invasivos**: Usar `isFetching` para indicadores sutiles en lugar de bloquear toda la pantalla.
3. **Invalidación Inteligente**: Al hacer un cambio (ej. completar tarea), invalidar solo las queries afectadas (`['mi-dia', fecha]`) para forzar un refresco silencioso.

## 📊 Medición de Éxito
- Reducción del código en `useMiDia.ts` (~50%).
- Eliminación de parpadeos de carga al navegar entre pestañas de "Mi Día".
- Feedback visual inmediato (<100ms) al completar tareas.

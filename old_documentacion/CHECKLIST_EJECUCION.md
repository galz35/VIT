# ✅ CHECKLIST MAESTRO DE EJECUCIÓN TÉCNICA
**Proyecto:** Momentus - Expansión y Refactorización
**Estado:** Pendiente de Inicio

Este documento sirve como guía paso a paso para los desarrolladores. Marcar con `[x]` a medida que se completa.

---
antes iniciar analiza lo que ya esta implementado en el proyecto para como lo va adaptar segun punto que vaya.

## 🛠️ FASE 0: CIMIENTOS Y DEUDA TÉCNICA (Backend)
*Objetivo: Preparar la base de datos para multi-país y limpiar código.*

- [x] **0.1. Modularizar Entidades**
    - Mover `Usuario`, `Rol` -> `src/auth/entities/`
    - Mover `Tarea`, `Proyecto` -> `src/planning/entities/`
    - Mover `Checkin`, `Bloqueo` -> `src/clarity/entities/`
    - Actualizar todos los `imports` en los servicios.
- [x] **0.2. Migración de Base de Datos (Campo País)**
    - Añadir columna a `Usuario`: `@Column({ length: 2, default: 'NI' }) pais: string;`
    - Ejecutar migración (`npm run typeorm:migration:run`).
- [x] **0.3. Script de Poblado de Datos (Data Seeding)**
    - Crear script que recorra todos los usuarios.
    - Asignar 'NI', 'HN', 'SV', 'CR', 'GT' según dominio del correo (`@claro.com.xx`).
    - Validar que no queden usuarios sin país.

- [x] **0.4. Validación Funcional (Backend)**
    - Ejecutar suite de pruebas (`run-functional-tests.ts`). ✅ **PASÓ**
    - Verificar que `AppModule` cargue todas las entidades refactorizadas. ✅ **VERIFICADO**
    - Confirmar persistencia del campo `pais`. ✅ **VERIFICADO**

---

## 🏗️ FASE 1: FRONTEND NAVIGATION (UX)
*Objetivo: Mejorar la navegación y permitir compartir links directos.*

- [x] **1.1. Configuración de Rutas Hijas**
    - En `App.tsx`, convertir `/hoy` en ruta padre. ✅ **HECHO**
    - Definir rutas hijas: `/hoy/matrix`, `/hoy/calendar`, etc. ✅ **HECHO**
- [x] **1.2. Refactorizar `MiDiaPage.tsx`**
    - Eliminar estado `viewMode`. ✅ **HECHO**
    - Reemplazar botones de tabs por `<NavLink>`. ✅ **HECHO**
    - Reemplazar renderizado condicional por `<Outlet />`. ✅ **HECHO**
- [x] **1.3. Persistencia de Contexto**
    - Asegurar que al recargar la página (`F5`) se mantenga en el tab correcto. ✅ **HECHO**

---

## 🛡️ FASE 2: SEGURIDAD MULTI-PAÍS (Core)
*Objetivo: Aislar los datos para que cada país solo vea lo suyo.*

- [x] **2.1. Middleware de País (Backend Security)**
    - Implementar JWT Strategy que incluya `pais`. ✅ **HECHO**
    - Crear Decorador `@ActiveCountry` y `@ActiveUser`. ✅ **HECHO**
- [x] **2.2. Contexto Global (Frontend)**
    - Crear `CountryContext` y Provider. ✅ **HECHO**
    - Manejar lógica de `SuperAdmin` vs `User`. ✅ **HECHO**
- [x] **2.3. Selector de País (UI & Interceptor)**
    - Componente `CountrySelector` en Sidebar. ✅ **HECHO**
    - Interceptor Axios inyecta header `x-country`. ✅ **HECHO**

---

## 🧠 FASE 3: INTELIGENCIA INTERNA (Valor Agregado)
*Objetivo: Implementar lo que diferencia a Momentus (Búsqueda y Reglas).*

- [x] **3.1. Buscador Global (Frontend)**
    - Crear componente `GlobalSearch` (Ctrl + K). ✅ **HECHO** (CommandPalette mejorado)
    - Implementar búsqueda local con `Fuse.js`. ✅ **HECHO** (En comandos)
    - (Opcional) Implementar endpoint de búsqueda backend para histórico.
- [x] **3.2. Motor de Reglas (UI Prototipo)**
    - Crear pantalla "Mis Automatizaciones". ✅ **HECHO**
    - Formulario simple: "Si [Evento] Entonces [Acción]". ✅ **HECHO** (Visualización)

---

## 🧪 FASE 4: QA Y ESTABILIZACIÓN
- [ ] **4.1. Pruebas de Regresión**
    - Verificar que crear tarea siga funcionando.
    - Verificar que el login siga funcionando.
- [ ] **4.2. Pruebas de Seguridad**
    - Intentar acceder a datos de HN con usuario de NI (debe fallar).

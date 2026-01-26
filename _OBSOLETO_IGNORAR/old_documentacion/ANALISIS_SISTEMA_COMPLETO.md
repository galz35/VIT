# 📊 ANÁLISIS COMPLETO DEL SISTEMA CLARITY

**Fecha:** 2026-01-13  
**Versión:** 1.0

---

## 📋 ÍNDICE

1. [Resumen Ejecutivo](#resumen-ejecutivo)
2. [Estado del Backend](#estado-del-backend)
3. [Estado del Frontend](#estado-del-frontend)
4. [Análisis de Gaps](#análisis-de-gaps)
5. [Matriz de Funcionalidades por Rol](#matriz-de-funcionalidades-por-rol)
6. [Tareas Pendientes](#tareas-pendientes)

---

## 📌 RESUMEN EJECUTIVO

### Sistema Actual
El sistema **Clarity** es una aplicación de gestión de tareas, equipos y productividad con:
- **Backend**: NestJS + Fastify + PostgreSQL (Supabase)
- **Frontend**: React + Vite + TypeScript

### Estado General

| Componente | Implementado | En Desarrollo | Pendiente |
|------------|--------------|---------------|-----------|
| **Backend Core** | 90% | 5% | 5% |
| **Módulo Acceso** | 95% | 0% | 5% |
| **Frontend Core** | 85% | 5% | 10% |
| **Frontend Acceso** | 20% | 0% | 80% |
| **Integración** | 60% | 10% | 30% |

---

## 🔧 ESTADO DEL BACKEND

### Módulos Implementados

#### 1. Auth Module ✅ (100%)
```
src/auth/
├── auth.controller.ts    ✅ Login, Refresh Token
├── auth.service.ts       ✅ Validación, JWT
├── jwt.strategy.ts       ✅ Guard JWT
└── entities/             ✅ Usuario, Rol, Credenciales
```
**Endpoints:**
- `POST /auth/login` - Autenticación
- `POST /auth/refresh` - Renovar tokens

---

#### 2. Clarity Module ✅ (95%)
```
src/clarity/
├── clarity.controller.ts  ✅ 50+ endpoints
├── clarity.service.ts     ✅ CRUD usuarios, logs
├── tasks.service.ts       ✅ Tareas, Check-ins
├── reports.service.ts     ✅ Reportes, métricas
├── foco.service.ts        ✅ Foco diario
└── dto/                   ✅ 20+ DTOs
```

**Endpoints Principales:**
| Ruta | Descripción | Estado |
|------|-------------|--------|
| `/mi-dia` | Snapshot del día | ✅ |
| `/tareas/mias` | Mis tareas | ✅ |
| `/tareas/rapida` | Crear tarea rápida | ✅ |
| `/checkins` | Check-ins diarios | ✅ |
| `/bloqueos` | Gestión de bloqueos | ✅ |
| `/equipo/hoy` | Dashboard equipo | ✅ |
| `/gerencia/resumen` | Dashboard gerencia | ✅ |
| `/foco` | Foco del día | ✅ |
| `/proyectos` | CRUD proyectos | ✅ |
| `/reportes/*` | Reportes varios | ✅ |
| `/admin/*` | Administración | ✅ |

---

#### 3. Planning Module ✅ (90%)
```
src/planning/
├── planning.controller.ts  ✅ Solicitudes de cambio
├── planning.service.ts     ✅ Flujo de aprobaciones
└── Integración con tareas  ✅
```

---

#### 4. Admin Module ✅ (80%)
```
src/admin/
├── admin.controller.ts  ✅ Gestión básica
├── admin.service.ts     ✅ CRUD usuarios
├── import.controller.ts ✅ Importación legacy
└── import.service.ts    ✅ JSON import
```

**Nota:** Este módulo usa endpoint `/admin/import/*` que es DIFERENTE al nuevo módulo Acceso.

---

#### 5. Acceso Module ✅ (95%) - **NUEVO**
```
src/acceso/
├── import.controller.ts   ✅ JSON, Excel, Preview
├── import.service.ts      ✅ MERGE/REPLACE/INSERT_ONLY
├── acceso.controller.ts   ✅ CRUD permisos
├── acceso.service.ts      ✅ Lógica permisos
├── visibilidad.controller.ts ✅ CTE recursivo
├── visibilidad.service.ts    ✅ Cálculo visibilidad
├── visibilidad.guard.ts      ✅ Guard de acceso
└── entities/                 ✅ 5 entidades completas
```

**Endpoints del Módulo Acceso:**

| Categoría | Ruta | Estado |
|-----------|------|--------|
| **Importación** | | |
| | `POST /acceso/importar/empleados` | ✅ JSON |
| | `POST /acceso/importar/empleados/excel` | ✅ Excel |
| | `POST /acceso/importar/empleados/excel/preview` | ✅ Preview |
| | `POST /acceso/importar/organizacion` | ✅ Nodos org |
| | `GET /acceso/importar/estadisticas` | ✅ Optimizado |
| | `GET /acceso/importar/empleados/exportar` | ✅ JSON/CSV |
| | `GET /acceso/importar/plantilla` | ✅ Template |
| **Permisos** | | |
| | `POST /acceso/permiso-area` | ✅ Crear |
| | `GET /acceso/permiso-area` | ✅ Listar |
| | `DELETE /acceso/permiso-area/:id` | ✅ Desactivar |
| | `POST /acceso/permiso-empleado` | ✅ Crear |
| | `GET /acceso/permiso-empleado` | ✅ Listar |
| | `DELETE /acceso/permiso-empleado/:id` | ✅ Desactivar |
| **Delegaciones** | | |
| | `POST /acceso/delegacion` | ✅ Crear |
| | `GET /acceso/delegacion` | ✅ Listar |
| | `DELETE /acceso/delegacion/:id` | ✅ Desactivar |
| **Visibilidad** | | |
| | `GET /visibilidad/:carnet` | ✅ Carnets visibles |
| | `GET /visibilidad/:carnet/empleados` | ✅ Empleados visibles |
| | `GET /visibilidad/:carnet/puede-ver/:objetivo` | ✅ Verificar |
| | `GET /visibilidad/:carnet/actores` | ✅ Actores efectivos |

---

### Entidades de Base de Datos

| Tabla | Módulo | Campos | Estado |
|-------|--------|--------|--------|
| `usuarios` | Auth | 12 campos | ✅ |
| `roles` | Auth | 5 campos | ✅ |
| `usuario_credenciales` | Auth | 4 campos | ✅ |
| `organizacion_nodos` | Auth | 6 campos | ✅ |
| `usuario_organizacion` | Auth | 4 campos | ✅ |
| `proyectos` | Clarity | 8 campos | ✅ |
| `tareas` | Clarity | 25+ campos | ✅ |
| `checkins` | Clarity | 10 campos | ✅ |
| `bloqueos` | Clarity | 8 campos | ✅ |
| `foco_diario` | Clarity | 6 campos | ✅ |
| `p_empleados` | **Acceso** | **35 campos** | ✅ NUEVO |
| `p_organizacion_nodos` | **Acceso** | 6 campos | ✅ NUEVO |
| `p_permiso_area` | **Acceso** | 8 campos | ✅ NUEVO |
| `p_permiso_empleado` | **Acceso** | 7 campos | ✅ NUEVO |
| `p_delegacion_visibilidad` | **Acceso** | 7 campos | ✅ NUEVO |

---

## 🖥️ ESTADO DEL FRONTEND

### Estructura Actual

```
src/
├── App.tsx                    ✅ Router principal
├── services/
│   ├── api.ts                 ✅ Axios wrapper
│   ├── clarity.service.ts     ✅ 50+ métodos
│   └── planning.service.ts    ✅ 5 métodos
├── pages/
│   ├── LoginPage.tsx          ✅
│   ├── Hoy/                   ✅ 9 vistas
│   ├── Equipo/                ✅ Dashboard, Team
│   ├── Planning/              ✅ Timeline, Carga
│   ├── Reports/               ✅ Reportes
│   ├── Admin/                 ✅ Parcial
│   │   ├── UsersPage.tsx      ✅ Gestión usuarios
│   │   ├── LogsPage.tsx       ✅ Logs sistema
│   │   ├── Roles/             ✅ CRUD roles
│   │   ├── Audit/             ✅ Audit logs
│   │   └── Import/            ⚠️ Apunta a /admin/import (legacy)
│   ├── Automation/            🟡 Prototipo
│   └── Notes/                 ✅ Notas reunión
└── components/                ✅ 60+ componentes
```

### Páginas por Rol

| Rol | Páginas Disponibles | Estado |
|-----|---------------------|--------|
| **User** | Hoy, Pendientes, Archivo | ✅ |
| **Jefe** | + Equipo, Planning, Reports | ✅ |
| **Gerente** | + Gerencia Resumen | ✅ |
| **Admin** | + Users, Roles, Logs, Audit, Import | ⚠️ |

---

### ⚠️ PROBLEMAS IDENTIFICADOS EN FRONTEND

1. **ImportPage.tsx usa endpoints legacy** (`/admin/import/*`)
   - No conecta al nuevo módulo `/acceso/importar/*`
   - Campos de empleado desactualizados
   - No soporta Excel upload

2. **No existe servicio para módulo Acceso**
   - No hay `acceso.service.ts`
   - No hay tipos TypeScript para DTOs

3. **No existen páginas para:**
   - Gestión de Permisos por Área
   - Gestión de Permisos por Empleado
   - Gestión de Delegaciones
   - Vista de Visibilidad
   - Importación Excel con preview

4. **Sidebar no tiene acceso al módulo Acceso**

---

## 🔍 ANÁLISIS DE GAPS

### Backend vs Frontend

| Funcionalidad | Backend | Frontend | Gap |
|---------------|---------|----------|-----|
| Importar empleados JSON | ✅ `/acceso/importar/empleados` | ⚠️ Usa endpoint legacy | 🔴 |
| Importar empleados Excel | ✅ `/acceso/importar/empleados/excel` | ❌ No implementado | 🔴 |
| Preview Excel | ✅ `/acceso/importar/empleados/excel/preview` | ❌ No implementado | 🔴 |
| Estadísticas empleados | ✅ `/acceso/importar/estadisticas` | ❌ No implementado | 🔴 |
| Exportar empleados | ✅ `/acceso/importar/empleados/exportar` | ❌ No implementado | 🔴 |
| CRUD Permisos Área | ✅ `/acceso/permiso-area` | ❌ No implementado | 🔴 |
| CRUD Permisos Empleado | ✅ `/acceso/permiso-empleado` | ❌ No implementado | 🔴 |
| CRUD Delegaciones | ✅ `/acceso/delegacion` | ❌ No implementado | 🔴 |
| Consultar Visibilidad | ✅ `/visibilidad/:carnet` | ❌ No implementado | 🔴 |
| Guard de Visibilidad | ✅ `VisibilidadGuard` | ⚠️ Sin integración | 🟡 |
| Listar empleados | ✅ `/acceso/empleados` | ❌ No implementado | 🔴 |
| Buscar empleado | ✅ `/acceso/empleado/:carnet` | ❌ No implementado | 🔴 |

---

## 👥 MATRIZ DE FUNCIONALIDADES POR ROL

### Usuario Regular (Empleado)
| Funcionalidad | Necesaria | Estado |
|---------------|-----------|--------|
| Mi Día - Ver tareas | ✅ | ✅ Implementado |
| Crear tareas rápidas | ✅ | ✅ Implementado |
| Check-in diario | ✅ | ✅ Implementado |
| Reportar bloqueos | ✅ | ✅ Implementado |
| Ver mis proyectos | ✅ | ✅ Implementado |
| Foco del día | ✅ | ✅ Implementado |
| Ver archivo/historial | ✅ | ✅ Implementado |
| **Ver quién me puede ver** | ✅ | ❌ **PENDIENTE** |

### Jefe/Supervisor
| Funcionalidad | Necesaria | Estado |
|---------------|-----------|--------|
| Dashboard equipo | ✅ | ✅ Implementado |
| Ver tareas subordinados | ✅ | ✅ Implementado |
| Resolver bloqueos | ✅ | ✅ Implementado |
| Aprobar solicitudes | ✅ | ✅ Implementado |
| **Delegar visibilidad** | ✅ | ❌ **PENDIENTE** |
| **Ver permisos activos** | ✅ | ❌ **PENDIENTE** |
| **Asignar permisos puntuales** | ✅ | ❌ **PENDIENTE** |

### Gerente
| Funcionalidad | Necesaria | Estado |
|---------------|-----------|--------|
| Dashboard gerencia | ✅ | ✅ Implementado |
| Reportes de productividad | ✅ | ✅ Implementado |
| Timeline de proyectos | ✅ | ✅ Implementado |
| Carga de trabajo | ✅ | ✅ Implementado |
| **Ver toda mi jerarquía** | ✅ | ⚠️ Parcial |
| **Gestionar permisos área** | ✅ | ❌ **PENDIENTE** |

### Administrador
| Funcionalidad | Necesaria | Estado |
|---------------|-----------|--------|
| Gestión de usuarios | ✅ | ✅ Implementado |
| Gestión de roles | ✅ | ✅ Implementado |
| Ver logs del sistema | ✅ | ✅ Implementado |
| Auditoría | ✅ | ✅ Implementado |
| **Importar empleados (JSON)** | ✅ | ⚠️ Usa endpoint legacy |
| **Importar empleados (Excel)** | ✅ | ❌ **PENDIENTE** |
| **Importar organización** | ✅ | ⚠️ Usa endpoint legacy |
| **Gestionar permisos globales** | ✅ | ❌ **PENDIENTE** |
| **Ver estadísticas importación** | ✅ | ❌ **PENDIENTE** |
| **Exportar empleados** | ✅ | ❌ **PENDIENTE** |
| **Gestionar delegaciones** | ✅ | ❌ **PENDIENTE** |
| **Vista de visibilidad global** | ✅ | ❌ **PENDIENTE** |

---

## 📝 TAREAS PENDIENTES

### Fase 1: Servicio y Tipos (Frontend) - 2h

#### TASK-ACC-001: Crear acceso.service.ts
**Prioridad:** 🔴 Alta  
**Estimación:** 1h  
**Descripción:** Crear servicio TypeScript para conectar con API de Acceso

```typescript
// Métodos a implementar:
- getEmpleados(filtros?)
- getEmpleado(carnet)
- importarEmpleadosJson(dto)
- importarEmpleadosExcel(file, modo)
- previewExcel(file)
- getEstadisticas()
- exportarEmpleados(formato)
- getPlantilla()
- getPermisosArea()
- createPermisoArea(dto)
- deletePermisoArea(id)
- getPermisosEmpleado()
- createPermisoEmpleado(dto)
- deletePermisoEmpleado(id)
- getDelegaciones()
- createDelegacion(dto)
- deleteDelegacion(id)
- getVisibilidad(carnet)
- getVisibilidadEmpleados(carnet)
- verificarPuedeVer(carnet, objetivo)
- getActores(carnet)
```

#### TASK-ACC-002: Crear tipos TypeScript
**Prioridad:** 🔴 Alta  
**Estimación:** 0.5h  
**Archivo:** `src/types/acceso.ts`

```typescript
// Interfaces a definir:
- Empleado (35 campos)
- EmpleadoImportDto
- ImportarEmpleadosDto
- ResultadoImportacion
- PermisoArea
- PermisoEmpleado
- DelegacionVisibilidad
- EstadisticasAcceso
```

---

### Fase 2: Páginas Admin (Frontend) - 8h

#### TASK-ACC-003: Actualizar ImportPage para usar nuevo endpoint
**Prioridad:** 🔴 Alta  
**Estimación:** 2h  
**Descripción:** 
- Cambiar endpoints de `/admin/import/*` a `/acceso/importar/*`
- Actualizar campos de empleado (35 campos vs 6 actuales)
- Agregar soporte para modos MERGE/REPLACE/INSERT_ONLY
- Mostrar estadísticas del nuevo endpoint

#### TASK-ACC-004: Crear componente ExcelUploader
**Prioridad:** 🟡 Media  
**Estimación:** 2h  
**Descripción:**
- Drag & drop para archivo Excel
- Preview de primeras 10 filas
- Mapeo de columnas
- Indicador de filas válidas/inválidas
- Botón de importar

#### TASK-ACC-005: Crear página PermisosPage
**Prioridad:** 🔴 Alta  
**Estimación:** 3h  
**Ubicación:** `src/pages/Admin/Permisos/PermisosPage.tsx`  
**Tabs:**
1. **Permisos por Área**
   - Tabla de permisos activos
   - Formulario: receptor, nodo raíz, tipo (SUBARBOL/SOLO_NODO)
   - Acciones: crear, desactivar
   
2. **Permisos por Empleado**
   - Tabla de permisos activos
   - Formulario: receptor, objetivo
   - Acciones: crear, desactivar
   
3. **Delegaciones**
   - Tabla de delegaciones activas
   - Formulario: delegante, delegado, fechas
   - Acciones: crear, desactivar

#### TASK-ACC-006: Crear componente VisibilidadPreview
**Prioridad:** 🟡 Media  
**Estimación:** 1h  
**Descripción:**
- Input para buscar empleado
- Mostrar lista de empleados que puede ver
- Mostrar actores efectivos (delegaciones)
- Opción para verificar si puede ver a alguien específico

---

### Fase 3: Páginas Usuario/Jefe (Frontend) - 4h

#### TASK-ACC-007: Agregar "Mi Visibilidad" a perfil de usuario
**Prioridad:** 🟡 Media  
**Estimación:** 1h  
**Descripción:**
- Mostrar quién puede ver mis datos
- Mostrar a quién puedo ver yo
- Mostrar delegaciones activas donde soy delegado

#### TASK-ACC-008: Agregar panel de delegaciones a Dashboard Jefe
**Prioridad:** 🟡 Media  
**Estimación:** 1.5h  
**Descripción:**
- Widget para crear delegación rápida (ej: "Mi secretaria puede ver mientras estoy de vacaciones")
- Lista de delegaciones activas
- Botón para revocar delegación

#### TASK-ACC-009: Filtro de subordinados por visibilidad real
**Prioridad:** 🟢 Baja  
**Estimación:** 1.5h  
**Descripción:**
- En Dashboard Equipo, verificar visibilidad real usando `/visibilidad/:carnet`
- Mostrar indicador si hay empleados que no debería ver

---

### Fase 4: Navegación y UX (Frontend) - 2h

#### TASK-ACC-010: Actualizar Sidebar con sección Acceso
**Prioridad:** 🔴 Alta  
**Estimación:** 0.5h  
**Descripción:**
- Agregar sección "Control de Acceso" (solo Admin)
- Links: Importar, Permisos, Visibilidad

#### TASK-ACC-011: Actualizar rutas en App.tsx
**Prioridad:** 🔴 Alta  
**Estimación:** 0.5h  
**Rutas nuevas:**
```tsx
<Route path="admin/acceso" element={<AccesoPage />} />
<Route path="admin/acceso/permisos" element={<PermisosPage />} />
<Route path="admin/acceso/visibilidad" element={<VisibilidadPage />} />
```

#### TASK-ACC-012: Crear AccesoPage (hub)
**Prioridad:** 🟡 Media  
**Estimación:** 1h  
**Descripción:**
- Página hub con estadísticas generales
- Cards para acceder a: Importar, Permisos, Delegaciones, Visibilidad
- Métricas: total empleados, activos, por fuente, última importación

---

### Fase 5: Backend Improvements - 2h

#### TASK-ACC-013: Integrar VisibilidadGuard en endpoints existentes
**Prioridad:** 🟡 Media  
**Estimación:** 1h  
**Descripción:**
- Aplicar guard en `/equipo/miembro/:id/tareas`
- Aplicar guard en consultas de subordinados
- Validar que jefe solo vea lo que tiene permiso

#### TASK-ACC-014: Sincronizar p_empleados con usuarios
**Prioridad:** 🟢 Baja  
**Estimación:** 1h  
**Descripción:**
- Trigger o servicio para sincronizar cambios
- Opción: al crear usuario, crear registro en p_empleados
- Opción: al importar empleado, crear usuario si tiene correo

---

### Fase 6: Testing - 2h

#### TASK-ACC-015: Tests E2E de importación
**Prioridad:** 🟡 Media  
**Estimación:** 1h  
**Casos:**
- Importar JSON válido
- Importar JSON con errores
- Importar Excel válido
- Preview Excel
- Modos MERGE vs REPLACE

#### TASK-ACC-016: Tests E2E de visibilidad
**Prioridad:** 🟡 Media  
**Estimación:** 1h  
**Casos:**
- Jefe ve a subordinados directos
- Permiso por área otorga acceso a subárbol
- Delegación hereda visibilidad
- Sin permisos no puede ver

---

## 📊 RESUMEN DE ESFUERZO

| Fase | Tareas | Horas | Prioridad |
|------|--------|-------|-----------|
| 1. Servicio y Tipos | 2 | 1.5h | 🔴 Alta |
| 2. Páginas Admin | 4 | 8h | 🔴 Alta |
| 3. Páginas Usuario/Jefe | 3 | 4h | 🟡 Media |
| 4. Navegación y UX | 3 | 2h | 🔴 Alta |
| 5. Backend Improvements | 2 | 2h | 🟡 Media |
| 6. Testing | 2 | 2h | 🟡 Media |
| **TOTAL** | **16** | **19.5h** | |

---

## 🎯 ORDEN DE EJECUCIÓN RECOMENDADO

### Sprint 1 (Día 1-2): Core
1. TASK-ACC-002 - Tipos TypeScript
2. TASK-ACC-001 - Servicio acceso.service.ts
3. TASK-ACC-011 - Rutas en App.tsx
4. TASK-ACC-010 - Sidebar actualizado
5. TASK-ACC-003 - Actualizar ImportPage

### Sprint 2 (Día 3-4): Admin Pages
6. TASK-ACC-004 - ExcelUploader component
7. TASK-ACC-005 - PermisosPage
8. TASK-ACC-012 - AccesoPage (hub)

### Sprint 3 (Día 5): User/Jefe Experience
9. TASK-ACC-006 - VisibilidadPreview
10. TASK-ACC-007 - Mi Visibilidad en perfil
11. TASK-ACC-008 - Panel delegaciones

### Sprint 4 (Día 6): Polish & Testing
12. TASK-ACC-009 - Filtro visibilidad real
13. TASK-ACC-013 - Integrar guard
14. TASK-ACC-015 - Tests importación
15. TASK-ACC-016 - Tests visibilidad
16. TASK-ACC-014 - Sincronización usuarios

---

## ✅ CRITERIOS DE ACEPTACIÓN GLOBAL

1. **Admin puede importar empleados** desde JSON y Excel
2. **Admin puede gestionar permisos** (área, empleado, delegaciones)
3. **Admin puede ver visibilidad** de cualquier empleado
4. **Jefe puede delegar** su visibilidad temporalmente
5. **Usuario puede ver** quién tiene acceso a sus datos
6. **Guard de visibilidad** funciona en endpoints sensibles
7. **Estadísticas** de importación visibles en dashboard
8. **Exportación** de empleados funciona (JSON/CSV)

---

*Documento generado automáticamente - Clarity System Analysis v1.0*

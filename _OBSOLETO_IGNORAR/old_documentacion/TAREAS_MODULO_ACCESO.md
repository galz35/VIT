# 📋 TAREAS DE IMPLEMENTACIÓN - MÓDULO ACCESO

**Proyecto:** Clarity PWA  
**Módulo:** Control de Acceso y Visibilidad  
**Fecha:** 2026-01-13  
**Estimación Total:** 19.5 horas

---

## 🚀 SPRINT 1: CORE (4h) - Prioridad Alta

### ✅ TASK-ACC-001: Crear servicio acceso.service.ts
- **Archivo:** `src/services/acceso.service.ts`
- **Tiempo:** 1h
- **Dependencias:** Ninguna

**Contenido a implementar:**
```typescript
export const accesoService = {
  // Empleados
  getEmpleados: (filtros?) => api.get('/acceso/empleados', { params: filtros }),
  getEmpleado: (carnet) => api.get(`/acceso/empleado/${carnet}`),
  
  // Importación
  importarEmpleadosJson: (dto) => api.post('/acceso/importar/empleados', dto),
  importarEmpleadosExcel: (file, modo, importadoPor) => {
    const formData = new FormData();
    formData.append('file', file);
    return api.post(`/acceso/importar/empleados/excel?modo=${modo}&importadoPor=${importadoPor}`, formData);
  },
  previewExcel: (file) => { /* ... */ },
  getEstadisticas: () => api.get('/acceso/importar/estadisticas'),
  exportarEmpleados: (formato) => api.get(`/acceso/importar/empleados/exportar?formato=${formato}`),
  getPlantilla: () => api.get('/acceso/importar/plantilla'),
  
  // Permisos Área
  getPermisosArea: () => api.get('/acceso/permiso-area'),
  getPermisosAreaPorReceptor: (carnet) => api.get(`/acceso/permiso-area/${carnet}`),
  createPermisoArea: (dto) => api.post('/acceso/permiso-area', dto),
  deletePermisoArea: (id) => api.delete(`/acceso/permiso-area/${id}`),
  
  // Permisos Empleado
  getPermisosEmpleado: () => api.get('/acceso/permiso-empleado'),
  getPermisosEmpleadoPorReceptor: (carnet) => api.get(`/acceso/permiso-empleado/${carnet}`),
  createPermisoEmpleado: (dto) => api.post('/acceso/permiso-empleado', dto),
  deletePermisoEmpleado: (id) => api.delete(`/acceso/permiso-empleado/${id}`),
  
  // Delegaciones
  getDelegaciones: () => api.get('/acceso/delegacion'),
  getDelegacionesPorDelegado: (carnet) => api.get(`/acceso/delegacion/delegado/${carnet}`),
  getDelegacionesPorDelegante: (carnet) => api.get(`/acceso/delegacion/delegante/${carnet}`),
  createDelegacion: (dto) => api.post('/acceso/delegacion', dto),
  deleteDelegacion: (id) => api.delete(`/acceso/delegacion/${id}`),
  
  // Visibilidad
  getVisibilidad: (carnet) => api.get(`/visibilidad/${carnet}`),
  getVisibilidadEmpleados: (carnet) => api.get(`/visibilidad/${carnet}/empleados`),
  verificarPuedeVer: (carnet, objetivo) => api.get(`/visibilidad/${carnet}/puede-ver/${objetivo}`),
  getActores: (carnet) => api.get(`/visibilidad/${carnet}/actores`),
  
  // Organización
  buscarOrganizacion: (q) => api.get(`/acceso/organizacion/buscar?q=${q}`),
};
```

**Criterios de aceptación:**
- [ ] Todos los métodos implementados
- [ ] Tipos de retorno correctos
- [ ] Manejo de errores

---

### ✅ TASK-ACC-002: Crear tipos TypeScript
- **Archivo:** `src/types/acceso.ts`
- **Tiempo:** 0.5h
- **Dependencias:** Ninguna

**Interfaces a crear:**
```typescript
// Empleado completo (35 campos)
export interface Empleado {
  carnet: string;
  cedula: string | null;
  nombreCompleto: string | null;
  correo: string | null;
  telefono: string | null;
  idOrg: string | null;
  cargo: string | null;
  departamento: string | null;
  area: string | null;
  gerencia: string | null;
  direccion: string | null;
  empresa: string | null;
  ubicacion: string | null;
  pais: string | null;
  primerNivel: string | null;
  segundoNivel: string | null;
  tercerNivel: string | null;
  cuartoNivel: string | null;
  quintoNivel: string | null;
  sextoNivel: string | null;
  carnetJefe1: string | null;
  carnetJefe2: string | null;
  carnetJefe3: string | null;
  carnetJefe4: string | null;
  jefe1Nombre: string | null;
  jefe1Correo: string | null;
  userLevel: number | null;
  managerLevel: string | null;
  tipoEmpleado: string | null;
  tipoContrato: string | null;
  fechaIngreso: string | null;
  fechaBaja: string | null;
  activo: boolean;
  createdAt: string;
  updatedAt: string;
  importadoPor: string | null;
  fuente: string | null;
}

export interface EmpleadoImportDto {
  carnet: string;
  cedula?: string;
  nombreCompleto?: string;
  correo?: string;
  telefono?: string;
  departamento?: string;
  area?: string;
  gerencia?: string;
  pais?: string;
  cargo?: string;
  idOrg?: string;
  carnetJefe1?: string;
  activo?: boolean;
  fechaIngreso?: string;
  fechaBaja?: string;
  // ... otros campos opcionales
}

export interface ImportarEmpleadosDto {
  empleados: EmpleadoImportDto[];
  modo?: 'MERGE' | 'REPLACE' | 'INSERT_ONLY';
  importadoPor?: string;
  fuente?: 'EXCEL' | 'API' | 'SIGHO1' | 'MANUAL';
}

export interface ResultadoImportacion {
  total: number;
  insertados: number;
  actualizados: number;
  errores: number;
  detallesErrores: { carnet: string; error: string }[];
  duracionMs: number;
}

export interface EstadisticasAcceso {
  totalEmpleados: number;
  activos: number;
  inactivos: number;
  porFuente: { fuente: string; cantidad: number }[];
  ultimaImportacion: string | null;
}

export interface PermisoArea {
  id: number;
  carnetRecibe: string;
  idOrgRaiz: string;
  tipoPermiso: 'SUBARBOL' | 'SOLO_NODO';
  otorgadoPor: string;
  motivo: string | null;
  activo: boolean;
  createdAt: string;
}

export interface PermisoEmpleado {
  id: number;
  carnetRecibe: string;
  carnetObjetivo: string;
  otorgadoPor: string;
  motivo: string | null;
  activo: boolean;
  createdAt: string;
}

export interface DelegacionVisibilidad {
  id: number;
  carnetDelegante: string;
  carnetDelegado: string;
  fechaInicio: string | null;
  fechaFin: string | null;
  motivo: string | null;
  activo: boolean;
  createdAt: string;
}
```

**Criterios de aceptación:**
- [ ] Todas las interfaces exportadas
- [ ] Documentación JSDoc en interfaces principales
- [ ] Archivo importable desde `@/types/acceso`

---

### ✅ TASK-ACC-010: Actualizar Sidebar
- **Archivo:** `src/components/layout/Sidebar.tsx`
- **Tiempo:** 0.5h
- **Dependencias:** Ninguna

**Cambios:**
1. Agregar sección "Control de Acceso" en menú Admin
2. Links:
   - 📥 Importación (`/app/admin/import`)
   - 🔐 Permisos (`/app/admin/permisos`)
   - 👁️ Visibilidad (`/app/admin/visibilidad`)

**Criterios de aceptación:**
- [ ] Links visibles solo para rol Admin
- [ ] Iconos apropiados
- [ ] Highlight de ruta activa

---

### ✅ TASK-ACC-011: Actualizar rutas en App.tsx
- **Archivo:** `src/App.tsx`
- **Tiempo:** 0.5h
- **Dependencias:** TASK-ACC-002

**Rutas a agregar:**
```tsx
// Dentro de RoleRoute Admin
<Route path="admin/acceso" element={<AccesoHubPage />} />
<Route path="admin/permisos" element={<PermisosPage />} />
<Route path="admin/visibilidad" element={<VisibilidadPage />} />
```

**Imports a agregar:**
```tsx
const AccesoHubPage = React.lazy(() => import('./pages/Admin/Acceso/AccesoHubPage'));
const PermisosPage = React.lazy(() => import('./pages/Admin/Acceso/PermisosPage'));
const VisibilidadPage = React.lazy(() => import('./pages/Admin/Acceso/VisibilidadPage'));
```

**Criterios de aceptación:**
- [ ] Rutas funcionando con lazy loading
- [ ] Protegidas por RoleRoute Admin

---

### ✅ TASK-ACC-003: Actualizar ImportPage
- **Archivo:** `src/pages/Admin/Import/ImportPage.tsx`
- **Tiempo:** 2h
- **Dependencias:** TASK-ACC-001, TASK-ACC-002

**Cambios requeridos:**

1. **Cambiar endpoints:**
```typescript
// ANTES
await api.get('/admin/import/stats')
await api.post('/admin/import/empleados', body)

// DESPUÉS
await accesoService.getEstadisticas()
await accesoService.importarEmpleadosJson(dto)
```

2. **Actualizar campos de empleado:**
   - Agregar todos los 35 campos en instrucciones
   - Actualizar placeholder JSON
   - Actualizar validación

3. **Agregar modos:**
   - MERGE (Crear o Actualizar) - default
   - REPLACE (Borrar todo y reinsertar)
   - INSERT_ONLY (Solo crear nuevos)

4. **Mejorar estadísticas:**
   - Mostrar total empleados, activos, inactivos
   - Mostrar distribución por fuente
   - Mostrar última importación

**Criterios de aceptación:**
- [ ] Usa nuevo endpoint `/acceso/importar/empleados`
- [ ] Muestra 35 campos en instrucciones
- [ ] Selector de modo funciona
- [ ] Estadísticas cargan correctamente

---

## 🚀 SPRINT 2: ADMIN PAGES (8h)

### ✅ TASK-ACC-004: Crear componente ExcelUploader
- **Archivo:** `src/components/ui/ExcelUploader.tsx`
- **Tiempo:** 2h
- **Dependencias:** TASK-ACC-001

**Funcionalidades:**
1. Drag & drop zone para archivos .xlsx/.xls
2. Selector de archivo tradicional
3. Preview de primeras 10 filas
4. Selector de hoja (si hay múltiples)
5. Indicador de columnas detectadas
6. Contador de filas válidas/inválidas
7. Botón "Importar" con loading
8. Selector de modo (MERGE/REPLACE/INSERT_ONLY)

**Props:**
```typescript
interface ExcelUploaderProps {
  onImportComplete: (result: ResultadoImportacion) => void;
  onPreview?: (preview: any[]) => void;
  className?: string;
}
```

**Criterios de aceptación:**
- [ ] Drag & drop funciona
- [ ] Preview muestra primeras 10 filas
- [ ] Importación exitosa muestra resultado
- [ ] Errores se muestran claramente

---

### ✅ TASK-ACC-005: Crear PermisosPage
- **Archivo:** `src/pages/Admin/Acceso/PermisosPage.tsx`
- **Tiempo:** 3h
- **Dependencias:** TASK-ACC-001, TASK-ACC-002

**Estructura de la página:**
```
┌─────────────────────────────────────────────────┐
│ 🔐 Gestión de Permisos                          │
├─────────────────────────────────────────────────┤
│ [Tab: Permisos Área] [Tab: Permisos Empleado] [Tab: Delegaciones] │
├─────────────────────────────────────────────────┤
│ ┌─────────────────────────────────────────────┐ │
│ │ + Nuevo Permiso    🔍 Buscar               │ │
│ ├─────────────────────────────────────────────┤ │
│ │ Tabla de permisos activos                  │ │
│ │ - Receptor | Destino | Tipo | Fecha | ❌   │ │
│ │ - ...                                       │ │
│ └─────────────────────────────────────────────┘ │
│                                                 │
│ ┌─────────────────────────────────────────────┐ │
│ │ Modal: Crear Permiso                       │ │
│ │ - Receptor (autocomplete empleado)         │ │
│ │ - Destino (área o empleado según tab)      │ │
│ │ - Tipo (SUBARBOL/SOLO_NODO si es área)    │ │
│ │ - Motivo                                   │ │
│ │ [Cancelar] [Crear]                         │ │
│ └─────────────────────────────────────────────┘ │
└─────────────────────────────────────────────────┘
```

**Tabs:**
1. **Permisos por Área:**
   - Lista permisos con: receptor, nodo raíz, tipo, otorgado por, fecha
   - Crear: buscar receptor, buscar nodo, seleccionar tipo
   
2. **Permisos por Empleado:**
   - Lista: receptor, objetivo, otorgado por, fecha
   - Crear: buscar receptor, buscar objetivo

3. **Delegaciones:**
   - Lista: delegante, delegado, fecha inicio, fecha fin, motivo
   - Crear: buscar delegante, buscar delegado, fechas opcionales

**Criterios de aceptación:**
- [ ] Tres tabs funcionando
- [ ] CRUD completo en cada tab
- [ ] Búsqueda de empleados con autocomplete
- [ ] Confirmación antes de desactivar
- [ ] Toast de éxito/error

---

### ✅ TASK-ACC-006: Crear VisibilidadPreview
- **Archivo:** `src/components/acceso/VisibilidadPreview.tsx`
- **Tiempo:** 1h
- **Dependencias:** TASK-ACC-001

**Funcionalidades:**
1. Input para buscar empleado por carnet o nombre
2. Card con info del empleado seleccionado
3. Lista de "Quién puede ver a este empleado"
4. Lista de "A quién puede ver este empleado"
5. Tabla de actores efectivos (por delegaciones)
6. Input para verificar: "¿Puede ver a X?" → Sí/No

**Criterios de aceptación:**
- [ ] Búsqueda funciona por carnet y nombre
- [ ] Muestra listas correctamente
- [ ] Verificación punto a punto funciona

---

### ✅ TASK-ACC-012: Crear AccesoHubPage
- **Archivo:** `src/pages/Admin/Acceso/AccesoHubPage.tsx`
- **Tiempo:** 1h
- **Dependencias:** TASK-ACC-001

**Diseño:**
```
┌─────────────────────────────────────────────────┐
│ 🔐 Control de Acceso                            │
│ Gestión de empleados, permisos y visibilidad   │
├─────────────────────────────────────────────────┤
│ ┌───────────┐ ┌───────────┐ ┌───────────┐      │
│ │ 👥 5,234   │ │ ✅ 4,890   │ │ ❌ 344     │     │
│ │ Empleados  │ │ Activos    │ │ Inactivos  │     │
│ └───────────┘ └───────────┘ └───────────┘      │
│                                                 │
│ ┌─────────────────────────────────────────────┐ │
│ │ 📥 Importación     →                        │ │
│ │ Importar empleados desde JSON o Excel      │ │
│ ├─────────────────────────────────────────────┤ │
│ │ 🔐 Permisos        →                        │ │
│ │ Gestionar permisos por área y empleado     │ │
│ ├─────────────────────────────────────────────┤ │
│ │ 👁️ Visibilidad     →                        │ │
│ │ Ver quién puede acceder a qué              │ │
│ ├─────────────────────────────────────────────┤ │
│ │ 📤 Exportar        →                        │ │
│ │ Descargar lista de empleados               │ │
│ └─────────────────────────────────────────────┘ │
│                                                 │
│ 📊 Última importación: hace 2 días (API)       │
│ 📊 Por fuente: EXCEL (3,200) | API (1,500)     │
└─────────────────────────────────────────────────┘
```

**Criterios de aceptación:**
- [ ] Estadísticas cargan del endpoint
- [ ] Cards clickeables llevan a subpáginas
- [ ] Diseño responsive

---

## 🚀 SPRINT 3: USER EXPERIENCE (4h)

### ✅ TASK-ACC-007: Mi Visibilidad en perfil
- **Archivo:** Modificar página de perfil o crear componente
- **Tiempo:** 1h
- **Dependencias:** TASK-ACC-001

**Agregar sección:**
```
┌─────────────────────────────────────┐
│ 👁️ Mi Visibilidad                   │
├─────────────────────────────────────┤
│ Pueden ver mis datos:               │
│ • Juan Pérez (mi jefe directo)      │
│ • María García (permiso especial)   │
│ • Equipo de RH (permiso área)       │
│                                     │
│ Estoy delegando a:                  │
│ • Ana Secretaria (hasta 15/02/2026) │
└─────────────────────────────────────┘
```

**Criterios de aceptación:**
- [ ] Usuario ve quién tiene acceso a sus datos
- [ ] Usuario ve sus delegaciones activas

---

### ✅ TASK-ACC-008: Panel de delegaciones para Jefe
- **Archivo:** Modificar ManagerDashboard o crear widget
- **Tiempo:** 1.5h
- **Dependencias:** TASK-ACC-001

**Widget a agregar:**
```
┌─────────────────────────────────────────┐
│ 🤝 Delegaciones Activas                 │
├─────────────────────────────────────────┤
│ Ana (Secretaria) puede ver lo que yo veo│
│ ⏰ Hasta: 30/01/2026  [Revocar]         │
├─────────────────────────────────────────┤
│ [+ Crear Nueva Delegación]              │
└─────────────────────────────────────────┘
```

**Modal de crear delegación:**
- Buscar empleado (delegado)
- Fecha inicio (opcional, default: hoy)
- Fecha fin (opcional)
- Motivo

**Criterios de aceptación:**
- [ ] Jefe puede crear delegación
- [ ] Jefe puede revocar delegación
- [ ] Lista muestra delegaciones activas

---

### ✅ TASK-ACC-009: Filtro de visibilidad real en equipo
- **Archivo:** Modificar TeamListPage o ManagerDashboard
- **Tiempo:** 1.5h
- **Dependencias:** TASK-ACC-001, TASK-ACC-013

**Cambios:**
1. Al cargar lista de subordinados, verificar con `/visibilidad/:carnet`
2. Mostrar indicador si hay inconsistencia
3. Opción para "Ver solo visibles por permiso"

**Criterios de aceptación:**
- [ ] Lista filtra por visibilidad real
- [ ] Indicador si hay empleados sin permiso
- [ ] Toggle para ver todos vs solo permitidos

---

## 🚀 SPRINT 4: BACKEND & TESTING (4h)

### ✅ TASK-ACC-013: Integrar VisibilidadGuard
- **Archivo:** Backend controllers
- **Tiempo:** 1h
- **Dependencias:** Ninguna

**Endpoints a proteger:**
```typescript
// clarity.controller.ts
@UseGuards(VisibilidadGuard)
@Get('equipo/miembro/:id/tareas')

@UseGuards(VisibilidadGuard)
@Get('equipo/miembro/:id')
```

**Criterios de aceptación:**
- [ ] Guard valida antes de retornar datos
- [ ] 403 si no tiene permiso
- [ ] Logging de accesos denegados

---

### ✅ TASK-ACC-014: Sincronización usuarios-empleados
- **Archivo:** Backend service
- **Tiempo:** 1h
- **Dependencias:** Ninguna

**Opciones a evaluar:**
1. Al importar empleado con correo → crear usuario inactivo
2. Al crear usuario → crear registro en p_empleados
3. Scheduled job de sincronización

**Criterios de aceptación:**
- [ ] Decisión documentada
- [ ] Implementación básica funciona
- [ ] No rompe flujo existente

---

### ✅ TASK-ACC-015: Tests E2E importación
- **Archivo:** `test/acceso-import.e2e-spec.ts`
- **Tiempo:** 1h

**Casos de prueba:**
1. Importar JSON válido → insertados + actualizados
2. Importar JSON con errores → detallesErrores
3. Modo REPLACE → elimina existentes
4. Modo INSERT_ONLY → ignora existentes
5. Preview Excel → retorna columnas y preview

---

### ✅ TASK-ACC-016: Tests E2E visibilidad
- **Archivo:** `test/acceso-visibilidad.e2e-spec.ts`
- **Tiempo:** 1h

**Casos de prueba:**
1. Jefe ve subordinados directos
2. Permiso área otorga acceso a subárbol
3. Permiso empleado otorga acceso puntual
4. Delegación hereda visibilidad
5. Sin permisos → array vacío

---

## 📊 RESUMEN

| # | Tarea | Sprint | Horas | Prioridad |
|---|-------|--------|-------|-----------|
| 1 | Crear acceso.service.ts | 1 | 1h | 🔴 |
| 2 | Crear tipos TypeScript | 1 | 0.5h | 🔴 |
| 3 | Actualizar Sidebar | 1 | 0.5h | 🔴 |
| 4 | Actualizar rutas App.tsx | 1 | 0.5h | 🔴 |
| 5 | Actualizar ImportPage | 1 | 2h | 🔴 |
| 6 | Crear ExcelUploader | 2 | 2h | 🟡 |
| 7 | Crear PermisosPage | 2 | 3h | 🔴 |
| 8 | Crear VisibilidadPreview | 2 | 1h | 🟡 |
| 9 | Crear AccesoHubPage | 2 | 1h | 🟡 |
| 10 | Mi Visibilidad en perfil | 3 | 1h | 🟡 |
| 11 | Panel delegaciones Jefe | 3 | 1.5h | 🟡 |
| 12 | Filtro visibilidad real | 3 | 1.5h | 🟢 |
| 13 | Integrar VisibilidadGuard | 4 | 1h | 🟡 |
| 14 | Sincronización usuarios | 4 | 1h | 🟢 |
| 15 | Tests E2E importación | 4 | 1h | 🟡 |
| 16 | Tests E2E visibilidad | 4 | 1h | 🟡 |
| **TOTAL** | | | **19.5h** | |

---

## ✅ CHECKLIST DE VERIFICACIÓN FINAL

- [ ] Service `acceso.service.ts` funciona
- [ ] Tipos en `types/acceso.ts` exportados
- [ ] Sidebar actualizado con links
- [ ] Rutas en App.tsx funcionando
- [ ] ImportPage usa nuevo endpoint
- [ ] ImportPage soporta Excel
- [ ] PermisosPage con 3 tabs
- [ ] VisibilidadPreview componente
- [ ] AccesoHubPage con estadísticas
- [ ] Usuario ve "Mi Visibilidad"
- [ ] Jefe puede delegar
- [ ] Guard protege endpoints
- [ ] Tests E2E pasan

---

*Tareas generadas para implementación del módulo Acceso - Clarity v2.0*

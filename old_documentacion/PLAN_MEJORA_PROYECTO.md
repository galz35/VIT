# PLAN DE MEJORA: MOMENTUS - De 6.5/10 a 10/10

**Proyecto**: Sistema de Gestión de Tareas y Productividad (Momentus/Clarity)  
**Estado Actual**: 6.5/10  
**Objetivo**: 10/10 (Producción Ready)  
**Tiempo Estimado**: 3-4 semanas de trabajo enfocado  
**Fecha Análisis**: 2026-01-11

---

## 📊 ESTADO ACTUAL DEL PROYECTO

### Evaluación por Categorías

| Categoría | Nota Actual | Objetivo | Gap | Prioridad |
|-----------|-------------|----------|-----|-----------|
| Arquitectura | 8/10 | 9/10 | +1 | Media |
| Código Backend | 7/10 | 9/10 | +2 | Alta |
| Código Frontend | 6/10 | 9/10 | +3 | Alta |
| Base de Datos | 7/10 | 9/10 | +2 | Media |
| Seguridad | 5/10 | 9/10 | +4 | Crítica |
| Testing | 0/10 | 9/10 | +9 | Crítica |
| Documentación | 3/10 | 8/10 | +5 | Alta |
| Completitud | 6/10 | 9/10 | +3 | Alta |
| Performance | 5/10 | 8/10 | +3 | Media |
| DevOps/CI/CD | 0/10 | 7/10 | +7 | Media |

---

## 🎯 GAPS DETALLADOS - POR QUÉ NO ES 10/10

### 🔴 GAP #1: TESTING (0/10 → 9/10) - CRÍTICO

#### **Problemas Actuales:**
1. **Cero tests automatizados** en todo el proyecto
2. No hay manera de validar que el código funciona después de cambios
3. Riesgo alto de regresiones
4. Imposible hacer refactoring con confianza
5. No hay CI/CD porque no hay qué validar

#### **Lo que falta específicamente:**

##### Backend (NestJS)
- [ ] **Tests Unitarios de Servicios** (30+ tests mínimo)
  - ClarityService: miDiaGet, checkinUpsert, tareaCrearRapida, etc.
  - AuthService: validateUser, login, JWT generation
  - Cada método público debe tener al menos 2-3 tests (caso éxito, error, edge case)
  
- [ ] **Tests de Integración de Endpoints** (40+ tests mínimo)
  - POST /auth/login (credenciales correctas, incorrectas, usuario inactivo)
  - GET /mi-dia (con/sin checkin, con/sin arrastrados, con/sin bloqueos)
  - POST /checkins (creación nueva, actualización, validación de datos)
  - POST /tareas/rapida (creación exitosa, proyecto inexistente, sin permisos)
  - PATCH /tareas/:id (actualización exitosa, validación RBAC, task no encontrada)
  - GET /equipo/hoy (manager con equipo, sin equipo, empleado sin acceso)
  - POST /admin/nodos (admin exitoso, no-admin bloqueado, validación)
  - POST /admin/usuarios-organizacion (asignación correcta, duplicada, usuario inexistente)
  
- [ ] **Tests de RBAC/Permisos** (15+ tests mínimo)
  - Admin puede acceder a todos los endpoints admin
  - Gerente bloqueado de endpoints admin
  - Manager solo puede editar tareas de subordinados
  - Empleado solo ve sus propias tareas
  - Validación de jerarquía (getSubtreeUserIds)

##### Frontend (React)
- [ ] **Tests Unitarios de Componentes** (25+ tests mínimo)
  - TaskCard: renderizado, onClick, estados
  - CheckinForm: validación, submit, errores
  - UserRow: renderizado, acciones
  - PermissionsEditor: cambios de permisos, validación
  
- [ ] **Tests de Integración de Páginas** (20+ tests mínimo)
  - MiDiaPage: carga de datos, submit checkin, manejo de errores
  - ManagerDashboard: lista de equipo, filtros, acciones
  - UsersPage: vista jerarquía, creación nodos, asignación usuarios
  - TeamPlanningPage: drag & drop, creación tareas
  
- [ ] **Tests E2E** (10+ flujos mínimo)
  - Login → Mi Día → Check-in completo
  - Login Manager → Ver equipo → Asignar tarea
  - Login Admin → Crear nodo → Asignar usuario
  - Login Empleado → Ver tareas → Actualizar progreso

#### **Herramientas Necesarias:**
- Backend: Jest (ya incluido en NestJS), Supertest
- Frontend: Vitest, React Testing Library, Playwright/Cypress

#### **Prompt para Agente IA:**
```
TAREA: Implementar suite completa de tests para backend NestJS

CONTEXTO:
- El proyecto es un sistema de gestión de tareas con RBAC
- Backend en NestJS + PostgreSQL + TypeORM
- Actualmente no hay ningún test

OBJETIVO:
Crear tests unitarios y de integración para ClarityService y endpoints críticos

PASOS ESPECÍFICOS:
1. Revisar archivo src/clarity/clarity.service.ts
2. Crear archivo clarity.service.spec.ts
3. Implementar tests para: miDiaGet, checkinUpsert, tareaCrearRapida, tareaActualizar
4. Usar mocks para repositorios TypeORM
5. Crear tests de integración para endpoints en clarity.controller.spec.ts
6. Configurar base de datos de test (PostgreSQL in-memory o Docker)
7. Ejecutar: npm run test y asegurar que pasen todos

CRITERIOS DE ACEPTACIÓN:
- Mínimo 80% de cobertura en ClarityService
- Todos los endpoints críticos con tests
- Tests pasan en CI (GitHub Actions)
- Documentación de cómo ejecutar tests

ARCHIVOS A MODIFICAR/CREAR:
- src/clarity/clarity.service.spec.ts (NUEVO)
- src/clarity/clarity.controller.spec.ts (NUEVO)
- src/auth/auth.service.spec.ts (NUEVO)
- test/app.e2e-spec.ts (MODIFICAR)
- package.json (agregar scripts de test)
```

---

### 🔴 GAP #2: MANEJO DE ERRORES (5/10 → 9/10) - CRÍTICO

#### **Problemas Actuales:**
1. **Código lleno de console.warn** en lugar de manejo real
2. **Mocks mezclados con código real** (try/catch con fallback a datos falsos)
3. **Sin logging estructurado** (imposible debuggear producción)
4. **Errores silenciosos** que no informan al usuario
5. **Sin retry logic** para fallos temporales de red

#### **Lo que falta específicamente:**

##### Backend
- [ ] **Global Exception Filter** (NestJS)
  - Interceptar todas las excepciones
  - Formatear respuestas de error consistentemente
  - Loggear errores con contexto (userId, endpoint, timestamp)
  - Diferenciar errores 4xx (cliente) vs 5xx (servidor)
  
- [ ] **Custom Exceptions**
  - `InvalidCredentialsException`
  - `InsufficientPermissionsException`
  - `ResourceNotFoundException`
  - `BusinessRuleViolationException`
  
- [ ] **Logging Estructurado**
  - Usar Winston o Pino
  - Niveles: ERROR, WARN, INFO, DEBUG
  - Incluir request ID para trazabilidad
  - Log rotation y archivado
  
- [ ] **Validación de Datos Robusta**
  - DTOs con class-validator en TODOS los endpoints
  - Validación de tipos, rangos, formatos
  - Mensajes de error descriptivos

##### Frontend
- [ ] **Error Boundary React**
  - Capturar errores de renderizado
  - Mostrar UI de fallback amigable
  - Loggear errores a servicio externo (Sentry)
  
- [ ] **Interceptor Axios Global**
  - Manejo centralizado de errores HTTP
  - Retry automático para errores 5xx (con backoff exponencial)
  - Refresh token automático para 401
  - Mostrar toast notifications para errores
  
- [ ] **Eliminar TODO el código mock**
  ```typescript
  // ❌ ELIMINAR ESTO:
  catch (e) {
      console.warn("API failed, using mock");
      return mockData;
  }
  
  // ✅ REEMPLAZAR POR:
  catch (error) {
      logger.error('Failed to fetch data', { error, context });
      showToast('Error cargando datos. Por favor intenta de nuevo.', 'error');
      throw error; // O manejar apropiadamente
  }
  ```
  
- [ ] **Estados de Carga y Error**
  - Loading skeletons en lugar de spinners genéricos
  - Mensajes de error específicos por tipo de fallo
  - Botones de "Reintentar" cuando aplique

#### **Prompt para Agente IA:**
```
TAREA: Implementar manejo robusto de errores en backend y frontend

CONTEXTO:
- Backend NestJS con múltiples endpoints
- Frontend React con Axios
- Actualmente hay muchos console.warn y datos mock

OBJETIVO:
Eliminar todos los mocks, implementar error handling profesional

PASOS BACKEND:
1. Crear src/common/filters/global-exception.filter.ts
2. Crear src/common/exceptions/ con custom exceptions
3. Instalar Winston: npm install winston
4. Configurar Winston en main.ts
5. Agregar validación con class-validator en todos los DTOs
6. Reemplazar throw new Error() por excepciones específicas
7. Testear cada endpoint con datos inválidos

PASOS FRONTEND:
1. Crear src/utils/errorHandler.ts con función centralizada
2. Configurar Axios interceptor en src/services/api.ts
3. Crear ErrorBoundary component
4. Buscar TODOS los console.warn y reemplazar
5. Implementar retry logic con axios-retry
6. Agregar toast notifications para todos los errores
7. Crear loading states en todos los componentes async

CRITERIOS DE ACEPTACIÓN:
- Cero console.warn en el código
- Cero datos mock
- Todos los errores muestran mensaje al usuario
- Logs estructurados en producción
- Errores de red se reintentan automáticamente (máx 3 veces)

ARCHIVOS A BUSCAR Y MODIFICAR:
- Buscar patrón: "console.warn"
- Buscar patrón: "using mock"
- Buscar patrón: "catch (e) {" sin manejo
```

---

### 🔴 GAP #3: SEGURIDAD (5/10 → 9/10) - CRÍTICO

#### **Problemas Actuales:**
1. **Passwords en plaintext en seed** (línea: hash = await bcrypt.hash('123456'))
2. **Sin rate limiting** (vulnerable a brute force)
3. **Sin CORS configurado apropiadamente** (actualmente permite todo)
4. **Sin validación de input profunda** (vulnerable a injection)
5. **Sin helmet.js** (headers de seguridad faltantes)
6. **Sin sanitización de HTML** (vulnerable a XSS)
7. **JWT sin refresh tokens** (tokens viven para siempre)

#### **Lo que falta específicamente:**

##### Backend
- [ ] **Rate Limiting**
  - Instalar: @nestjs/throttler
  - Limit: 10 requests/minuto para /auth/login
  - Limit: 100 requests/minuto para endpoints generales
  - Configurar por IP y por usuario
  
- [ ] **Helmet.js**
  - Configurar headers de seguridad
  - X-Frame-Options: DENY
  - X-Content-Type-Options: nosniff
  - Strict-Transport-Security
  
- [ ] **CORS Específico**
  ```typescript
  // ❌ Actual:
  app.enableCors({ origin: '*' });
  
  // ✅ Correcto:
  app.enableCors({
    origin: process.env.FRONTEND_URL || 'http://localhost:5173',
    credentials: true,
    methods: ['GET', 'POST', 'PATCH', 'DELETE'],
  });
  ```
  
- [ ] **Validación de Input Avanzada**
  - Sanitizar TODOS los strings (contra XSS)
  - Validar rangos numéricos
  - Validar formatos de email, fechas, etc.
  - Usar class-validator con decoradores personalizados
  
- [ ] **Refresh Tokens**
  - Tokens de acceso: 15 minutos de vida
  - Refresh tokens: 7 días en httpOnly cookie
  - Endpoint /auth/refresh para renovar
  - Invalidar refresh tokens en logout
  
- [ ] **Auditoría de Acciones Sensibles**
  - Loggear todos los cambios de permisos
  - Loggear creación/eliminación de usuarios
  - Loggear accesos a datos sensibles
  - Tabla de auditoría en BD

##### Frontend
- [ ] **Sanitización de HTML**
  - Instalar DOMPurify
  - Sanitizar antes de usar dangerouslySetInnerHTML
  
- [ ] **Protección de Rutas**
  - Verificar permisos antes de renderizar
  - Redirect a /login si token expirado
  - Mostrar 403 si sin permisos
  
- [ ] **Input Validation en Cliente**
  - Validar antes de enviar al backend
  - Prevenir inyección de scripts
  - Limitar longitud de inputs

#### **Prompt para Agente IA:**
```
TAREA: Reforzar seguridad del proyecto a nivel producción

CONTEXTO:
- Backend NestJS + JWT auth
- Frontend React
- Actualmente permite CORS *, sin rate limiting, sin refresh tokens

OBJETIVO:
Implementar medidas de seguridad esenciales para producción

PASOS BACKEND:
1. Instalar: npm install @nestjs/throttler helmet
2. Configurar Helmet en main.ts
3. Implementar ThrottlerModule
4. Configurar CORS restrictivo
5. Crear refresh token logic en AuthService
6. Agregar tabla AuditLog en entities.ts
7. Implementar logging de acciones sensibles
8. Revisar TODOS los DTOs y agregar validaciones

PASOS FRONTEND:
1. Instalar: npm install dompurify
2. Crear hook useSecureHTML
3. Implementar refresh token logic en api.ts
4. Agregar ProtectedRoute component con RBAC
5. Sanitizar todos los inputs de usuario
6. Implementar CSP headers

CRITERIOS DE ACEPTACIÓN:
- Rate limiting funcional (probar con múltiples requests)
- CORS solo permite frontend específico
- Refresh tokens funcionan correctamente
- Tabla de auditoría registra cambios críticos
- Todos los inputs validados y sanitizados
- No hay vulnerabilidades en npm audit

ARCHIVOS CRÍTICOS:
- backend/src/main.ts (configuración global)
- backend/src/auth/auth.service.ts (refresh tokens)
- frontend/src/services/api.ts (interceptor)
- backend/src/entities.ts (tabla AuditLog)
```

---

### 🟡 GAP #4: FUNCIONALIDADES INCOMPLETAS (6/10 → 9/10) - ALTA

#### **Problemas Actuales:**
1. **TeamPlanningPage**: Drag & drop NO persiste en BD
2. **Proyectos**: No hay CRUD completo visible en UI
3. **Reportes**: Página completamente vacía
4. **Timeline**: Página stub sin funcionalidad
5. **Workload**: Página stub sin funcionalidad
6. **Notifications**: No hay sistema de notificaciones

#### **Lo que falta específicamente:**

##### 1. TeamPlanningPage - Persistencia de Drag & Drop
**Problema actual:**
```typescript
// El drag funciona visualmente, pero no se guarda
const handleDragEnd = async (event: DragEndEvent) => {
    // Actualiza estado local ✅
    setToday(prev => arrayMove(prev, oldIndex, newIndex));
    
    // ❌ NO HAY API CALL PARA PERSISTIR
};
```

**Solución necesaria:**
- [ ] Backend: Endpoint PATCH /tareas/:id/orden para cambiar orden
- [ ] Backend: Agregar campo `orden: number` a tabla Tareas
- [ ] Frontend: Llamar a endpoint después de drag
- [ ] Frontend: Optimistic update con rollback si falla

##### 2. CRUD Completo de Proyectos
**Falta:**
- [ ] Backend: `GET /proyectos/:id` (detalle individual)
- [ ] Backend: `PATCH /proyectos/:id` (actualizar)
- [ ] Backend: `DELETE /proyectos/:id` (soft delete)
- [ ] Frontend: Página ProjectsPage.tsx con lista
- [ ] Frontend: Modal de edición de proyecto
- [ ] Frontend: Confirmación de eliminación

##### 3. Página de Reportes
**Implementar:**
- [ ] Backend: Endpoints de métricas
  - `GET /reportes/productividad?fecha=...` (tareas completadas por usuario)
  - `GET /reportes/bloqueos-trend?inicio=...&fin=...` (tendencia de bloqueos)
  - `GET /reportes/equipo-performance?idNodo=...` (KPIs de equipo)
  
- [ ] Frontend: Gráficas con Chart.js o Recharts
  - Gráfica de barras: Tareas completadas por día
  - Gráfica de línea: Tendencia de bloqueos
  - Tabla: Top 5 usuarios más productivos
  - Heatmap: Días de mayor/menor actividad

##### 4. Timeline de Proyectos
**Implementar:**
- [ ] Backend: `GET /planning/timeline?idProyecto=...&inicio=...&fin=...`
  - Devolver tareas con fechas de inicio y fin
  - Incluir dependencias entre tareas
  
- [ ] Frontend: Gantt chart con react-gantt-timeline o similar
  - Vista de tareas por proyecto
  - Drag para cambiar fechas
  - Líneas de dependencias

##### 5. Workload (Carga Laboral)
**Implementar:**
- [ ] Backend: `GET /planning/workload?inicio=...&fin=...`
  - Calcular horas estimadas por usuario por semana
  - Identificar sobre-asignación (>40h/semana)
  
- [ ] Frontend: Calendario de recursos
  - Vista semanal por usuario
  - Colores según carga (verde=ok, amarillo=alto, rojo=sobrecargado)
  - Drag & drop para reasignar tareas

##### 6. Sistema de Notificaciones
**Implementar:**
- [ ] Backend: Tabla `Notificaciones` en BD
- [ ] Backend: Servicio de notificaciones (push a tabla)
- [ ] Backend: Endpoint `GET /notifications` (con paginación)
- [ ] Backend: Endpoint `PATCH /notifications/:id/read`
- [ ] Frontend: Bell icon en header con badge de contador
- [ ] Frontend: Dropdown de notificaciones
- [ ] Frontend: WebSocket para notificaciones en tiempo real (opcional)

#### **Prompt para Agente IA - Drag & Drop:**
```
TAREA: Implementar persistencia de drag & drop en TeamPlanningPage

CONTEXTO:
- Archivo: clarity-pwa/src/pages/Planning/TeamPlanningPage.tsx
- Actualmente drag & drop funciona visualmente pero no se guarda
- Backend: NestJS con ClarityService

OBJETIVO:
Hacer que el orden de tareas persista en la base de datos

PASOS:
1. Backend: Agregar columna `orden` a entity Tarea (tipo: integer, nullable: false, default: 0)
2. Backend: Crear DTO TareaActualizarOrdenDto { orden: number }
3. Backend: En ClarityService, agregar método actualizarOrden(idTarea, nuevoOrden)
4. Backend: En ClarityController, agregar endpoint PATCH /tareas/:id/orden
5. Frontend: En handleDragEnd, después de arrayMove, llamar a api.patch
6. Frontend: Si API falla, hacer rollback del estado local
7. Frontend: Mostrar toast de éxito/error

CRITERIOS DE ACEPTACIÓN:
- Mover tarea visualmente se guarda en BD
- Si backend falla, UI vuelve al estado anterior
- Las tareas mantienen su orden después de recargar página
- Tests: drag & drop, API failure, rollback

ARCHIVOS:
- backend/src/entities.ts (agregar campo orden)
- backend/src/clarity/clarity.service.ts (nuevo método)
- backend/src/clarity/clarity.controller.ts (nuevo endpoint)
- frontend/src/pages/Planning/TeamPlanningPage.tsx (llamada API)
```

#### **Prompt para Agente IA - Reportes:**
```
TAREA: Crear página de Reportes con métricas clave

CONTEXTO:
- Actualmente ReportsPage.tsx está vacía
- Necesitamos dashboards para managers y gerencia

OBJETIVO:
Implementar 3 reportes iniciales con gráficas

PASOS BACKEND:
1. Crear clarity.service.ts métodos:
   - getProductividadUsuarios(fechaInicio, fechaFin): tareas completadas
   - getBloqueosTendencia(fechaInicio, fechaFin): count de bloqueos por día
   - getEquipoPerformance(idNodo): métricas de equipo
2. Crear endpoints en controller
3. Agregar tests de estos métodos

PASOS FRONTEND:
1. Instalar: npm install recharts
2. Crear componentes:
   - ProductivityChart.tsx (bar chart)
   - BlockersTrendChart.tsx (line chart)
   - TeamPerformanceTable.tsx (tabla)
3. En ReportsPage.tsx:
   - Selector de rango de fechas
   - Llamar a endpoints
   - Renderizar gráficas
   - Estados de loading/error

CRITERIOS DE ACEPTACIÓN:
- Gráficas muestran datos reales de BD
- Selectores de fecha funcionan
- Datos se actualizan al cambiar filtros
- Manejo de errores apropiado
- Responsive design

ARCHIVOS:
- backend/src/clarity/clarity.service.ts
- backend/src/clarity/clarity.controller.ts
- frontend/src/pages/Reports/ReportsPage.tsx
- frontend/src/components/charts/ProductivityChart.tsx (NUEVO)
```

---

### 🟡 GAP #5: DOCUMENTACIÓN (3/10 → 8/10) - ALTA

#### **Problemas Actuales:**
1. **No hay README** con instrucciones de instalación
2. **No hay documentación de API** (endpoints, params, responses)
3. **No hay guía de usuario** para el sistema
4. **No hay diagramas** de arquitectura o flujos
5. **Código sin comentarios** en secciones complejas

#### **Lo que falta específicamente:**

##### 1. README.md (Raíz del proyecto)
```markdown
# Momentus - Sistema de Gestión de Productividad

## Descripción
Sistema completo de gestión de tareas, check-ins diarios, y seguimiento de equipo con RBAC.

## Stack Tecnológico
- **Backend**: NestJS + PostgreSQL + TypeORM
- **Frontend**: React + TypeScript + Vite + Tailwind
- **Auth**: JWT con refresh tokens

## Requisitos Previos
- Node.js 18+
- PostgreSQL 14+
- npm o yarn

## Instalación

### Backend
```bash
cd backend
npm install
cp .env.example .env  # Configurar variables
npm run migration:run
npm run seed  # Cargar datos de prueba
npm run start:dev
```

### Frontend
```bash
cd clarity-pwa
npm install
cp .env.example .env
npm run dev
```

## Variables de Entorno

### Backend (.env)
- `DATABASE_URL`: Connection string PostgreSQL
- `JWT_SECRET`: Secret para JWT
- `JWT_EXPIRES_IN`: Tiempo de expiración tokens

### Frontend (.env)
- `VITE_API_URL`: URL del backend

## Usuarios de Prueba
[tabla con usuarios seed]

## Arquitectura
[diagrama de componentes]

## Guía de Desarrollo
- Crear branch por feature
- Tests obligatorios para nuevas features
- Correr `npm run lint` antes de commit
```

##### 2. API Documentation (Swagger/OpenAPI)
- [ ] Instalar: `@nestjs/swagger`
- [ ] Decorar TODOS los endpoints con `@ApiOperation`
- [ ] Documentar DTOs con `@ApiProperty`
- [ ] Documentar responses con `@ApiResponse`
- [ ] Disponible en: `http://localhost:3000/api/docs`

##### 3. Manual de Usuario
- [ ] Crear `docs/MANUAL_USUARIO.md` con:
  - Cómo hacer check-in diario
  - Cómo crear y asignar tareas
  - Cómo reportar bloqueos
  - Cómo usar el dashboard de manager
  - Cómo gestionar jerarquía (admin)

##### 4. Diagramas de Arquitectura
- [ ] Diagrama de componentes (Backend ↔ Frontend ↔ BD)
- [ ] Diagrama de flujo: Autenticación
- [ ] Diagrama de flujo: Asignación de tareas
- [ ] Diagrama ERD: Modelo de datos
- [ ] Guardar en `docs/architecture/`

##### 5. JSDoc en Código Complejo
```typescript
/**
 * Obtiene todos los nodos del subárbol de un líder usando consulta recursiva
 * @param idLider - ID del usuario líder/gerente/director
 * @returns Array de IDs de nodos que están bajo su gestión
 * @throws NotFoundException si el usuario no existe
 * @example
 * const nodos = await getSubtreeNodeIds(5);
 * // Retorna: [10, 11, 15, 16] (nodos hijos y nietos)
 */
async getSubtreeNodeIds(idLider: number): Promise<number[]> {
    // ...
}
```

#### **Prompt para Agente IA:**
```
TAREA: Crear documentación completa del proyecto

CONTEXTO:
- Proyecto Momentus sin README ni docs
- Backend NestJS, Frontend React
- Múltiples roles y funcionalidades

OBJETIVO:
Documentar instalación, API, arquitectura y uso

PASOS:
1. Crear README.md en raíz con secciones estándar
2. Instalar @nestjs/swagger en backend
3. Decorar todos los endpoints con @ApiOperation
4. Generar Swagger UI en /api/docs
5. Crear docs/MANUAL_USUARIO.md
6. Crear diagramas con Mermaid en docs/architecture/
7. Agregar JSDoc a funciones complejas (getSubtreeNodeIds, etc)
8. Crear .env.example en ambos proyectos
9. Documentar flujo de autenticación
10. Crear CONTRIBUTING.md con guía para developers

CRITERIOS DE ACEPTACIÓN:
- Cualquier developer nuevo puede instalar y correr en <15 min
- Swagger docs completo y funcional
- Manual de usuario cubre todos los flujos principales
- Diagramas claros de arquitectura
- JSDoc en funciones públicas críticas

ARCHIVOS A CREAR:
- README.md (raíz)
- backend/.env.example
- frontend/.env.example
- docs/MANUAL_USUARIO.md
- docs/architecture/componentes.md
- docs/API.md (generado por Swagger)
- CONTRIBUTING.md
```

---

### 🟡 GAP #6: PERFORMANCE (5/10 → 8/10) - MEDIA

#### **Problemas Actuales:**
1. **Sin paginación** en listas largas (usuarios, tareas, logs)
2. **Sin lazy loading** de componentes
3. **Sin caché** de datos frecuentes
4. **Consultas N+1** en algunos endpoints
5. **Sin optimización de imágenes**
6. **Sin code splitting** en frontend

#### **Lo que falta específicamente:**

##### Backend
- [ ] **Paginación en Endpoints**
  ```typescript
  // ❌ Actual:
  async getUsuarios() {
      return this.userRepo.find();  // Sin límite
  }
  
  // ✅ Mejorado:
  async getUsuarios(page: number = 1, limit: number = 50) {
      return this.userRepo.findAndCount({
          skip: (page - 1) * limit,
          take: limit,
          order: { nombre: 'ASC' }
      });
  }
  ```
  - Aplicar a: usuarios, tareas, logs, checkins
  
- [ ] **Query Optimization**
  - Agregar índices en columnas frecuentes: `idUsuario`, `fecha`, `estado`
  - Usar `select` específico en lugar de `*`
  - Eager loading apropiado con `relations`
  - Query builder en lugar de múltiples queries
  
- [ ] **Caching con Redis**
  - Instalar: `@nestjs/cache-manager` + `cache-manager-redis-store`
  - Cachear: roles, nodos organizacionales (cambian poco)
  - TTL: 5 minutos para datos frecuentes
  - Invalidar caché en updates

##### Frontend
- [ ] **React Query / TanStack Query**
  - Caché automático de requests
  - Refetch en background
  - Stale-while-revalidate
  - Optimistic updates
  
- [ ] **Lazy Loading de Rutas**
  ```typescript
  // ❌ Actual:
  import { ReportsPage } from './pages/Reports/ReportsPage';
  
  // ✅ Mejorado:
  const ReportsPage = lazy(() => import('./pages/Reports/ReportsPage'));
  ```
  
- [ ] **Virtualización de Listas**
  - Instalar: `react-window` o `@tanstack/react-virtual`
  - Aplicar a listas de >50 items
  
- [ ] **Optimización de Bundle**
  - Code splitting por ruta
  - Tree shaking de librerías no usadas
  - Minificación agresiva
  - Compression (gzip/brotli)

#### **Prompt para Agente IA:**
```
TAREA: Optimizar performance del proyecto

CONTEXTO:
- Sin paginación ni caché
- Listas largas renderizan todo
- Bundle grande sin splitting

OBJETIVO:
Mejorar tiempos de carga y respuesta

PASOS BACKEND:
1. Agregar DTOs de paginación (PaginationDto con page y limit)
2. Modificar endpoints que retornan listas para soportar paginación
3. Crear índices en BD:
   - CREATE INDEX idx_tareas_usuario ON "p_Tareas"("idAsignadoPor");
   - CREATE INDEX idx_checkins_fecha ON "p_Checkins"("fecha");
4. Instalar Redis: npm install @nestjs/cache-manager cache-manager-redis-store
5. Configurar CacheModule en app.module.ts
6. Decorar métodos con @UseCache()
7. Optimizar queries con QueryBuilder en lugar de múltiples finds

PASOS FRONTEND:
1. Instalar: npm install @tanstack/react-query
2. Configurar QueryClient en main.tsx
3. Reemplazar useState+useEffect con useQuery
4. Lazy load rutas con React.lazy
5. Instalar: npm install react-window
6. Aplicar FixedSizeList a UsersPage, TasksList
7. Configurar Vite para code splitting

CRITERIOS DE ACEPTACIÓN:
- Endpoints con paginación retornan máx 50 items
- Tiempo de respuesta promedio <200ms
- Bundle inicial <500KB
- Listas de 100+ items no causan lag
- Datos frecuentes cachean por 5min

ARCHIVOS:
- backend/src/common/dto/pagination.dto.ts (NUEVO)
- backend/src/clarity/clarity.controller.ts (agregar params)
- frontend/src/main.tsx (setup React Query)
- frontend/vite.config.ts (optimización)
```

---

### 🟠 GAP #7: DEVOPS/CI/CD (0/10 → 7/10) - MEDIA

#### **Problemas Actuales:**
1. **Sin CI/CD pipeline** (GitHub Actions, GitLab CI)
2. **Sin Docker** para despliegue fácil
3. **Sin environment configs** (dev, staging, prod)
4. **Sin monitoring** (uptime, errores, performance)
5. **Sin backups automatizados** de BD

#### **Lo que falta específicamente:**

##### 1. GitHub Actions CI/CD
- [ ] Crear `.github/workflows/ci.yml`:
  ```yaml
  name: CI
  on: [push, pull_request]
  jobs:
    test:
      runs-on: ubuntu-latest
      services:
        postgres:
          image: postgres:14
          env:
            POSTGRES_PASSWORD: test
      steps:
        - uses: actions/checkout@v3
        - uses: actions/setup-node@v3
        - run: cd backend && npm install
        - run: cd backend && npm run test
        - run: cd frontend && npm install
        - run: cd frontend && npm run test
        - run: cd frontend && npm run build
  ```

##### 2. Docker
- [ ] Crear `backend/Dockerfile`:
  ```dockerfile
  FROM node:18-alpine
  WORKDIR /app
  COPY package*.json ./
  RUN npm ci --only=production
  COPY . .
  RUN npm run build
  CMD ["node", "dist/main.js"]
  ```
  
- [ ] Crear `docker-compose.yml`:
  ```yaml
  version: '3.8'
  services:
    postgres:
      image: postgres:14
      environment:
        POSTGRES_DB: momentus
        POSTGRES_PASSWORD: ${DB_PASSWORD}
      volumes:
        - postgres-data:/var/lib/postgresql/data
    
    backend:
      build: ./backend
      environment:
        DATABASE_URL: ${DATABASE_URL}
      depends_on:
        - postgres
    
    frontend:
      build: ./frontend
      ports:
        - "80:80"
  ```

##### 3. Environment Configs
- [ ] Separar configuraciones:
  - `.env.development`
  - `.env.staging`
  - `.env.production`
  
- [ ] Usar ConfigModule de NestJS con validación
- [ ] Variables críticas en secrets manager (AWS Secrets, Azure Key Vault)

##### 4. Monitoring
- [ ] **Backend Health Check**: Endpoint `GET /health`
- [ ] **Logging Centralizado**: Winston → CloudWatch o ELK
- [ ] **Métricas**: Prometheus + Grafana (opcional)
- [ ] **Error Tracking**: Sentry para backend y frontend
- [ ] **Uptime Monitoring**: UptimeRobot o similar

##### 5. Backups
- [ ] Script de backup automático de PostgreSQL
- [ ] Cronjob diario: `pg_dump > backup-$(date).sql`
- [ ] Subir a S3 o almacenamiento cloud
- [ ] Retención: 7 días diarios, 4 semanales, 12 mensuales

#### **Prompt para Agente IA:**
```
TAREA: Configurar CI/CD y Docker para el proyecto

CONTEXTO:
- Proyecto sin pipeline de deployment
- Backend NestJS, Frontend React, PostgreSQL

OBJETIVO:
Setup completo de CI/CD con GitHub Actions y Docker

PASOS:
1. Crear .github/workflows/ci.yml para tests automáticos
2. Crear backend/Dockerfile y frontend/Dockerfile
3. Crear docker-compose.yml en raíz
4. Crear .dockerignore en cada proyecto
5. Configurar multi-stage builds para optimizar imagen
6. Crear script deploy.sh para deployment a servidor
7. Documentar proceso de deployment en README
8. Configurar secrets en GitHub (DB_PASSWORD, JWT_SECRET)
9. Crear health check endpoint en backend
10. Configurar Sentry para error tracking

CRITERIOS DE ACEPTACIÓN:
- Pipeline ejecuta tests en cada push
- Build pasa sin errores
- docker-compose up levanta todo el stack
- Imagen de producción <200MB
- Health check responde en /health
- Deployment a staging automático en merge a main
- Logs centralizados funcionando

ARCHIVOS A CREAR:
- .github/workflows/ci.yml
- .github/workflows/deploy.yml
- backend/Dockerfile
- frontend/Dockerfile
- docker-compose.yml
- deploy.sh
- .dockerignore (x2)
```

---

### 🟢 GAP #8: ARQUITECTURA (8/10 → 9/10) - BAJA

#### **Optimizaciones Menores:**
- [ ] **Event-Driven para Notificaciones**
  - Usar EventEmitter2 de NestJS
  - Emitir eventos: `task.assigned`, `checkin.submitted`, `blocker.created`
  - Listeners para enviar notificaciones
  
- [ ] **Separation of Concerns**
  - Extraer lógica de negocio compleja a services dedicados
  - Crear `NotificationService`, `PermissionService`
  
- [ ] **DTOs más Granulares**
  - Separar DTOs de creación vs actualización
  - Usar PartialType y PickType de @nestjs/mapped-types

---

## 📅 PLAN DE EJECUCIÓN PRIORIZAD

### **FASE 1: CRÍTICO - Semana 1 (40 horas)**

| Día | Tarea | Responsable | Horas | Prioridad |
|-----|-------|-------------|-------|-----------|
| 1-2 | GAP #2: Manejo de Errores | IA Agent | 16h | CRÍTICA |
| 3-4 | GAP #1: Tests Backend (unitarios + integración) | IA Agent | 16h | CRÍTICA |
| 5 | GAP #3: Seguridad (rate limiting, CORS, helmet) | IA Agent | 8h | CRÍTICA |

**Resultado Esperado**: Código robusto sin mocks, con tests básicos y seguridad mejorada (7.5/10)

### **FASE 2: ALTA - Semana 2 (40 horas)**

| Día | Tarea | Responsable | Horas | Prioridad |
|-----|-------|-------------|-------|-----------|
| 1-2 | GAP #4: Completar CRUD Proyectos + Drag&Drop | IA Agent | 12h | ALTA |
| 3 | GAP #4: Página de Reportes (3 gráficas básicas) | IA Agent | 8h | ALTA |
| 4-5 | GAP #5: Documentación (README, Swagger, Manual) | IA Agent | 12h | ALTA |
| 5 | GAP #1: Tests Frontend (componentes críticos) | IA Agent | 8h | ALTA |

**Resultado Esperado**: Funcionalidades completas, documentado (8.5/10)

### **FASE 3: MEDIA - Semana 3 (32 horas)**

| Día | Tarea | Responsable | Horas | Prioridad |
|-----|-------|-------------|-------|-----------|
| 1-2 | GAP #6: Performance (paginación, React Query, caché) | IA Agent | 12h | MEDIA |
| 3 | GAP #7: Docker + docker-compose | IA Agent | 8h | MEDIA |
| 4-5 | GAP #7: CI/CD con GitHub Actions | IA Agent | 12h | MEDIA |

**Resultado Esperado**: Optimizado y listo para deployment (9/10)

### **FASE 4: PULIDO - Semana 4 (24 horas)**

| Día | Tarea | Responsable | Horas | Prioridad |
|-----|-------|-------------|-------|-----------|
| 1 | GAP #4: Timeline y Workload (MVP básico) | IA Agent | 8h | BAJA |
| 2 | GAP #3: Refresh tokens + Auditoría | IA Agent | 8h | MEDIA |
| 3-4 | Testing E2E + Fixes de bugs encontrados | IA Agent | 8h | MEDIA |

**Resultado Esperado**: Producción ready (9.5/10)

---

## 🤖 GUÍA PARA AGENTES IA

### **Cómo Usar Este Documento:**

1. **Seleccionar un GAP** según prioridad y fase
2. **Copiar el "Prompt para Agente IA"** correspondiente
3. **Pegar en Claude/Gemini** con contexto adicional si es necesario
4. **Revisar el código generado** antes de commitear
5. **Ejecutar tests** para validar
6. **Marcar tarea como completa** en checklist

### **Template de Prompt Genérico:**

```
ROL: Eres un desarrollador senior especializado en [NestJS/React/PostgreSQL]

CONTEXTO DEL PROYECTO:
- Sistema de gestión de tareas llamado Momentus
- Stack: NestJS + React + PostgreSQL + TypeORM
- Estado actual: 6.5/10, objetivo: 10/10
- Ubicación proyecto: d:\planificacion\

TAREA ESPECÍFICA:
[Copiar tarea del GAP correspondiente]

RESTRICCIONES:
- Usar TypeScript estricto
- Seguir convenciones del proyecto existente
- Agregar tests para nuevas funcionalidades
- Documentar funciones públicas con JSDoc
- No romper funcionalidad existente

ARCHIVOS RELEVANTES:
[Listar archivos del GAP]

CRITERIOS DE ÉXITO:
[Copiar criterios del GAP]

FORMATO DE RESPUESTA ESPERADO:
1. Análisis de archivos existentes
2. Plan de cambios detallado
3. Código implementado con comentarios
4. Tests correspondientes
5. Documentación actualizada
6. Comando para verificar que funciona
```

### **Estrategia de Colaboración IA:**

**Claude (Extended Thinking):** Ideal para:
- Análisis arquitectónico
- Revisión de código complejo
- Diseño de soluciones
- Documentación detallada

**Gemini:** Ideal para:
- Implementación rápida de features
- Generación de tests
- Refactoring
- Fixes de bugs específicos

**Dividir Trabajo:**
1. Claude diseña la solución y estructura
2. Gemini implementa el código
3. Claude revisa y optimiza
4. Ambos generan tests

---

## ✅ CRITERIOS DE ACEPTACIÓN GLOBAL

### **Para Considerar el Proyecto 10/10:**

#### Funcionalidad
- [ ] Todos los flujos principales funcionan sin errores
- [ ] CRUD completo de todas las entidades
- [ ] Sin código mock o datos hardcodeados
- [ ] Todas las páginas implementadas

#### Calidad de Código
- [ ] Cobertura de tests >80%
- [ ] Sin errores de ESLint/TSLint
- [ ] Sin warnings del compilador
- [ ] Código documado con JSDoc

#### Seguridad
- [ ] npm audit sin vulnerabilidades críticas
- [ ] Rate limiting activo
- [ ] CORS configurado apropiadamente
- [ ] Inputs sanitizados
- [ ] Refresh tokens implementados

#### Performance
- [ ] Tiempo de carga inicial <2 segundos
- [ ] Tiempo de respuesta API <300ms (promedio)
- [ ] Lighthouse score >90
- [ ] Sin memory leaks

#### Documentación
- [ ] README completo con instrucción de setup
- [ ] API documentada con Swagger
- [ ] Manual de usuario disponible
- [ ] Diagramas de arquitectura

#### DevOps
- [ ] CI/CD funcional
- [ ] Docker compose funciona
- [ ] Health checks implementados
- [ ] Backups automatizados

---

## 📊 MÉTRICAS DE PROGRESO

### **Checklist General:**

```
CRÍTICO (Debe estar antes de demo):
[  ] 0% - Eliminar TODO el código mock
[  ] 0% - Manejo de errores robusto
[  ] 0% - Tests backend (mínimo 50 tests)
[  ] 0% - Seguridad básica (rate limit, CORS, helmet)
[  ] 0% - README con instalación

ALTA (Debe estar antes de producción):
[  ] 0% - CRUD Proyectos completo
[  ] 0% - Drag & Drop persiste
[  ] 0% - Página Reportes funcional
[  ] 0% - Tests frontend (25+ tests)
[  ] 0% - Documentación API (Swagger)

MEDIA (Mejora experiencia):
[  ] 0% - Paginación en listas
[  ] 0% - React Query implementado
[  ] 0% - Docker + compose
[  ] 0% - CI/CD básico
[  ] 0% - Performance optimizada

BAJA (Nice to have):
[  ] 0% - Timeline funcional
[  ] 0% - Workload funcional
[  ] 0% - Notificaciones real-time
[  ] 0% - Tests E2E completos
```

**Progreso Actual: 0/30 tareas completadas**

---

## 🎯 ENTREGABLES POR FASE

### **Fase 1 - Entregables (Fin Semana 1):**
1. ✅ Código sin mocks
2. ✅ Error handling completo
3. ✅ 50+ tests backend pasando
4. ✅ Seguridad básica implementada
5. ✅ README con instalación

**Demo-able:** SÍ  
**Producción Ready:** NO

### **Fase 2 - Entregables (Fin Semana 2):**
1. ✅ CRUD Proyectos completo
2. ✅ Todas las páginas funcionales (no stubs)
3. ✅ 25+ tests frontend
4. ✅ Swagger docs completo
5. ✅ Manual de usuario

**Demo-able:** SÍ (excelente)  
**Producción Ready:** Casi

### **Fase 3 - Entregables (Fin Semana 3):**
1. ✅ Performance optimizada
2. ✅ Docker funcionando
3. ✅ CI/CD automático
4. ✅ Health checks
5. ✅ Caché implementado

**Demo-able:** SÍ (impresionante)  
**Producción Ready:** SÍ (con monitoreo básico)

### **Fase 4 - Entregables (Fin Semana 4):**
1. ✅ Timeline funcional
2. ✅ Workload funcional
3. ✅ Refresh tokens
4. ✅ Auditoría de acciones
5. ✅ Tests E2E

**Demo-able:** SÍ (completo)  
**Producción Ready:** SÍ (enterprise grade)

---

## 📝 NOTAS FINALES

### **Recomendación de Ejecución:**

1. **Enfoque Incremental**: No intentar todo a la vez
2. **Tests Primero**: Cada feature debe tener tests
3. **Code Review**: Revisar código de IA antes de mergear
4. **Commits Atómicos**: Un commit por tarea completada
5. **Documentar Decisiones**: Por qué se hizo algo de cierta manera

### **Riesgos Identificados:**

| Riesgo | Probabilidad | Impacto | Mitigación |
|--------|--------------|---------|------------|
| Tests toman más tiempo del estimado | Alta | Alto | Priorizar tests de endpoints críticos |
| Cambios rompen funcionalidad existente | Media | Alto | Tests de regresión antes de cada fase |
| Performance no mejora como esperado | Baja | Medio | Profiling temprano, optimizaciones incrementales |
| Docker tiene problemas de compatibilidad | Baja | Medio | Usar imágenes oficiales, documentar dependencias |

### **Recursos Adicionales:**

- [NestJS Testing Docs](https://docs.nestjs.com/fundamentals/testing)
- [React Testing Library](https://testing-library.com/react)
- [Swagger NestJS](https://docs.nestjs.com/openapi/introduction)
- [Docker Best Practices](https://docs.docker.com/develop/dev-best-practices/)

---

**ESTE DOCUMENTO ES TU ROADMAP DE 6.5 A 10.**  
**Sigue el plan, usa los prompts con IA, y llegarás al objetivo.**

**¿Listo para empezar? → Comienza con GAP #2 (Manejo de Errores) - 16 horas de trabajo**

# 📋 Documentación de Mapeo de Páginas - Clarity PWA

Esta lista detalla cada vista de la aplicación, su ruta asociada y el archivo de código fuente principal correspondiente para facilitar la revisión y pruebas.

## 🧭 Mapeo de Rutas y Componentes

### 🔐 Autenticación
- **Login**: `/login`
  - 📄 Archivo: `src/pages/LoginPage.tsx`

### 📅 Módulo "Hoy" (Mi Día)
Ruta Base: `/app/hoy`
- **Ejecución (Vista Principal)**: `/app/hoy` (index)
  - 📄 Archivo: `src/pages/Hoy/views/ExecutionView.tsx`
  - ⚠️ Nota: Esta vista fue migrada a **React Query** (sin fetch manual).
- **Calendario**: `/app/hoy/calendario`
  - 📄 Archivo: `src/pages/Hoy/views/CalendarView.tsx`
- **Bitácora**: `/app/hoy/bitacora`
  - 📄 Archivo: `src/pages/Hoy/views/TimelineView.tsx`
- **KPIs**: `/app/hoy/kpis`
  - 📄 Archivo: `src/pages/Hoy/views/ExecutiveView.tsx`
- **Alertas**: `/app/hoy/alertas`
  - 📄 Archivo: `src/pages/Hoy/views/AlertsView.tsx`
- **Bloqueos**: `/app/hoy/bloqueos`
  - 📄 Archivo: `src/pages/Hoy/views/BlockersView.tsx`
- **Métricas**: `/app/hoy/metricas`
  - 📄 Archivo: `src/pages/Hoy/views/MetricsView.tsx`
- **Equipo (Vista Personal)**: `/app/hoy/equipo`
  - 📄 Archivo: `src/pages/Hoy/views/TeamView.tsx`
- **Visibilidad**: `/app/hoy/visibilidad`
  - 📄 Archivo: `src/pages/Hoy/views/VisibilidadView.tsx`

### 📥 Módulo Pendientes
- **Pendientes Global**: `/app/pendientes`
  - 📄 Archivo: `src/pages/Pendientes/PendientesPage.tsx`

### 👥 Módulo Equipo (Jefatura/Gerencia)
- **Dashboard Manager**: `/app/equipo`, `/app/equipo/hoy`
  - 📄 Archivo: `src/pages/Equipo/ManagerDashboard.tsx`
- **Agenda de Miembro**: `/app/agenda/:userId`
  - 📄 Archivo: `src/pages/Equipo/MemberAgendaPage.tsx`
- **Dashboard Software**: `/app/software/dashboard`
  - 📄 Archivo: `src/pages/Equipo/DashboardManager.tsx`
- **Planificación Equipo**: `/app/equipo/planning/:userId`
  - 📄 Archivo: `src/pages/Planning/TeamPlanningPage.tsx`
- **Bloqueos Equipo**: `/app/equipo/bloqueos`
  - 📄 Archivo: `src/pages/Equipo/EquipoBloqueosPage.tsx`
- **Mi Equipo Detalle**: `/app/equipo/mi-equipo`
  - 📄 Archivo: `src/pages/Equipo/MiEquipoPage.tsx`

### 🏗️ Módulo Planning (Proyectos)
- **Mis Proyectos**: `/app/planning/proyectos`
  - 📄 Archivo: `src/pages/Planning/ProyectosPage.tsx`
- **Línea de Tiempo (Gantt)**: `/app/planning/timeline`, `/app/proyectos/:id`
  - 📄 Archivo: `src/pages/Planning/TimelinePage.tsx`
- **Aprobaciones**: `/app/planning/approvals`
  - 📄 Archivo: `src/pages/Planning/ApprovalsPage.tsx`
- **Roadmap**: `/app/planning/roadmap`
  - 📄 Archivo: `src/pages/Planning/RoadmapPage.tsx`
- **Carga Laboral**: `/app/planning/carga`
  - 📄 Archivo: `src/pages/Planning/WorkloadPage.tsx`
- **Simulación**: `/app/planning/simulation`
  - 📄 Archivo: `src/pages/Planning/ProjectSimulationPage.tsx`
- **Plan de Trabajo**: `/app/planning/plan-trabajo`
  - 📄 Archivo: `src/pages/Planning/PlanTrabajoPage.tsx`

### 📝 Notas y Reportes
- **Notas de Reunión**: `/app/notas`
  - 📄 Archivo: `src/pages/Notes/MeetingNotesPage.tsx`
- **Reportes Avanzados**: `/app/reports`
  - 📄 Archivo: `src/pages/Reports/ReportsPage.tsx`
- **Automatización**: `/app/automation`
  - 📄 Archivo: `src/pages/Automation/AutomationPage.tsx`

### ⚙️ Administración (Roles Protegidos)
- **Usuarios**: `/app/admin/users`
  - 📄 Archivo: `src/pages/Admin/UsersPage.tsx`
- **Roles**: `/app/admin/roles`
  - 📄 Archivo: `src/pages/Admin/Roles/RolesPage.tsx`
- **Permisos**: `/app/admin/permisos`
  - 📄 Archivo: `src/pages/Admin/Acceso/PermisosPage.tsx`
- **Visibilidad Admin**: `/app/admin/visibilidad`
  - 📄 Archivo: `src/pages/Admin/Acceso/VisibilidadPage.tsx`
- **Logs Sistema**: `/app/admin/logs`
  - 📄 Archivo: `src/pages/Admin/LogsPage.tsx`
- **Auditoría**: `/app/admin/audit`
  - 📄 Archivo: `src/pages/Admin/Audit/AuditLogsPage.tsx`
- **Importación**: `/app/admin/import`
  - 📄 Archivo: `src/pages/Admin/Import/ImportPage.tsx`
- **Seguridad**: `/app/admin/seguridad`
  - 📄 Archivo: `src/pages/Admin/SecurityManagementPage.tsx`

### 📂 Otros
- **Archivo/Historial**: `/app/archivo`
  - 📄 Archivo: `src/pages/Archive/ArchivePage.tsx`
- **Ayuda/Tutorial**: `/app/help`
  - 📄 Archivo: `src/pages/Tutorial/TutorialPage.tsx`

---

## 🔍 Puntos de Revisión Clave (Post-Optimización)

1. **ExecutionView (`src/pages/Hoy/views/ExecutionView.tsx`)**:
   - Verificar: Mutaciones optimistas al completar tareas.
   - Verificar: Validar que `fetchMiDia` no se llame manualmente.

2. **App Entry (`src/App.tsx`)**:
   - Verificar: Configuración de `QueryClient` (staleTime 15s).

3. **Contexto (`src/pages/Hoy/context/MiDiaContext.tsx`)**:
   - Verificar: Uso correcto de `useMiDiaQuery` y exposición de `toggleTarea`.

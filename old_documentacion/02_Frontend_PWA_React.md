# Proyecto Clarity - Frontend PWA (React)

## 1. Stack Tecnológico
- **Frontend Core:** React PWA (móvil/desktop).
- **Estilos:** CSS Modules / Vanilla CSS / Tailwind (según preferencia, Clean UI).
- **Navegación:** React Router.
- **Notificaciones:** Web Push.
- **Paleta:** Blanco/gris + acento rojo + verdes pasteles para estados (sin azul).

## 2. Navegación y Rutas

### Rutas Públicas
- `/login`
- `/activate` (magic link / token)

### App Shell (Privado - Empleado)
- `/app/hoy` (**Principal** - Mi Día)
- `/app/pendientes`
- `/app/proyectos`
- `/app/bloqueos`

### Rutas Jefe (Roles: Lider/Gerente/Admin)
- `/app/equipo/hoy`
- `/app/equipo/bloqueos`
- `/app/equipo/backlog`

### Rutas Gerencia / PMO
- `/app/gerencia/resumen`
- `/app/reportes`

### Rutas Admin
- `/admin/estructura` (Organigrama)
- `/admin/catalogos`
- `/admin/usuarios`

## 3. Estructura de Proyecto (React)

```
clarity-pwa/
  src/
    app/
      router.tsx         # Configuración de rutas
      routes.ts          # Constantes de rutas
      AppShell.tsx       # Layout principal (TopBar + BottomNav)
      RequireAuth.tsx    # Guard de autenticación
      RoleGate.tsx       # Guard de roles
    pages/
      Login/
        LoginPage.tsx
      Hoy/
        MiDiaPage.tsx
        components/
          ArrastradosList.tsx
          CheckinForm.tsx
          BloqueosMiniList.tsx
      Pendientes/
        MisPendientesPage.tsx
        components/
          TareasTabs.tsx
          TareaCard.tsx
      Proyectos/
        ProyectosPage.tsx
        ProyectoDetallePage.tsx
      Bloqueos/
        MisBloqueosPage.tsx
      Equipo/
        EquipoHoyPage.tsx
        EquipoBloqueosPage.tsx
        EquipoBacklogPage.tsx
      Gerencia/
        ResumenGerencialPage.tsx
      Reportes/
        ReportesPage.tsx
    components/
      layout/
        TopBar.tsx       # Título + DatePicker + Filtro Proyecto
        BottomNav.tsx    # Navegación móvil
      ui/
        KpiCard.tsx
        StatusPill.tsx   # Semáforos (✅⚠️🟥)
        EmptyState.tsx
        Modal.tsx
        Drawer.tsx
      pickers/
        TaskPicker.tsx   # Autocomplete + Chips
        UserPicker.tsx
        AreaPicker.tsx
      forms/
        TextArea.tsx
        Toggle.tsx
    hooks/
      useAuth.ts
      useMe.ts
      useMiDia.ts
      useTareas.ts
      useEquipo.ts
      useGerencia.ts
    services/
      api.ts             # Axios/Fetch wrapper
      auth.service.ts
      clarity.service.ts
    types/
      modelos.ts         # Interfaces TS (match con DTOs)
    pwa/
      sw-register.ts
      push.ts
    main.tsx
    index.css
```

## 4. Detalle de Pantallas y Componentes

### A) /app/hoy — Mi Día
**Header:** “Mi Día” + SelectFecha.

1.  **Sección Arrastrados (Ayer):**
    *   Lista `<TaskCard compact />`.
    *   Botones (1-tap):
        *   ✅ Sigue
        *   🟦 Lo hizo otro (abre picker usuario)
        *   🗑️ Ya no aplica (modal razón)
        *   🔁 Reasignar (picker usuario)
2.  **Sección Check-in:**
    *   `<TaskPicker label="Hoy entrego" max=1 />` (Obligatorio)
    *   `<TaskPicker label="Hoy avanzo" max=3 />`
    *   Toggle: “Estoy bloqueado”.
        *   Si ON: `<UserOrAreaPicker />` + `<TextArea Motivo />`.
    *   **Botones Rápidos:** “Copiar ayer”, “Sin bloqueos”, “Dictar”.
    *   **CTA Fijo:** Enviar.
3.  **Lista Bloqueos:**
    *   `<BloqueosMiniList />` (Mis bloqueos activos).

### B) /app/pendientes — Mis Pendientes
*   **Tabs:** En curso | Bloqueadas | Pendientes | Revisión.
*   **Lista:** `<TareaCard />` con acciones rápidas (Hecha, Bloqueada, Subir Prioridad, Reasignar).
*   **FAB:** “+ Tarea rápida”.

### C) /app/equipo/hoy — Equipo Hoy (Vista Jefe)
*   **Top KPIs:** % reportaron, # bloqueos activos, # no reportaron.
*   **Lista Usuarios (`<UserRow />`):**
    *   Semáforo (✅⚠️🟥).
    *   Texto “Hoy entrego: ...”.
    *   Botones: “Comentar”, “Ver detalle”.
*   **Panel "No reportaron":** Botón "Ping" (Recordatorio).

### D) /app/equipo/bloqueos — Bloqueos del Equipo
*   **Lista:** `<BlockerCard />` (Origen -> Destino, Motivo, Aging).
*   **Filtros:** Aging (0-24h, 24-48h, 48+), Proyecto, Responsable Esperado.
*   **Acciones:** “Marcar resuelto”, “Escalar”, “Comentar”.

### E) /app/gerencia/resumen — Resumen Gerencial
*   **Rollup por Nodo (Cards):** % participación, WIP, Bloqueos activos, Riesgos (>48h).
*   **Top Riesgos:** Bloqueos envejecidos + impacto (personas dependientes).
*   **Proyectos:** WIP, Hechas hoy, Bloqueadas.

## 5. Integración API (Contrato Mínimo)
El frontend consumirá los siguientes endpoints principales:
- `GET /api/mi-dia`: Carga estado inicial del día.
- `POST /api/checkins`: Envía el plan diario.
- `POST /api/tareas/rapida`: Creación ágil.
- `GET /api/equipo/hoy`: Dashboard de líder.
- `GET /api/gerencia/resumen`: Dashboard gerencial.

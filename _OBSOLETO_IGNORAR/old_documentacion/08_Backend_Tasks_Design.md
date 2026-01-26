# Backend Implementation Plan: Clarify (Pulse)

## 1. Design & Architecture

### A. Technology Stack
- **Framework:** NestJS (Node.js)
- **Database:** PostgreSQL (Supabase)
- **ORM:** TypeORM (Code-First approach)
- **Auth:** JWT + Passport

### B. Database Schema (Er Diagram - TypeORM Entities)
Mappings from user's SQL Server proposal to Postgres Entities.

1.  **Core / Organization**
    -   `Usuario` (Existing): Add fields for Auth if missing.
    -   `OrganizacionNodo`: Hierarchical structure (Parent/Child).
        -   `id`, `nombre`, `tipo` (Gerencia/Equipo), `idPadre` (Self-relation).
    -   `UsuarioOrganizacion`: Many-to-Many with roles.
        -   `idUsuario`, `idNodo`, `rol` (Lider/Miembro), `fechaInicio`, `fechaFin`.
2.  **Work / Projects**
    -   `Proyecto`: `nombre`, `descripcion`, `idNodoDuenio`, `estado`.
    -   `Tarea`: `titulo`, `estado` (Pendiente/EnCurso/Bloqueada/Hecha), `prioridad` (Alta/Media/Baja), `esfuerzo`, `fechaObjetivo`.
    -   `TareaAsignado`: `idTarea`, `idUsuario`, `tipo` (Responsable/Colaborador).
3.  **Daily Flow**
    -   `Checkin`: Daily snapshot. `fecha`, `idUsuario`, `entregableTexto`, `nota`.
    -   `CheckinTareas`: Link specific tasks to a check-in (Entrego/Avanzo).
    -   `Bloqueo`: `idTarea`, `idOrigen` (Who is blocked), `idDestino` (Who blocks), `motivo`, `estado` (Activo/Resuelto), `fechaCreacion`.

### C. API Endpoints (Controllers)

**1. Auth (`AuthController`)**
- `POST /auth/login`: Return JWT and user info.

**2. Core (`ClarityController`)**
-   **Mi Día (Employee)**
    -   `GET /api/mi-dia?fecha=...`: Returns check-in status, carried over tasks (arrastrados), current blocks.
    -   `POST /api/checkins`: Upsert daily check-in (save delivery promise).
    -   `POST /api/checkins/tareas`: Attach tasks to today's plan ("Hoy avanzo").
-   **Task Management**
    -   `POST /api/tareas`: Create task (Quick add).
    -   `PATCH /api/tareas/:id`: Update status/priority.
    -   `POST /api/tareas/:id/revalidar`: Handle "Arrastrados" (Sigue/Ya no aplica).
-   **Blockages**
    -   `POST /api/bloqueos`: Create blocker ("I wait for X").
    -   `PATCH /api/bloqueos/:id/resolve`: Mark as resolved.
-   **Dashboards (Manager/Director)**
    -   `GET /api/equipo/hoy`: Team status (Traffic light: ✅/⚠️/🟥).
    -   `GET /api/equipo/backlog`: Team's aggregated WIP.
    -   `GET /api/gerencia/resumen`: Hierarchical rollup (Stats per node).

---

## 2. Implementation Tasks

### Phase 1: Schema & Entities
- [x] **Task 1.1:** Update `entities.ts` to include `OrganizacionNodo` and `UsuarioOrganizacion`.
- [x] **Task 1.2:** Add relationships (ManyToOne/OneToMany) to `Usuario` and `Tarea`.
- [x] **Task 1.3:** Run migration (`synchronize: true`) to update Supabase schema. (Prepared)

### Phase 2: Core Logic (Services)
- [x] **Task 2.1:** Implement `ClarityService.miDiaGet`.
    -   *Logic:* Fetch today's checkin + Query tasks from yesterday not finished (Arrastrados) + Active blockages.
- [x] **Task 2.2:** Implement `ClarityService.checkinUpsert`.
    -   *Logic:* Transactional save of Checkin Header + list of Tasks IDs (Entregas/Avances).
- [x] **Task 2.3:** Implement `ClarityService.bloqueoGestor`.
    -   *Logic:* Create blockage and link to task.

### Phase 3: Hierarchical Queries (The tricky part)
- [x] **Task 3.1:** Implement Recursive Query (CTE) helper in TypeORM.
    -   *Goal:* Given a User ID, find their Node, and all Child Nodes (Subtree).
- [x] **Task 3.2:** Implement `equipoHoy` endpoint.
    -   *Logic:* For every user in the Subtree, get their "Mi Dia" status and Blockages.

### Phase 4: Reporting
- [x] **Task 4.1:** Implement `gerenciaResumen`.
    -   *Logic:* Check-in participation % per Node.

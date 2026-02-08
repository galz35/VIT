# Frontend Implementation Plan: Clarity PWA (Pulse)

## 1. Design & UX

### A. Principles
- **Speed:** "Mi Día" check-in must take < 60 seconds.
- **Simplicity:** One screen, minimal inputs.
- **Visuals:** Traffic lights (✅/⚠️/🟥) for status.

### B. Project Structure (Vite + React)
- **Framework:** React 18+
- **Styling:** Tailwind CSS (Custom "Claro" Palette: Red/White/Gray).
- **PWA:** Vite PWA Plugin for offline support and "Install to Home Screen".

### C. Pages (Views)
1.  **Login (`/login`)**: Simple credential entry.
2.  **App Layout (`/app`)**: Contains Navigation (Bottom Bar for mobile).
3.  **Mi Día (`/app/hoy`)**: The main screen.
    -   *Arrastrados:* Swipeable list of yesterday's pending tasks.
    -   *Plan:* "Hoy entrego" (1 item) + "Hoy avanzo" (3 items).
    -   *Blockers:* "I am blocked" Toggle.
4.  **Pendientes (`/app/pendientes`)**: Personal Backlog. Tabs: Active / Blocked / Shared.
5.  **Equipo (`/app/equipo`)**: Manager View.
    -   List of team members with status indicators.
    -   Top active blockers list.
6.  **Gerencia (`/app/gerencia`)**: Director View.
    -   Rollup cards per department/node.

---

## 2. Implementation Tasks

### Phase 1: Setup & Foundation
- [x] **Task 1.1:** Fix Tailwind CSS build Config (Ensure v3 compatibility if v4 fails).
- [x] **Task 1.2:** Configure Directory Structure (`/src/pages`, `/src/components`, `/src/hooks`).
- [x] **Task 1.3:** Setup `react-router-dom` with Public/Private routes and `AuthContext`.

### Phase 2: Components Library
- [ ] **Task 2.1:** Build `TaskCard` Component (Title, Priority Badge, Quick Actions).
- [ ] **Task 2.2:** Build `StatusPill` Component (Visual indicator).
- [ ] **Task 2.3:** Build `BottomNav` with routing links.
- [ ] **Task 2.4:** Build `TopBar` with Date Picker.

### Phase 3: "Mi Día" Feature (Employee Flow)
- [ ] **Task 3.1:** Implement `useMiDia` hook to fetch data from Backend.
- [ ] **Task 3.2:** Build "Arrastrados" Section (Revalidation logic: Sigue/Ya no).
- [ ] **Task 3.3:** Build "Check-in Form" (Select Tasks + Text Input).

### Phase 4: Manager Views
- [ ] **Task 4.1:** Implement `useEquipo` hook.
- [ ] **Task 4.2:** Build "Equipo Dashboard" (List of Users).
- [ ] **Task 4.3:** Build "Blocker Resolution" UI (Manager can click to resolve).

### Phase 5: PWA Integrations
- [ ] **Task 5.1:** Configure `vite-plugin-pwa` (Manifest, Icons).
- [ ] **Task 5.2:** Test "Add to Home Screen" flow.

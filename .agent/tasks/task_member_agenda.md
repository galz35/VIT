---
status: completed
priority: high
title: Implementar Página de Agenda de Miembro (Redirección)
description: |
  El usuario requiere una vista dedicada para gestionar la agenda de los miembros del equipo, basada en la funcionalidad de "Mi Día" (/app/hoy), pero aplicada a un usuario específico (/app/agenda/:userId).

  **Objetivos:**
  1.  Crear una nueva página `MemberAgendaPage` que replique la experiencia de `MiDiaPage`.
  2.  Implementar la ruta `/app/agenda/:userId`.
  3.  Desarrollar/Habilitar endpoints en backend para leer y modificar tareas de terceros (siendo Manager/Admin).
  4.  Redirigir desde `ManagerDashboard` a esta nueva página en lugar de abrir un modal.

  **Diseño Técnico (Fork & Adapt):**
  1.  **Backend Strategy:** Crear endpoint paralelo `/clarity/agenda/:userId` que reutilice `TasksService.miDiaGet` para no duplicar lógica de negocio.
  2.  **Frontend Strategy:**
      - Crear un **Contexto Espejo** (`MemberAgendaContext`) que sea idéntico a `MiDiaContext` pero consumiendo el nuevo endpoint.
      - Esto aísla completamente al usuario "Manager" del estado de su propia agenda.
      - La página `MemberAgendaPage` instanciará este contexto y reutilizará componentes de visualización existentes.

  **Plan de Ejecución Paso a Paso:**
  1.  [Backend] Agregar endpoint `GET agenda/:targetUserId` en `ClarityController`.
  2.  [Frontend] Agregar método `getMemberAgenda` en `clarity.service.ts`.
  3.  [Frontend] Crear `src/pages/Hoy/context/MemberAgendaContext.tsx`.
  4.  [Frontend] Crear `src/pages/Equipo/MemberAgendaPage.tsx` con Banner de Supervisor.
  5.  [Frontend] Registrar ruta `/app/agenda/:userId` en `App.tsx`.
  6.  [Frontend] Actualizar navegación en `ManagerDashboard.tsx`.

  **Consideraciones:**
  - La interfaz debe indicar claramente que se está viendo/editando la agenda de *otro* usuario.
  - Se debe mantener la estética "premium" y funcional de la vista original.
---

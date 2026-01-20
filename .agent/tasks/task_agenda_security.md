---
status: completed
priority: high
title: Implementar Seguridad Jerárquica en Agenda de Miembro
description: |
  Se ha detectado una vulnerabilidad potencial en el nuevo endpoint `/clarity/agenda/:targetUserId`. Actualmente, cualquier usuario autenticado puede acceder a la agenda de cualquier otro usuario simplemente conociendo su ID.

  **Objetivos:**
  1.  Restringir el acceso al endpoint de agenda exclusivamente a usuarios autorizados (Managers, Jefes directos, Admins).
  2.  Validar la relación jerárquica entre el solicitante y el objetivo.

  **Diseño Técnico:**
  1.  **Backend (NestJS):**
      - Utilizar el método existente `TasksService.verificarAccesoSubordinado(jefeId, subordinadoId)` o implementar uno similar en `ClarityService`.
      - En `ClarityController.getMemberAgenda`:
          - Obtener `requesterId` del JWT (`req.user.userId`).
          - Si `requesterId === targetUserId`, permitir (auto-consulta).
          - Si no, invocar validación de jerarquía/rol (Admin siempre pasa).
          - Si falla, lanzar `ForbiddenException`.

  **Plan de Implementación:**
  1.  Leer `d:\planificacion\backend\src\clarity\tasks.service.ts` para verificar disponibilidad de `verificarAccesoSubordinado`.
  2.  Exponer esta lógica o replicarla en `ClarityController`.
  3.  Modificar `getMemberAgenda` en `clarity.controller.ts` insertando el bloque de seguridad.
---

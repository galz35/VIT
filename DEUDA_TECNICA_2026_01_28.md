# 🛠️ Reporte de Deuda Técnica y Estabilidad - Clarity
**Fecha:** 28 de Enero de 2026
**Estado:** Activo 

---

## 1. Hallazgos Críticos Recientes (Sesión Actual)

### 🚨 A. Inconsistencia en Lógica de Visibilidad (SP vs Simulación)
*   **Problema:** Se detectó que el SP `sp_Proyecto_ObtenerVisibles` no incluía la lógica de ver proyectos creados por subordinados, a pesar de que la jerarquía se calculaba correctamente en el backend.
*   **Impacto:** Los líderes no podían ver proyectos estratégicos creados por su equipo si no tenían tareas asignadas a ellos mismos.
*   **Estado:** Corregido mediante el parche `fix_sp_visibility_logic_v2.sql`. Se recomienda auditar otros SPs de lectura (`sp_Equipo_ObtenerInforme`, etc.) para asegurar consistencia jerárquica.

### 🟠 B. Gestión de Transacciones en Repositorios
*   **Problema:** Los métodos en `planning.repo.ts`, `clarity.repo.ts` y `tasks.repo.ts` no aceptan un parámetro opcional de transacción (`tx`).
*   **Consecuencia:** Es imposible realizar operaciones atómicas (ej: Crear Proyecto + Crear Tareas) desde la capa de Servicios. Si la segunda operación falla, la primera no se revierte (No hay Rollback).
*   **Acción Requerida:** Refactorizar las firmas de los repositorios para incluir `tx?: sql.Transaction`.

---

## 2. Inventario Semántico y Redundancia

### 🏚️ A. Repositorios Huérfanos/Duplicados
*   **`clarity.repo.ts`**: Contiene métodos deprecados como `crearTarea` (que ahora lanza error). Sigue siendo el repositorio principal para "Mi Día" y "Equipo", pero mezcla lógica que debería estar en `tasks.repo.ts`.
*   **`tasks.repo.ts`**: Es el nuevo estándar para escritura, pero no se usa en todas las pantallas.
*   **`planning.repo.ts`**: Gestiona proyectos pero usa lógica de lectura que a veces choca con la de `clarity`.

### 🔠 B. Strings Mágicos y Enums
*   **Problema:** Los estados (`'Pendiente'`, `'Hecha'`, `'EnCurso'`) están hardcodeados tanto en el código TypeScript como en los Stored Procedures.
*   **Riesgo:** Inconsistencia de datos. Si un SP usa `'Hecho'` y el TS usa `'Hecha'`, el sistema de recálculo de porcentajes fallará silenciosamente.

---

## 3. Rendimiento (Base de Datos)

### ✅ Logros:
*   Migración exitosa a Procedimientos Almacenados para las consultas más pesadas (`Checkins`, `Listado Proyectos`, `Tareas Usuario`).
*   Implementación de TVP (Table-Valued Parameters) para el manejo de listas de IDs de equipo, evitando el límite de parámetros de SQL Server.

### 🟡 Pendiente:
*   **Paginación Real:** Aunque el SP `sp_Proyectos_Listar` soporta paginación, el frontend y algunos servicios siguen pidiendo "todo" (pageSize=2000). Esto saturará la memoria cuando el volumen de datos crezca.

---

## 4. Próximos Pasos Recomendados

1.  **Saneamiento de Repositorios:** Mover toda la lógica de `clarity.repo` que pertenezca a tareas hacia `tasks.repo`.
2.  **Apertura de Transacciones:** Modificar al menos los 5 métodos más usados (`crearProyecto`, `crearTarea`, `actualizarTarea`) para soportar `tx`.
3.  **Auditoría de Roles:** Asegurar que la lógica de "Admin/API" vs "Usuario Normal" esté centralizada en un solo lugar (Guard o Service) y no repetida en cada método del repositorio.

---
**Generado por:** Antigravity AI Toolkit

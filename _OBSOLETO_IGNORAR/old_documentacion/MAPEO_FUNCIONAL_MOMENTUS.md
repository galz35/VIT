# 🗺️ MOMENTUS - Mapeo Funcional y Checklist de Proyecto

Este documento describe la arquitectura funcional de la aplicación **MOMENTUS** y presenta un checklist del estado actual de desarrollo.

---

## 1. 🏗️ Arquitectura de Módulos (Mapeo)

### A. 🔐 Autenticación y Seguridad
El punto de entrada seguro a la plataforma.
*   **Login Premium:** Interfaz visual de alto impacto con validación de credenciales.
*   **Roles y Permisos:** Diferenciación entre Staff, Gerencia y RRHH.
*   **Protección de Rutas:** Redirección automática si no hay sesión activa.

### B. ☀️ Módulo "Mi Día" (Gestión Personal)
El núcleo operativo para el empleado. Diseñado para enfocar y reducir el recargo cognitivo.
*   **Check-in Matutino:** Formulario para declarar estado de ánimo, reportar bloqueos y definir el plan del día.
*   **Gestión de Bloqueos:** Reporte de impedimentos que requieren atención del líder.
*   **Vista de Plan Activo:** Tablero simplificado (Lista/Tablero/Foco) para trabajar durante el día.
*   **Rutinas Diarias (Nuevo):** Checklist recurrente para micro-tareas operativas (revisar reloj, correos, etc.) que no requieren gestión de proyecto compleja.
*   **Bitácora Rápida:** Registro de avances y comentarios sobre tareas en ejecución.

### C. 👥 Módulo de Equipo (Liderazgo)
Herramientas para que los gerentes gestionen a sus subordinados directos.
*   **Directorio de Equipo:** Lista visual de empleados a cargo con estado en tiempo real (¿Hizo check-in? ¿Tiene bloqueos?).
*   **Alerta de Atrasos (Nuevo):** Indicador visual (🔥) si un empleado tiene tareas vencidas.
*   **Planificación Asistida (Team Planning):**
    *   Tablero Drag & Drop para asignar trabajo del Backlog al día del empleado.
    *   **Asignación Rápida (Nuevo):** Creación y asignación inmediata de tareas sin salir de la pantalla.
    *   **Auditoría de Tareas:** Visualización de detalles (prioridad, esfuerzo, proyecto) al hacer clic.

### D. 📝 Módulo de Notas (Minutas)
Gestión de información no estructurada.
*   **Bloc de Reuniones:** Creación y edición de notas.
*   **Vinculación a Proyectos (Nuevo):** Capacidad de etiquetar notas según el proyecto (ej. "Migración", "Operaciones").
*   **Persistencia Local:** Guardado automático de borradores.

---

## 2. ✅ Checklist de Implementación

A continuación se detalla el estado de cada componente desarrollado:

### 🟢 Completado y Funcional

#### Frontend (Interfaz)
- [x] **Branding MOMENTUS:** Logos, tipografía y paleta de colores implementados.
- [x] **Login:** Flujo completo con manejo de errores y diseño responsive.
- [x] **Sidebar de Navegación:** Menú colapsable y adaptativo.
- [x] **Página "Mi Día":** Carga de datos reales, manejo de estados (Check-in vs Activo).
- [x] **Widget de Rutinas Diarias:** Persistencia local y UI de checklist.
- [x] **Lista de Equipo:** Visualización de subordinados reales (corregido bug de seed).
- [x] **Indicadores de Desempeño:** Badges de "Al día", "Con Bloqueos", "Atrasado".
- [x] **Planificador de Equipo:** Drag & Drop implementado con `dnd-kit`.
- [x] **Modales de Gestión:** Crear Tarea Rápida, Ver Detalle de Tarea.
- [x] **Notas:** Editor de texto y selector de proyectos.

#### Backend (API & Datos)
- [x] **Autenticación (NestJS):** Estrategia JWT y Guards funcionan correctamente.
- [x] **Base de Datos (PostgreSQL):** Esquema relacional (Usuarios, Tareas, Proyectos, Checkins).
- [x] **Seeding (Datos de Prueba):** Scripts para poblar la BD con estructura jerárquica (Gerente -> Empleados).
- [x] **Endpoint Check-in:** Recepción y guardado de métricas diarias.
- [x] **Endpoint Tareas:** CRUD básico y asignación.
- [x] **Endpoint Equipo:** Cálculo de subordinados y estado del día (incluyendo cálculo de atrasos).
- [x] **Corrección Jerarquía:** Script `fix-rrhh-org` para reparar relaciones de usuarios.

### 🟡 En Progreso / Mejoras Posibles (Fase 2)
- [ ] **Sincronización Rutinas-Backend:** Actualmente las rutinas son locales; idealmente deberían sincronizarse como tareas en BD (parcialmente implementado lógica visual).
- [ ] **Reportes Históricos:** Vista de tendencias de productividad o estado de ánimo semanal.
- [ ] **Notificaciones:** Alertas en tiempo real cuando un empleado reporta un bloqueo.
- [ ] **Perfil de Usuario:** Edición de avatar y contraseña desde el frontend.

### 🔴 Pendiente / Bloqueantes
- [ ] *No hay bloqueantes críticos identificados actualmente.*

---

## 3. 🚦 Flujo de Uso Recomendado

1.  **Inicio del Día (Empleado):** Entra a "Mi Día" -> Llena Check-in -> Revisa Rutinas -> Empieza a trabajar en Tareas Foco.
2.  **Supervisión (Gerente):** Entra a "Equipo" -> Revisa quién tiene bloqueos o no ha hecho check-in -> Entra al perfil de un empleado atrasado -> Asigna tareas de rescate o ajusta prioridades.
3.  **Cierre:** El sistema guarda el progreso automáticamente.

---
*Generado por Asistente de Desarrollo - 09 Enero 2026*

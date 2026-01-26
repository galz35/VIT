# 🎬 Escenario 3: Supervisión y Gobierno (Nivel Gerencial)

Este escenario simula el flujo de un **Subgerente** o **Gerente** que supervisa múltiples equipos y aprueba cambios sensibles.

---

## 👤 Perfil del Actor
*   **Rol:** Gerente General RRHH (Nivel 1)
*   **Usuario Prueba:** `juan.ortuno@claro.com.ni` (Gerente RRHH)
*   **Contraseña:** `123456`
*   **Objetivo:** Supervisar la estrategia de todo RRHH, coordinar a los Subgerentes y aprobar cambios críticos.

## 📝 Pre-condiciones
*   Existen Subgerentes a cargo (Nelson, Sergio, Aurora) y sus estructuras.
*   Alguien ha solicitado un cambio en un Proyecto Estratégico (Pre-requisito opcional para probar flujo de aprobación).

---

## 🚶‍♂️ Guía Paso a Paso

### 1. Visión de Equipo (Dashboard)
*   **Acción:** Login con `juan.ortuno@claro.com.ni`.
*   **Navegación:** `/app/equipo` (ManagerDashboard).

#### 📍 Dashboard de Equipo
1.  **Resumen Ejecutivo:**
    *   Verás KPIs: "Tareas Atrasadas", "Check-ins realizados", "Bloqueos Activos".
    *   **Acción:** Identificar el widget de "Bloqueos".
    *   *Escenario:* Un Subgerente (ej. Nelson Pérez) tiene un KPI en rojo.
    *   **Acción Gerencial:** Drill-down para ver qué coordinador de Nelson está fallando.

2.  **Visión Panorámica:**
    *   Verás lista de tus supervisados directos (Nelson, Sergio, Aurora, Cándida).
    *   **Acción:** Clic en "Sergio Martínez".
    *   **Resultado:** El dashboard muestra SOLO el área de Capacitación. (Visibilidad Jerárquica Total).

### 2. Aprobación de Cambios
*   **Navegación:** `/app/planning/approvals`.
*   **Contexto:** Como Gerente General, te llegan solicitudes de cambios de alcance en Proyectos Estratégicos de todas las subgerencias.
*   **Acción:**
    *   Ver lista de "Solicitudes Pendientes".
    *   Revisar: "Cambio de Fecha Fin: de 15/Ene a 20/Ene. Motivo: Proveedor retrasado".
    *   **Decisión:** Clic en "APROBAR".
*   *Resultado Backend:*
    *   Se actualiza la entidad `SolicitudCambio` a estado 'APROBADO'.
    *   Automáticamente se actualiza la fecha en la entidad `Tarea`.
    *   Se envía notificación al solicitante.

### 3. Reportes Ejecutivos
*   **Navegación:** `/app/reports`.
*   **Acción:** Generar reporte de "Cumplimiento por Área".
*   **Resultado:** Ver tabla comparativa de desempeño entre el equipo de Soporte (Cándida) vs Relaciones Laborales (Nelson Pérez - *Nota: Como Juan y Nelson son pares Subgerentes, Juan podría no ver detalle fino de Nelson salvo que tenga permisos trasversales, verificar configuración de visibilidad*).

### 4. Auditoría de Operaciones
*   **Visualización:** Widget "Actividad Reciente en mi Equipo".
*   **Contenido:** Un feed tipo red social: "Gustavo completó tarea X", "Cándida creó proyecto Y".
*   **Valor:** Supervisión pasiva sin necesidad de preguntar "¿Qué hicieron hoy?".

---

## 🔍 Comprobaciones Técnicas
1.  Tabla `Bloqueo`: `resuelto = true`, `resuelto_por = id_juan`.
2.  Tabla `SolicitudCambio`: `estado = 'APROBADO'`, `fecha_resolucion = now()`.
3.  Permisos: Verificar que el `QueryBuilder` filtró correctamente solo a los descendientes de la jerarquía de Juan Ortuño.

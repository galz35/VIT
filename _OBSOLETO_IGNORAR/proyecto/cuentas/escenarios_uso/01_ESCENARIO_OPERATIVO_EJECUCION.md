# 🎬 Escenario 1: Ejecución Táctica Diaria (Nivel Operativo)

Este escenario simula el flujo de trabajo típico de un **Especialista** o **Analista** que utiliza Clarity para gestionar su día a día.

---

## 👤 Perfil del Actor
*   **Rol:** Especialista / Operativo (Nivel 4 o 5)
*   **Usuario Prueba:** `josue.garcia@claro.com.ni` (Especialista RRHH A)
*   **Contraseña:** `123456`
*   **Objetivo:** Clarificar qué debe hacer hoy, reportar avances y bloquear distracciones.

## 📝 Pre-condiciones
*   El usuario tiene tareas asignadas previamente por su Coordinador.
*   El usuario pertenece a un equipo (nodo organizacional).

---

## 🚶‍♂️ Guía Paso a Paso

### 1. Inicio de Jornada y Foco
*   **Acción:** Ingresar a `http://localhost:5173/login`.
*   **Credenciales:** Usar correo `josue.garcia@claro.com.ni` y password `123456`.
*   **Aterrizaje:** El sistema redirige automáticamente a `/app/hoy` (Mi Día).

#### 📍 Pantalla: Mi Día (`/app/hoy`)
Esta es la cabina de mando. Aquí NO se planifica a largo plazo, se EJECUTA.

1.  **Revisión de Foco Diario:**
    *   Verás un componente "Foco Diario" en la parte superior.
    *   **Acción:** Escribir "Terminar reporte de nómina qincenal" y dar Enter.
    *   *Resultado Backend:* Se crea registro en entidad `FocoDiario`.

2.  **Gestión de Check-in (Estado de Ánimo/Bloqueos):**
    *   **Acción:** Clic en el botón "Check-in" (si está visible) o revisar el estado actual.
    *   **Acción:** Seleccionar estado de ánimo (ej. "Motivado" 🚀).
    *   **Acción:** ¿Tienes bloqueos? Si algo te impide trabajar, reportalo aquí.
        *   Clic "Reportar Bloqueo".
        *   Motivo: "Falta aprobación de Jefatura".
        *   *Resultado:* Esto notifica inmediatamente a tu líder (Juan Ortuño) en su dashboard.

### 2. Ejecución de Tareas (Ejecución Táctica)
En la misma pantalla `/app/hoy`, verás tus tareas asignadas para hoy.

1.  **Iniciar una Tarea:**
    *   Identifica una tarea en la lista "Para Hoy".
    *   **Acción:** Arrástrala o muévela a la columna "En Progreso" (si es vista Kanban) o marca el checkbox.
    *   **Acción (Detalle):** Haz clic en el título de la tarea para abrir el **Modal de Tarea**.

#### 📍 Modal de Tarea (Smart Task)
1.  **Reportar Avance:**
    *   En el modal, busca la sección de Progreso (%).
    *   **Acción:** Cambia el slider de 0% a 50%.
    *   **Acción:** Escribe un comentario en la bitácora: "Ya procesé los primeros 50 expedientes".
    *   *Validación:* Si el proyecto es **Operativo**, el cambio se guarda directo. Si fuera **Estratégico** y cambias una fecha crítica, te pediría "Solicitud de Cambio".

2.  **Subtareas:**
    *   Si la tarea es compleja, añade items al Checklist interno.
    *   **Acción:** "Validar con Finanzas", "Enviar correo".

### 3. Matriz de Prioridades
*   **Navegación:** Ve a la pestaña "Matriz" (`/app/hoy/matrix`).
*   **Escenario:** Tienes muchas tareas y no sabes cuál hacer.
*   **Visualización:** Verás tus tareas organizadas en Cuadrantes (Urgente/Importante).
*   **Acción:** Arrastra una tarea del cuadrante "No Urgente / No Importante" a "Urgente / Importante".
*   *Resultado:* La prioridad de la tarea se actualiza en el backend automáticamente.

### 4. Cierre del Día
*   **Acción:** Marca tus tareas completadas.
*   **Visualización:** Ve a la pestaña "Métricas" (`/app/hoy/metricas`).
*   **Resultado:** Verás un gráfico de tu productividad diaria. "3 Tareas completadas".

---

## 🔍 Comprobaciones Técnicas (Bajo el capó)
Para validar que este escenario funcionó:
1.  Búscar en tabla `FocoDiario` un registro con `user_id` de Josue y fecha de hoy.
2.  Búscar en tabla `Checkin` el estado de ánimo.
3.  Búscar en tabla `TareaAvance` o `AuditLog` los cambios de % y comentarios realizados.

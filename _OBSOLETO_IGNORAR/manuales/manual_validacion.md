# Protocolo de Validación Manual (UAT) - Momentus Clarity

Este documento define el guion frío, calculado y detallado para validar la aplicación en un entorno de producción simulado.

**Datos de Acceso Generales:**
*   Password Universal: `123456`
*   URL: `http://localhost:5173`

---

## 🎭 ACTO 1: LA RUTINA DEL COLABORADOR
**Actor:** Tania Aguirre (Colaborador)
**Usuario:** `taniaa.aguirre@claro.com.ni`
**Contexto:** Son las 8:05 AM. Tania inicia su jornada.

### Escenario 1.1: El Check-in Diario (Termómetro Emocional)
1.  **Login**: Ingresa con sus credenciales.
2.  **Navegación**: El sistema debe redirigirla automáticamente a `/mi-dia` o mostrar el Modal de Check-in si no lo ha hecho.
3.  **Acción**:
    *   Seleccionar estado de ánimo: "Motivado" o "Normal".
    *   Ingresar obstáculo/meta: "Finalizar reporte mensual de nómina".
    *   Guardar.
4.  **Validación**:
    *   Verificar que la tarjeta de "Mi estado de ánimo" en el Dashboard se actualice.
    *   Verificar que no pida check-in de nuevo si recarga la página.

### Escenario 1.2: Gestión de Bloqueos (S.O.S.)
**Contexto**: Tania no puede avanzar porque el sistema de nómina está lento.
1.  **Acción**: Ir al Widget de "Bloqueos Activos" -> Botón "+" (Reportar Bloqueo).
2.  **Formulario**:
    *   **Motivo**: "Sistema SAP no responde"
    *   **Nivel**: "Crítico"
    *   **Afecta a**: Seleccionar una tarea de su lista (si tiene) o "General".
3.  **Resultado Esperado**:
    *   El bloqueo aparece en rojo en su tablero.
    *   (Invisible) Se genera una alerta para su líder (Franklin).

### Escenario 1.3: Ejecución de Tareas (Focus Mode)
1.  **Acción**: Identificar una tarea en "Tareas para Hoy".
2.  **Interacción**:
    *   Mover el estado de "Pendiente" a "En Curso".
    *   (Opcional) Agregar una nota rápida en la tarea: "Iniciando validación de datos".
3.  **Cierre**: Marcar la tarea como "Hecha". Confeti o feedback visual esperado.

---

## 🎭 ACTO 2: LA GESTIÓN DEL LÍDER
**Actor:** Franklin Flores (Gerente/Líder)
**Usuario:** `franklin.flores@claro.com.ni`
**Contexto:** 8:30 AM. Franklin revisa el pulso de su equipo.

### Escenario 2.1: Visibilidad de Equipo
1.  **Navegación**: Menú Lateral -> "Mi Equipo".
2.  **Validación**:
    *   Debe ver a **Tania Aguirre** en la lista.
    *   Debe ver el estado de ánimo que Tania registró en el Acto 1.
    *   **Crítico**: Debe ver el BLOQUEO que Tania reportó ("Sistema SAP no responde").

### Escenario 2.2: Resolución de Bloqueos
1.  **Acción**: Click en el bloqueo de Tania.
2.  **Resolución**:
    *   Escribir nota de resolución: "Ticket abierto con TI, ya hay acceso alterno".
    *   Clic en "Resolver".
3.  **Validación**: El bloqueo desaparece de la lista de "Activos" y pasa a historial.

### Escenario 2.3: Auditoría y Reportes
1.  **Navegación**: Menú Lateral -> "Reportes".
2.  **Interacción**:
    *   Seleccionar Pestaña: "Productividad" o "Bloqueos".
    *   **Prueba de Fuego**: Clic en el botón **"XLSX" (Exportar Excel)**.
3.  **Validación**:
    *   Se descarga un archivo `.xlsx`.
    *   Al abrirlo, contiene los datos del equipo (incluyendo la actividad reciente de Tania).

### Escenario 2.4: Asignación Top-Down (Delegación)
1.  **Acción**: Crear una nueva tarea desde su vista de líder.
2.  **Formulario**:
    *   Título: "Revisión de Clima Laboral"
    *   Asignado a: Buscar y seleccionar a "Javier Antonio Toruño" (Lider intermedio) o "Tania".
    *   Prioridad: Alta.
3.  **Resultado**: La tarea se crea.
4.  **Validación**:
    *   Login como Tania (`taniaa.aguirre@claro.com.ni` / `123456`)
    *   Ir a `/mi-dia` o `/tareas/mias`.
    *   La tarea "Revisión de Clima Laboral" debe aparecer.
    *   También debe ser visible en el "Team Backlog" del reporte del equipo.

---

## 🎭 ACTO 3: LA ADMINISTRACIÓN GLOBAL (GOD MODE)
**Actor:** Gustavo Lira (Admin)
**Usuario:** `gustavo.lira@claro.com.ni`

### Escenario 3.1: Configuración de Proyecto (Enllavado)
1.  **Navegación**: Admin -> Proyectos.
2.  **Acción**:
    *   Seleccionar un proyecto crítico.
    *   Activar switch "Enllavado" (Lock).
3.  **Efecto**:
    *   Intentar editar una tarea de ese proyecto. El sistema debería impedir cambios de fechas sin solicitud de cambio.

### Escenario 3.2: Explorador de Logs (Forense)
1.  **Navegación**: Admin -> Logs del Sistema.
2.  **Validación**:
    *   Verificar que aparecen los registros de "Login Exitoso" de Tania y Franklin.
    *   Verificar el log de "Bloqueo Resuelto".

---

## 📝 LISTA DE VERIFICACIÓN (CHECKLIST) PARA EL USUARIO

| ID | Prueba | Estado | Notas |
|:---|:---|:---:|:---|
| **P1** | **Login Tania**: Acceso correcto y redirección. | ⬜ | |
| **P2** | **Check-in Tania**: Registro de ánimo y obstáculo. | ⬜ | |
| **P3** | **Bloqueo Tania**: Creación de incidente crítico. | ⬜ | |
| **P4** | **Login Franklin**: Visibilidad de jerarquía (ve a Tania). | ⬜ | |
| **P5** | **Visibilidad Bloqueo**: Franklin ve la alerta roja. | ⬜ | |
| **P6** | **Resolución**: Franklin resuelve el bloqueo con nota. | ⬜ | |
| **P7** | **Exportación**: Generación exitosa de Excel de equipo. | ⬜ | |
| **P8** | **Delegación**: Creación de tarea para subordinado. | ⬜ | |
| **P9** | **Login Gustavo**: Acceso a paneles de Admin. | ⬜ | |
| **P10**| **Audit Logs**: Trazabilidad de las acciones anteriores. | ⬜ | |


# 🗄️ Esquema de Base de Datos y Relaciones

El sistema utiliza una base de datos relacional (SQL Server en producción, SQLite en móvil) estructurada para soportar jerarquías organizacionales y estados de flujo de trabajo.

## 👥 1. Módulo de Identidad y Jerarquía
Este módulo define quién es quién y quién puede ver a quién.

*   **`p_Usuarios`**: Tabla maestra (ID, Correo, Nombre, Rol).
*   **`p_OrganizacionNodos`**: El organigrama (Dirección -> Gerencia -> Equipo). Cada nodo tiene un `idPadre`.
*   **`p_UsuariosOrganizacion`**: Define la posición del usuario en el organigrama (Líder o Miembro).
    *   *Importancia para Visitas:* Permite que un supervisor de ventas vea automáticamente todas las visitas de su equipo sin configuración manual.

## 📋 2. Módulo de Trabajo (Planer Core)
Aquí es donde reside la lógica de tareas que se extenderá para visitas.

*   **`p_Proyectos`**: Contenedores lógicos (ej: "Campaña Verano 2024").
*   **`p_Tareas`**: El registro de actividad.
    *   **Estados:** `Pendiente`, `EnCurso`, `Revision`, `Hecha`.
    *   **Prioridad:** `Baja`, `Media`, `Alta`.
    *   **Metadatos:** `Esfuerzo`, `FechaObjetivo`, `Progreso`.
*   **`p_TareaAsignados`**: Tabla puente para asignar múltiples colaboradores o un responsable único.

## 🕒 3. Módulo de Seguimiento y Operación
*   **`p_Checkins`**: Registro diario por usuario ("¿Qué hice hoy?").
*   **`p_Bloqueos`**: Registro de impedimentos (ej: "No pude visitar el cliente porque la carretera está cerrada").
*   **`p_FocoDiario`**: La lista de "Hoy" para cada usuario.

## 📱 4. Esquema Local (Móvil - SQLite)
El móvil tiene una versión simplificada para agilidad:

*   **`tasks`**: Réplica de las tareas asignadas al usuario. Incluye `synced` (bit) para saber si el cambio local ya subió al servidor.
*   **`sync_queue`**: **Crítico**. Almacena la operación (INSERT/UPDATE), la tabla afectada y el payload JSON del cambio.
*   **`kv_cache`**: Caché de llave-valor para guardar KPIs y datos de perfil que no cambian seguido.

---

## 🚀 Propuesta de extensión para "Visitas":
Para el sistema "Suit Case", añadiríamos:
*   **`p_Clientes`**: Datos de contacto y coordenadas base.
*   **`p_BitacoraVisitas`**:
    *   `idTarea`: Relación directa con el plan de trabajo.
    *   `checkIn`: Timestamp + GPS Inicio.
    *   `checkOut`: Timestamp + GPS Fin.
    *   `formularioJSON`: Respuestas dinámicas de la visita.

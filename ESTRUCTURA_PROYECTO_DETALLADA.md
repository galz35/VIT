# Estructura Integral del Proyecto: "Planner-EF"

Este documento proporciona una visión técnica detallada de la arquitectura, lógica y base de datos del ecosistema Planner-EF, diseñado para facilitar la integración con otros proyectos o su expansión.

---

## 1. Visión General del Ecosistema

El sistema sigue una arquitectura de **N-Capas** con una clara separación entre el procesamiento de datos (Backend), la gestión web (PWA) y la operación móvil (Flutter).

*   **Backend**: API REST construida con NestJS (Node.js).
*   **Web (PWA)**: Aplicación React moderna con Vite.
*   **Mobile**: Aplicación Nativa Multiplataforma con Flutter.
*   **Base de Datos**: SQL Server (Transact-SQL).

---

## 2. Base de Datos (SQL Server)

La lógica de datos reside fuertemente en **Stored Procedures (SPs)** para garantizar rendimiento y seguridad.

### Tablas Principales (Prefijo `p_`)
-   **`p_Usuarios`**: Datos maestros de personal, correos e identificadores.
-   **`p_UsuarioCredenciales`**: Almacena hashes de contraseñas y estados de cuenta.
-   **`p_Proyectos`**: Definición de proyectos, fechas, presupuestos y colores.
-   **`p_Tareas`**: El núcleo del sistema. Títulos, descripciones, estados (Pendiente, En Ejecución, Hecha) y prioridades.
-   **`p_TareaAsignados`**: Relación Muchos-a-Muchos entre tareas y responsables.
-   **`p_Checkins`**: Registro diario de actividad e hitos.
-   **`p_FocoDiario`**: Gestión de la "Tarea del Día" para el usuario móvil.
-   **`p_AuditLog`**: Trazabilidad completa de quién cambió qué y cuándo.

### Lógica de Negocio en DB
El proyecto minimiza los Queries Inline. Casi todo se ejecuta vía SPs (ej: `sp_Tareas_Crear`, `sp_Equipo_ObtenerInforme`). Esto permite cambiar reglas de negocio en la DB sin redistribuir la app móvil.

---

## 3. Arquitectura Backend (NestJS)

Ubicado en `/backend`, sigue el patrón modular de Nest:

-   **Módulos (`/src/features`)**: Organizados por dominio (Auth, Tasks, Projects, Team, Notifications).
-   **Controladores**: Exponen los Endpoints REST (ej: `POST /planning/tasks`).
-   **Servicios**: Orquestan la lógica. Llaman a los repositorios o ejecutan los SPs usando `TypeORM` o `Raw Queries`.
-   **Middleware/Guards**: Manejan la autenticación JWT y los permisos jerárquicos.

---

## 4. Arquitectura Web (React - Clarity PWA)

Ubicado en `/clarity-pwa`, es una SPA (Single Page Application) optimizada para escritorio y modo PWA.

-   **Tech Stack**: React 18 + TypeScript + Vite + Tailwind CSS.
-   **Estructura**:
    -   `/src/pages`: Pantalllas completas (Dashboard, Proyectos, Mi Asignación).
    -   `/src/components`: Widgets reutilizables (Modales, Tablas dinámicas, Gráficos).
    -   `/src/services`: Capa de comunicación con la API usando `Axios`.
    -   `/src/context`: Manejo de estado global (Usuario, Notificaciones).
-   **Diseño**: Enfocado en "Dashboards" y gestión administrativa de alto nivel.

---

## 5. Arquitectura Mobile (Flutter)

Ubicado en `/flutter_movil`, diseñado para el trabajo en campo y offline.

-   **Estructura de Carpetas**:
    -   `/lib/core`: Configuración global, cliente API (`Dio`), temas y utilidades.
    -   `/lib/features`: Implementación por "Feature" (Sigue una versión simplificada de Clean Architecture).
        -   `presentation/`: Pantallas (`Screens`), Widgets y Controladores (`ChangeNotifier`).
        -   `domain/`: Modelos de datos (`TaskItem`, `Project`).
        -   `data/`: Repositorios y Fuentes de datos (Local SQLite + Remote API).
-   **Lógica Offline**: Utiliza un patrón de **Sincronización Silenciosa**.
    1.  El `OfflineResourceService` intenta cargar de la API.
    2.  Si falla, carga del `CacheStore` local.
    3.  Las acciones de escritura se guardan en una cola local y se sincronizan cuando detecta internet.

---

## 6. Flujos Críticos de Funcionamiento

### A. Autenticación
1. El usuario envía credenciales.
2. NestJS valida contra `p_UsuarioCredenciales`.
3. Retorna un JWT y datos del usuario (Nombre, Cargo, Rol).
4. El móvil guarda el JWT en `FlutterSecureStorage`.

### B. Gestión de Tareas
1. Se crea la tarea (Web o Móvil).
2. Se sincroniza con la base de datos central.
3. El móvil descarga su "Carga Diaria" y permite trabajar sin conexión.

### C. Sistema de Notificaciones
-   Usa **Firebase Cloud Messaging (FCM)**.
-   Cuando el Backend detecta una asignación nueva en la DB, dispara un evento a Firebase para notificar al móvil.

---

## 7. Potencial de Fusión con otros Proyectos
Este proyecto es altamente modular. Para fusionarlo con otro:
1.  **Base de Datos**: Los SPs permiten integrar tablas de otros sistemas simplemente mapeando los campos en los procedimientos almacenados.
2.  **API**: El uso de NestJS facilita añadir nuevos "Controllers" para servir a otros frontends.
3.  **UI**: Al usar Tailwind y MomentusTheme (Flutter), los estilos son consistentes y fáciles de clonar.

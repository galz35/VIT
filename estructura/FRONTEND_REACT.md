# 🖥️ Frontend Web - Clarity PWA (React)

La interfaz web (Clarity) está diseñada para la gestión táctica y estratégica. Su objetivo es que el jefe o administrador tenga el control total sin fricciones.

## ⚡ React Query: El Motor de Datos
A diferencia de aplicaciones tradicionales que usan `useEffect` y cargan datos cada vez, Clarity usa **TanStack Query (React Query)**:
*   **Caché Agresivo:** Los datos se guardan en memoria. Si navegas de "Proyectos" a "Equipo" y regresas, la carga es instantánea.
*   **Invalidación Inteligente:** Cuando asignas una tarea, la PWA le avisa al sistema: *"El caché de tareas de este usuario ya no sirve, actualízalo en background"*.
*   **Mutaciones Optimistas:** Cuando marcas una tarea como hecha, el check se marca DE INMEDIATO en la pantalla, y la petición al servidor ocurre en segundo plano. Si falla, el check se revierte.

## 📂 Organización por Módulos (`clarity-pwa/src/pages`)
1.  **Módulo "Hoy" (`/Hoy`)**: Vista de ejecución del usuario web. Incluye Calendario, Bitácora y Bloqueos.
2.  **Módulo "Equipo" (`/Equipo`)**: El centro de mando del líder. Ve quién está saturado, quién tiene bloqueos y el progreso real de su gente.
3.  **Módulo "Planning" (`/Planning`)**: Herramientas de alto nivel como el Diagrama de Gantt, Roadmap y Simulación de Proyectos.
4.  **Módulo "Admin" (`/Admin`)**: Gestión de usuarios, roles e importación masiva de datos desde Excel/CSV.

## 🎨 Diseño y UX
*   **Tailwind CSS:** Para una interfaz moderna, limpia y responsive.
*   **Componentes Reutilizables:** Botones, modales y tablas están estandarizados para que cualquier nueva funcionalidad (como el visor de visitas) se sienta nativa del sistema.
*   **PWA Ready:** Se puede instalar en la computadora como una aplicación de escritorio, funcionando fuera del navegador.

---

## 📈 Dashboard de Visitas (Fusión)
En este frontend es donde crearíamos la vista de **"Mapa de Clientes"**:
*   Un mapa interactivo con pines de colores (Verde: Visitado, Rojo: Pendiente).
*   Filtros por fecha, vendedor y zona geográfica.
*   Visualización de fotos y firmas capturadas desde el móvil.

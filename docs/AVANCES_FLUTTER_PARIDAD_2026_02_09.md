# Avances Paridad Flutter - 9 Feb 2026

Se ha completado una parte crítica de la paridad funcional con React: la gestión de creación de proyectos y la asignación avanzada de tareas.

## Nuevas Funcionalidades Implementadas

### 1. Gestión de Proyectos
- **Creación de Proyectos (`CreateProjectSheet`)**:
  - Modal bottom sheet equivalente a la versión web.
  - Campos: Nombre (requerido), Tipo (Dropdown), Descripción.
  - Integración con backend endpoint `POST /proyectos`.
  - Feedback visual (loading, success/error SnackBars).
  - Accesible desde el botón "+" en la pantalla "Mis Proyectos".

- **Búsqueda de Proyectos (`ProjectSearchSheet`)**:
  - Modal para buscar proyectos existentes.
  - Usado al crear tareas para asociarlas a un proyecto.
  - Endpoint: `GET /proyectos?q=...`.

- **Repositorio de Proyectos (`ProjectsRepository`)**:
  - Centraliza la lógica de creación y búsqueda de proyectos.

### 2. Gestión de Usuarios (Responsables)
- **Búsqueda de Personas (`UserSearchSheet`)**:
  - Modal interactivo para buscar empleados por nombre.
  - Muestra avatar (iniciales), nombre, cargo y área.
  - Endpoint: `GET /acceso/empleados/buscar?q=...`.
  - Integrado en la creación de tareas.

- **Repositorio de Usuarios (`UserRepository`)**:
  - Maneja la búsqueda de empleados y mapeo a modelo `Empleado`.

### 3. Creación Avanzada de Tareas (`QuickCreateTaskSheet`)
- **Se han añadido los campos faltantes**:
  - **Asignación de Responsable**: Ahora se puede seleccionar un usuario mediante búsqueda.
  - **Selección de Proyecto**: Ahora se puede asociar la tarea a un proyecto existente.
  - **Envío Completo al Backend**: Se actualizó `TasksRepository` y `RemoteDataSource` para enviar todos los datos al endpoint correcto (`/tareas/rapida`), incluyendo `idResponsable` y `idProyecto`.

## Archivos Clave Creados/Modificados

- `lib/features/projects/presentation/create_project_sheet.dart` (Nuevo)
- `lib/features/projects/presentation/project_search_sheet.dart` (Nuevo)
- `lib/features/common/presentation/user_search_sheet.dart` (Nuevo)
- `lib/features/common/data/user_repository.dart` (Nuevo)
- `lib/features/projects/data/projects_repository.dart` (Nuevo)
- `lib/features/tasks/presentation/quick_create_task_sheet.dart` (Actualizado masivamente)
- `lib/features/tasks/data/tasks_repository.dart` (Actualizado)
- `lib/features/tasks/data/tasks_remote_data_source.dart` (Actualizado)
- `lib/features/projects/presentation/projects_screen.dart` (Actualizado)

## Próximos Pasos Recomendados

1. **Validación en Dispositivo**: Probar el flujo completo de creación de proyecto -> selección en nueva tarea -> asignación de responsable.
2. **Listado de Usuarios**: Mejorar el `UserSearchSheet` para mostrar usuarios recientes si la búsqueda está vacía (actualmente requiere escribir 2 caracteres).
3. **Detalles de Proyecto**: Enriquecer `ProjectDetailScreen` con más tabs o información (ahora es básico).
4. **Sincronización Offline**: Asegurar que los nuevos proyectos y tareas creadas se reflejen en la base de datos local Isar inmediatamente para soporte offline.

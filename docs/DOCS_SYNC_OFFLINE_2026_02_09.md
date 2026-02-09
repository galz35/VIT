# Implementación de Recomendaciones Offline y UI - 9 Feb 2026

## 1. Mejora en Búsqueda de Usuarios (`UserSearchSheet`)
- **Funcionalidad**: Ahora muestra los usuarios buscados y seleccionados recientemente.
- **Implementación**:
  - Se usa `FlutterSecureStorage` para persistir una lista de hasta 5 usuarios recientes.
  - Al abrir el buscador (o si el texto es < 2 caracteres), se muestra la lista de "Recientes" con un estilo visual diferenciado (fondo gris en avatar).
  - Al seleccionar un usuario de la búsqueda (API) o recientes, este se mueve al tope de la lista de recientes.
- **Archivos**: `UserRepository` (nuevos métodos `getRecents`, `saveRecent`), `UserSearchSheet` (UI lógica).

## 2. Soporte Offline para Creación de Tareas
- **Funcionalidad**: Si falla la conexión al crear una tarea, se guarda localmente y se encola para sincronización futura.
- **Implementación**:
  - `TasksRepository.createTaskFull` ahora captura errores de red (`DioExceptionType.connectionError`, `SocketException`, etc.).
  - Si hay error de red, llama a `_saveLocalTask` que:
    1. Crea un `TaskItem` local (estado 'Pendiente', synced=false).
    2. Inserta en la DB SQLite local (`tasks`).
    3. **Nuevo**: Pasa un `additionalPayload` al `TaskLocalDataSource.insert`.
  - `TaskLocalDataSource.insert` fue actualizado para aceptar este payload extra y guardarlo en la cola `sync_queue` (JSON completo con `idProyecto`, `idResponsable`, etc.), asegurando que NO se pierda la metadata al recuperar la conexión, aunque la tabla `tasks` local sea simple.
- **Archivos**: `TasksRepository`, `TaskLocalDataSource`.

## Notas Técnicas
- **Persistencia**: Se usa `sqflite` para tareas y cola de sync, y `flutter_secure_storage` para preferencias de usuario (recientes).
- **Limitaciones**: Las tareas creadas offline aparecerán en listas que lean de la DB local, pero no necesariamente en pantallas que solo usen caché de API (`OfflineResourceService`) hasta que haya sincronización.

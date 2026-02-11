# 📱 Aplicación Móvil - Flutter (Offline-First)

La aplicación móvil es la herramienta de ejecución. Su prioridad es la **disponibilidad total**, incluso en sótanos o zonas rurales sin señal.

## 💾 La Base de Datos Local (SQLite)
El corazón de la app es `LocalDatabase`. Al iniciar sesión, la app descarga una "foto" del estado actual del usuario y lo guarda en el teléfono.
*   **Velocidad:** Las búsquedas de tareas son instantáneas porque no viajan por internet.
*   **Resiliencia:** Si el servidor se apaga 5 minutos, el usuario ni se entera; sigue operando contra su DB local.

## 🔄 El Mecanismo de Sincronización (`SyncWorker`)
Este es el componente más importante para fusionar el sistema de visitas:
1.  **Captura:** El usuario registra una visita o completa una tarea.
2.  **Encolado:** La app guarda la acción en la tabla `sync_queue`.
3.  **Disparo:** El `SyncWorker` se activa cada vez que detecta un cambio de conectividad o un nuevo registro en la cola.
4.  **Confirmación:** Una vez que el servidor responde "OK", el registro se borra de la cola y la tarea local se marca como `synced = 1`.

## 🛠️ Características Clave
*   **Manejo de Imágenes:** Las fotos de visitas o entregables se procesan en el móvil (redimensionamiento) antes de subirse para ahorrar datos del usuario.
*   **Notificaciones Push:** Integradas con Firebase (FCM). Permiten que el jefe le asigne una visita urgente al vendedor y este reciba la alerta al instante.
*   **Geolocalización:** Acceso a GPS para validar que el usuario está realmente en la ubicación del cliente al hacer Check-in.

---

## 📍 Aplicación en "Mobile Suit Case"
Para clonar la funcionalidad de visitas:
1.  **Pantalla de Visita:** Un formulario Flutter que bloquea la salida hasta que se capture la foto y la ubicación.
2.  **Modo Ruta:** Una vista que ordena las tareas por cercanía geográfica usando la ubicación actual del GPS.
3.  **Firma Digital:** Un canvas de dibujo simple en Flutter para capturar la firma del cliente, enviada como Base64 o Multipart al backend.

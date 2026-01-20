# 🎓 Nivel 5: La Conexión Invisible
**Archivo bajo el microscopio:** `src/services/api.ts`

Tus páginas muestran datos, pero ¿de dónde vienen? Vienen de un servidor (Backend). El archivo `api.ts` es el **Teléfono Rojo** que conecta tu React (Frontend) con el Servidor.

---

## 1. Axios (El Mensajero)
No usamos el navegador a secas para pedir datos, usamos una librería llamada **Axios**. Es como un cartero superpoderoso.

```typescript
import axios from 'axios';

export const api = axios.create({
    baseURL: 'http://localhost:3000' // La dirección de la casa del servidor
});
```

Al crear esta "instancia" llamada `api`, configuramos que todas las cartas vayan a esa dirección base. Así no tenemos que escribir `http://localhost...` en cada archivo.

---

## 2. Los Métodos HTTP (Los Verbos)
Cuando el frontend habla con el backend, usa verbos para decir qué quiere hacer:

*   **GET (Dame):** Quiero leer información.
    *   `api.get('/tareas')` -> "Dame la lista de tareas".
*   **POST (Toma):** Quiero crear algo nuevo.
    *   `api.post('/tareas', { titulo: 'Nueva' })` -> "Toma estos datos y crea una tarea".
*   **PUT / PATCH (Cambia):** Quiero editar algo.
    *   `api.patch('/tareas/1', { estado: 'Hecha' })` -> "Cambia la tarea 1 a Hecha".
*   **DELETE (Borra):** Quiero eliminar algo.
    *   `api.delete('/tareas/1')` -> "Destruye la tarea 1".

---

## 3. Los Interceptores (El Portero)
Esto es código avanzado, pero muy útil. En `api.ts` verás algo como:

```typescript
api.interceptors.request.use((config) => {
    // Antes de que salga la carta...
    const token = localStorage.getItem('token'); // Busca el pase VIP (token)
    if (token) {
        config.headers.Authorization = `Bearer ${token}`; // Pégalo en el sobre
    }
    return config;
});
```

**¿Qué hace esto?**
Automáticamente, sin que tú lo escribas en cada página, revisa si el usuario inició sesión (tiene un token) y pega ese token en cada petición. Así el servidor sabe quién eres (Gustavo) y no un extraño.

---

## 4. El Manejo de Errores (Try / Catch)
En tus páginas (como vimos en `PendientesPage`), envolvemos las llamadas en `try/catch`.

```typescript
try {
   const repuesta = await api.get('/tareas');
   // Si llega aquí, todo salió bien (código 200 OK)
} catch (error) {
   // Si llega aquí, el servidor explotó o no respondió (código 400/500)
   console.log("Houston, tenemos un problema");
}
```

---
**✅ Tu Misión:**
Ve a `src/services/api.ts`.
Busca la línea `baseURL`. Si algún día subes tu proyecto a internet real, solo tendrás que cambiar esa única línea por `https://mi-api-real.com` y ¡toda tu aplicación funcionará apuntando al nuevo lugar! Esa es la belleza de centralizar el código.

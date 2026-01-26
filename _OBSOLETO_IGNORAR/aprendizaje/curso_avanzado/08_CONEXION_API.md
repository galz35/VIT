# Módulo 8: Comunicación Frontend-Backend (Axios y Tokens)

Este módulo cierra el círculo. Ya vimos el Backend (Controller/NestJS) y el Frontend (Componentes/React).
Ahora aprenderás cómo se hablan entre sí usando **Axios** e **Interceptors** (Patrón Proxy).

## 1. El Cliente HTTP (Axios) vs `window.fetch`
En C#, usas `HttpClient`. En JavaScript moderno nativo, usas `fetch()`.
Sin embargo, en tu proyecto usamos **Axios** (`src/services/api.ts`).

### ¿Por qué Axios?
*   **Intercpetors**: Puedes capturar TODAS las peticiones antes de que salgan o lleguen.
*   **Timeouts**: `fetch` no tiene timeout nativo fácil.
*   **JSON Automático**: No tienes que hacer `.json()`.

## 2. Anatomía de `src/services/api.ts`

Este archivo es vital. Configura las reglas de comunicación globales.

### A. Configuración Base
```typescript
const api = axios.create({
    baseURL: 'http://localhost:3000/api', // Prefijo para no repetir URL
    timeout: 30000,
});
```

### B. Interceptor de REQUEST (Salida)
Antes de que la petición salga de tu navegador, le inyectamos el Pasaporte (Token JWT).
Esto es equivalente a un `DelegatingHandler` en C#.

```typescript
api.interceptors.request.use((config) => {
    // 1. Leer token del LocalStorage (el disco duro del navegador)
    const token = localStorage.getItem('clarity_token');
    
    // 2. Pegárselo a la petición
    if (token) {
        config.headers.Authorization = `Bearer ${token}`; // "Bearer eyJhbGci..."
    }
    return config;
});
```
**Resultado:** No tienes que poner el header manualmente en cada llamada. Es automático.

### C. Interceptor de RESPONSE (Entrada)
Cuando el servidor responde, interceptamos antes de que llegue a tu componente.
Aquí manejamos la lógica de **"Sesión Caducada" (Error 401)**.

```typescript
api.interceptors.response.use(
    (response) => response, // Si todo bien, pasa.
    async (error) => {
        // Si el servidor dice "401 Unauthorized"
        if (error.response?.status === 401) {
            // INTENTO DE AUTO-RENOVACIÓN (Refresh Token)
            // 1. Pedir nuevo token al backend
            const { data } = await axios.post('/auth/refresh', ...);
            
            // 2. Guardar nuevo token
            localStorage.setItem('clarity_token', data.accessToken);
            
            // 3. REINTENTAR la petición original que falló
            // ¡El usuario ni se entera de que su sesión caducó!
            return api.request(error.config);
        }
        return Promise.reject(error);
    }
);
```

## 3. Consumiendo la API en un Servicio
Ahora que `api` está configurado, crear servicios es trivial.

`src/services/planningService.ts` (Ejemplo hipotético):
```typescript
import { api } from './api';

export const getMisTareas = async () => {
    // Solo pones la ruta relativa. 
    // Axios pone: BaseUrl + Token + Headers
    const response = await api.get('/planning/tasks'); 
    return response.data; // Devuelve el JSON listo
};
```

## Resumen del Flujo Completo
1.  **Componente (`MiDiaPage`)**: Llama a `getMisTareas()`.
2.  **Axios (`api.ts`)**: Inyecta el Token JWT.
3.  **Red**: Viaja a `http://localhost:3000/api/planning/tasks`.
4.  **Backend (`AppModule`)**: Recibe la petición.
5.  **Guard (`JwtGuard`)**: Verifica que el Token sea válido.
6.  **Controller (`PlanningController`)**: Ejecuta `planningService.getTasks()`.
7.  **Database (`TypeORM`)**: SELECT * FROM Tareas...
8.  **Respuesta**: Vuelve el JSON.
9.  **Axios**: Lo recibe y se lo da a React.
10. **React**: Actualiza el estado y pinta la pantalla.

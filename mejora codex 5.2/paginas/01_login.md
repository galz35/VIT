# Página: Login

## Rutas UI
- `/login`

## Llamadas API
- `POST /auth/login`

## Estado
- Backend expone `POST /auth/login` en `AuthController`.
- No se detecta inconsistencia en esta ruta.

## Posibles fallas de UX
- Si el backend retorna error genérico (no `Credenciales`), la UI muestra “Error de conexión” aunque sea otro error lógico. Revisar mensajes de error en backend para mejorar precisión.

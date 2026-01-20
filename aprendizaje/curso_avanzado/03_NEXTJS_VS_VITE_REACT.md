# Módulo 3: Aprende Next.js comparándolo con TU código (React + Vite)

Este es el módulo más importante. Aquí aprenderás **Next.js** viendo cómo transformamos mentalmente tu código actual (`clarity-pwa`) a la arquitectura de Next.js (App Router).

## 1. El Router (Navegación)

### Tu código actual (Vite / React Router)
En `src/App.tsx`, defines las rutas manualmente en un gran árbol JSX (`<Routes>`).

```tsx
// src/App.tsx (Vite)
<Routes>
  <Route path="/app" element={<ProtectedRoute />}>
    <Route path="hoy" element={<MiDiaPage />} />
    <Route path="pendientes" element={<PendientesPage />} />
  </Route>
</Routes>
```

### En Next.js (App Router)
Next.js usa **Routing basado en Archivos**. No existe `App.tsx` con rutas. La estructura de carpetas *ES* la ruta.

```text
app/
├── login/
│   └── page.tsx      <-- Ruta: /login
├── app/
│   ├── layout.tsx    <-- El Layout (Sidebar, Nav) que envuelve todo
│   ├── hoy/
│     └── page.tsx    <-- Ruta: /app/hoy (MiDiaPage)
│   └── pendientes/
│     └── page.tsx    <-- Ruta: /app/pendientes
```

**Lección**: En Next.js, para crear una página nueva, solo creas una carpeta. No necesitas tocar un archivo central de configuración.

## 2. Renderizado (Client vs Server)

### Tu código actual (Vite - Client Side Rendering)
1.  El navegador recibe un HTML vacío.
2.  Descarga `bundle.js` (todo tu código React).
3.  Ejecuta React y "pinta" la interfaz.
4.  Llama a la API (`useEffect`) para traer datos.

### En Next.js (Server Components - SSR)
Por defecto, todo componente en Next.js es un **Server Component**.
1.  El servidor (Node.js) ejecuta el componente React.
2.  Genera HTML real con datos ya pegados.
3.  Envía el HTML listo al navegador.

**Beneficio**: Es más rápido ver la primera imagen y Google puede leer el contenido mejor (SEO).

## 3. Obtención de Datos (Data Fetching)

### Tu código actual (Vite)
Usas un efecto (`useEffect`) para llamar a tu backend NestJS.

```tsx
// src/pages/MiPagina.tsx
export function MiPagina() {
  const [data, setData] = useState(null);

  useEffect(() => {
    // Esto corre en el navegador del usuario
    fetch('http://localhost:3000/api/datos')
      .then(res => res.json())
      .then(setData);
  }, []);

  if (!data) return <p>Cargando...</p>;
  return <div>{data.titulo}</div>;
}
```

### En Next.js (Async Components)
Puedes conectarte a la base de datos o API directamente en el componente, porque corre en el servidor.

```tsx
// app/mi-pagina/page.tsx
// ¡El componente es async!
export default async function MiPagina() {
  // Esto corre en el SERVIDOR. No necesita useEffect.
  const data = await fetch('http://localhost:3000/api/datos').then(r => r.json());
  
  // O incluso llamada directa a DB si estás en el mismo repo
  // const data = await db.query('SELECT * FROM ...');

  return <div>{data.titulo}</div>;
} // ¡Llega al navegador ya con los datos!
```

## Resumen: ¿Cómo migrarías?
1.  Moverías `src/components` tal cual. (Funcionan igual).
2.  Eliminarías `App.tsx` y `react-router-dom`.
3.  Moverías `src/pages/Hoy/MiDiaPage.tsx` a `app/hoy/page.tsx`.
4.  El `Sidebar` iría en `app/layout.tsx`.

## ¿Por qué seguir usando Vite?
Tu proyecto es un **Dashboard Administrativo** (Sistema de Planificación).
*   No necesitas SEO (Google no debe indexar tu gestión interna).
*   Vite es más simple y ligero para desarrollar SPAs puras sin servidor de frontend.
*   Next.js añade complejidad (Servidor Node para frontend) que quizás no necesitas ahora.

Pero ahora ya sabes: **Next.js es React + Routing automático + Renderizado en Servidor.**

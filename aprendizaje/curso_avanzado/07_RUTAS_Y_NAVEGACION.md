# Módulo 7: Rutas y Navegación (SPA vs MVC)

Este es un cambio mental importante si vienes de ASP.NET MVC o Spring MVC.
En "Single Page Applications" (SPA) como la tuya, **el Servidor NO maneja la navegación**.

## 1. El Router Cliente (`react-router-dom`)

En MVC tradicional:
1.  Clicks en `<a href="/contacto">`.
2.  El navegador hace petición al Servidor.
3.  Servidor responde HTML nuevo. **La página parpadea/recarga**.

En React (Client-Side Routing):
1.  Clicks en `<Link to="contacto">` (o `NavLink`).
2.  JavaScript intercepta el click.
3.  Cambia la URL en la barra del navegador (sin recargar).
4.  React cambia un componente por otro. **Instantáneo**.

### Tu Código (`App.tsx`):
```tsx
<BrowserRouter> {/* Habilita el historial del navegador */}
    <Routes>
        <Route path="/login" element={<LoginPage />} />
        
        {/* RUTAS ANIDADAS (NESTED ROUTES) */}
        <Route path="/app" element={<ProtectedRoute />}>
             <Route element={<AppLayout />}> {/* Layout con Sidebar */}
                  <Route path="hoy" element={<MiDiaPage />} />
             </Route>
        </Route>
    </Routes>
</BrowserRouter>
```

## 2. El concepto de `<Outlet />` (Layouts)

¿Cómo hace React para mantener el **Sidebar** fijo mientras cambia solo el contenido central?
En ASP.NET usarías "Master Pages" o `RenderBody()`.
En React usas `<Outlet />`.

Mira tu archivo `src/App.tsx`:
```tsx
const AppLayout = () => {
  return (
    <div className="flex">
      <Sidebar />  {/* Siempre visible */}
      
      <main>
        <Outlet /> {/* Aquí se renderiza la página hija (MiDiaPage, etc) */}
      </main>
    </div>
  );
};
```

## 3. Seguridad en Rutas (Guards)

En Backend, proteges con `@UseAuth`. En Frontend, proteges con **Componentes Envolventes**.

Mira `src/components/auth/RoleRoute.tsx`:
```tsx
export const RoleRoute = ({ allowedRoles }: Props) => {
    const { user } = useAuth();

    // 1. Si no hay usuario -> Redirect Login
    if (!user) return <Navigate to="/login" />;

    // 2. Si el rol no coincide -> Redirect Home
    if (!allowedRoles.includes(user.rol)) return <Navigate to="/app" />;

    // 3. Si todo bien -> Renderiza el contenido hijo (<Outlet />)
    return <Outlet />;
};
```
Es un "Portero". Si no pasas, te saca. Si pasas, renderiza el `<Outlet />`.

## 4. Diferencia con Next.js (El futuro)
En Vite (Tu código actual), el Router es un componente `<BrowserRouter>`.
En **Next.js**, el router **es el sistema de archivos**.
*   Carpeta `app/dashboard/page.tsx` AUTOMÁTICAMENTE es la ruta `/dashboard`.
*   Archivo `app/dashboard/layout.tsx` AUTOMÁTICAMENTE es el `<Outlet />`.

**Resumen:**
Estás usando **React Router v6**. Es el estándar de la industria para SPAs.
La clave es entender que, para el navegador, **siempre estás en `index.html`**. React solo te hace creer que cambiaste de página manipulando la URL y el DOM.

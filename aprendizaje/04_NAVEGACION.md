# 🎓 Nivel 4: El Mapa de Carreteras
**Archivos bajo el microscopio:** `src/App.tsx` y `src/components/Sidebar.tsx`

Hasta ahora vimos páginas individuales. Pero, ¿quién decide qué página mostrar? Ese es el trabajo del **Router** (Enrutador).

---

## 1. El Enrutador (`App.tsx`)
Abre `src/App.tsx`. Verás algo parecido a esto:

```tsx
<Routes>
    {/* RUTA BASE: El esqueleto de la app */}
    <Route path="/app" element={<DashboardLayout />}>
    
        {/* LAS PÁGINAS HIJAS (Se cargan dentro del esqueleto) */}
        <Route path="hoy" element={<MiDiaPage />} />
        <Route path="pendientes" element={<PendientesPage />} />
        <Route path="equipo" element={<TeamDashboard />} />
        
    </Route>
</Routes>
```

**Explicación:**
*   **`<Routes>`:** Es como un switch de vías de tren.
*   **`<Route path="/app">`:** Dice "Si la URL empieza con /app, usa el diseño dashboard".
*   **`<Route path="hoy">`:** "Si la URL es /app/hoy, carga el componente `MiDiaPage` en el área central".

**Experimento Mental:**
Si quisieras crear una página nueva llamada "Ofertas", tendrías que:
1.  Crear el archivo `OfertasPage.tsx`.
2.  Venir aquí y agregar `<Route path="ofertas" element={<OfertasPage />} />`.
¡Así de fácil se expande la app!

---

## 2. El Esqueleto Visual (`Sidebar.tsx`)
Ahora mira `src/components/Sidebar.tsx`. Este componente se muestra **siempre**, no importa en qué sub-página estés.

Contiene una lista de enlaces (`NavLink`):

```tsx
<NavLink 
    to="/app/hoy" 
    className={({ isActive }) => isActive ? "boton-activo" : "boton-normal"}
>
    Mi Día
</NavLink>
```

**Magia de React Router:**
*   `NavLink` es un link inteligente. No recarga toda la página (como haría un `<a>` tradicional). Solo cambia la parte del centro.
*   `isActive`: React sabe automáticamente si estás en esa URL y te permite pintarlo de otro color (azul en tu caso) para que el usuario sepa dónde está.

---

## 3. El Outlet
En tu layout principal (donde se usa el Sidebar), verás una etiqueta especial:

```tsx
<div className="flex">
    <Sidebar /> {/* A la izquierda */}
    
    <main className="contenido">
        <Outlet /> {/* <--- ¡AQUÍ APARECE LA MAGIA! */}
    </main>
</div>
```

**`<Outlet />`** es un hueco reservado. Cuando navegas a `/app/pendientes`, React quita lo que había en el Outlet e inserta `PendientesPage`. Cuando vas a `/app/equipo`, quita eso e inserta `TeamDashboard`. El Sidebar nunca se mueve.

---
**✅ Tu Misión:**
Abre `src/App.tsx` y localiza el `<Route path="planning/simulation" ... />`.
Fíjate que está anidado igual que los demás. Por eso, cuando entras al simulador, sigues viendo el menú lateral. ¡Todo está conectado!

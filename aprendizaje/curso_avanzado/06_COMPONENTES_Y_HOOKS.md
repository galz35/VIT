# Módulo 6: Componentes y Hooks (React Avanzado)

En React, todo son Componentes ("piezas de LEGO").
En este módulo, diseccionamos tu archivo `src/pages/Hoy/MiDiaPage.tsx`.

## 1. Anatomía de un Componente Funcional

En C#/Java, una clase es un Componente. En React moderno, una **Función** es un Componente.

```tsx
// Definición del Componente
const MiDiaContent: React.FC = () => {
    // 1. Lógica (Hooks y Funciones)
    const { allDisponibles, today, setToday } = useMiDiaContext();

    // 2. Renderizado (JSX - Parece HTML pero es JavaScript)
    return (
        <div className="pb-24...">
           {/* ... */}
        </div>
    );
};
```

**Concepto Clave**: Cada vez que el "Estado" (`today`, `allDisponibles`) cambia, React **vuelve a ejecutar toda la función** y redibuja la pantalla.

## 2. Hooks: Los Superpoderes de React

Los Hooks son funciones especiales que empiezan con `use`. Son tus herramientas para manejar el ciclo de vida.

### A. Contexto (`useContext` / `useMiDiaContext`)

En tu código:
```tsx
const { allDisponibles, today, setToday } = useMiDiaContext();
```
Esto es **Inyección de Dependencias** pura.
En lugar de pasar datos de padre a hijo (Props Drilling), consumes un servicio global (`MiDiaContext`).
Es equivalente a `@Autowired` o inyectar un servicio en el constructor.

### B. Estado (`useState`) - *Implícito en tu Contexto*

Aunque no está en este archivo (está dentro del Provider), `useState` es la memoria de React.
```tsx
const [today, setToday] = useState('2024-01-16');
```
*   `today`: Variable de lectura.
*   `setToday`: Función para cambiar el valor. **IMPORTANTE**: Al llamarla, React redibuja el componente.

### C. Efectos (`useEffect`) - *El nuevo ciclo de vida*

*   Equivalente a `OnLoad`, `OnDestroy`, `EventSubscriber` en aplicaciones de escritorio.
*   Se usa para peticiones a API (Fetch).

Ejemplo teórico de lo que hace tu Provider internamente:
```tsx
useEffect(() => {
    // Esto se ejecuta cuando cambia 'today'
    fetch(`/api/planning/plans?date=${today}`)
      .then(data => setTareas(data));
}, [today]); // [today] es la dependencia. Si cambia, re-ejecuta.
```

## 3. Renderizado Condicional y Listas

En React no hay `if/else` o `foreach` dentro del HTML (JSX), usas JavaScript puro.

**Tu código actual (Línea 100):**
```tsx
// Filtrar y contar directamente en la vista
{allDisponibles.filter(t => t.estado === 'Hecha').length}
```
Esto es LINQ puro (`.Where(t => t.Estado == "Hecha").Count()`).

## 4. Composición (Providers)

Mira la línea 115:
```tsx
export const MiDiaPage: React.FC = () => {
    const { user } = useAuth();
    return (
        <MiDiaProvider userId={user?.idUsuario || 0}>
            <MiDiaContent />
        </MiDiaProvider>
    );
};
```
Esto es el patrón **Wrapper** o **Decorator**.
`MiDiaPage` envuelve a `MiDiaContent` con un `MiDiaProvider`.
Esto asegura que toda la lógica de estado (cargar tareas, mover fechas) esté disponible para `MiDiaContent` y sus hijos.

## Resumen para Java/C# Dev
*   **Componente** = Clase UI.
*   **Props** = Parámetros del Constructor.
*   **State (`useState`)** = Campos privados de la clase (Fields) que causan `Repaint()`.
*   **Context** = Singleton / Dependency Injection Container.
*   **JSX** = XAML / XML pero mezclado con Lógica.

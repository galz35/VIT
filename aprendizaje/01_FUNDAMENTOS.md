# 🎓 Nivel 1: Fundamentos de tu Proyecto
**De 0 a Programador: Entendiendo Momentus**

Este proyecto está construido con tres tecnologías clave. Imagínalo como la construcción de una casa:

1.  **React (El Arquitecto):** Define la estructura y componentes (muros, ventanas).
2.  **TypeScript (El Inspector):** Asegura que no uses madera donde va cemento (reglas estrictas para evitar errores).
3.  **Tailwind CSS (El Decorador):** Pinta y estiliza todo rápido usando palabras clave.

---

## 🧩 concept 1: El Componente
En React, todo es un componente. Un componente es una función que devuelve HTML (lo que se ve).

**Ejemplo en tu código:**
Si vas a `src/components/Sidebar.tsx`, verás que es solo una función que devuelve el menú lateral.

```tsx
// Definición del componente
const Sidebar = () => {
    // Lógica (Javascript)
    const usuario = "Gustavo";

    // Retorno Visual (JSX - parece HTML pero es JS)
    return (
        <div className="menu">Hola {usuario}</div>
    );
};
```

## 🧠 Concepto 2: El Estado (`useState`)
Esta es la "memoria" de la aplicación. Si algo cambia en la pantalla (un contador sube, un botón cambia de color), es porque cambió su **Estado**.

```tsx
// Declaración:L
// [variable, funcionParaCambiarla] = useState(valorInicial);
const [cargando, setCargando] = useState(false);

// Uso:
if (cargando) {
  return <Spinner />; // Muestra ruedita
}
```

## ⚡ Concepto 3: El Efecto (`useEffect`)
Es lo que pasa "cuando sucede algo". Por ejemplo: "Cuando cargue la página, llama a la API".

```tsx
useEffect(() => {
    // Código que se ejecuta al iniciar
    traerDatosDeInternet();
}, []); // Los corchetes vacíos [] significan "Solo hazlo una vez al principio".
```

## 🛡️ Concepto 4: Las Interfaces (TypeScript)
TypeScript nos obliga a definir qué forma tienen los datos. Esto evita que intentes leer `usuario.edad` si el usuario no tiene edad.

**En tu archivo `modelos.ts`:**
```typescript
export interface Tarea {
    id: number;
    titulo: string;
    // El '?' significa que es opcional
    descripcion?: string; 
}
```

---
**✅ Tu Misión:**
Abre el archivo `src/types/modelos.ts` y trata de leer las interfaces. Son los planos de tus datos.
 porf
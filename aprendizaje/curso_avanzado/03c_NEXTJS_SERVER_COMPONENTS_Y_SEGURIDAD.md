# Next.js: ¿Adiós a la API y Seguridad Automática?

Has dado en el clavo con una de las mayores ventajas de Next.js moderno (App Router).

**Tu intuición:** "Como corre en el servidor, no necesito API pública y ahorro tiempo."
**La realidad:** Es **VERDAD**, pero con matices importantes de seguridad.

## 1. El Fenómeno "Adiós API" (RSC - React Server Components)

### En tu arquitectura actual (Vite + NestJS)
Para mostrar una lista de usuarios, haces todo esto:
1.  **Backend**: Creas `UsersController`.
2.  **Backend**: Creas `UsersService`.
3.  **Backend**: Escribes el endpoint `@Get('/users')`.
4.  **Frontend**: Creas un `useEffect`.
5.  **Frontend**: Haces `fetch('http://localhost:3000/api/users')`.
6.  **Frontend**: Guardas en estado `useState`.

Es seguro, pero es **mucho código**.

### En Next.js (Server Components)
Como el componente corre en el Servidor (igual que tu Backend), puedes "saltarte" la API HTTP:

```tsx
// app/users/page.tsx
import { db } from '@/lib/db'; // ¡Acceso directo a DB!

export default async function UsersPage() {
  // ADIÓS API: Llamada directa a base de datos.
  // Esto nunca se ve en el navegador. Se ejecuta en el servidor.
  const users = await db.usuario.findMany();

  return (
    <div>
      {users.map(u => <div>{u.nombre}</div>)}
    </div>
  );
}
```

**¿Ahorras tiempo?** ¡Sí, muchísimo! Eliminas la capa intermedia de transporte (JSON/HTTP) para lectura de datos.

## 2. La Seguridad: El Peligro Oculto

**Mito:** "Como está oculto en el servidor, es seguro."
**Realidad:** El código está oculto, pero **el acceso debe verificarse**.

Aunque el usuario no vea la URL de la API, **tú sigues necesitando comprobar permisos**.

### Ejemplo Inseguro (Next.js)
```tsx
export default async function SalaryPage() {
  // PELIGRO: Cualquiera que visite esta página verá los salarios.
  // No hay API pública, pero la página es pública.
  const salarios = await db.salarios.findAll(); 
  return ...
}
```

### Ejemplo Seguro (Next.js)
```tsx
import { getUser } from '@/auth';

export default async function SalaryPage() {
  const user = await getUser();
  
  // AUNQUE NO HAYA API, DEBES VALIDAR ROLES
  if (user.rol !== 'ADMIN') {
    throw new Error('No autorizado');
  }

  const salarios = await db.salarios.findAll();
  return ...
}
```

## 3. Server Actions: El reemplazo de los POST/PUT

Para guardar datos (formularios), Next.js usa **Server Actions**. Son funciones que parecen ejecutarse en el navegador, pero viajan mágicamente al servidor.

```tsx
// actions.ts ('use server')
export async function crearUsuario(formData: FormData) {
  'use server'; // Esto asegura que corra en backend
  
  // 1. Validar Usuario (Seguridad Manual)
  const session = await getSession();
  if (!session) throw new Error("Logueate primero");

  // 2. Guardar directo en DB
  await db.usuario.create({ data: ... });
}
```

## Conclusión: ¿Vale la pena?

*   **Para leer datos (GET)**: Next.js es imbatible. Te ahorras 50% del código al eliminar endpoints de solo lectura.
*   **Para escribir datos (POST)**: Usas Server Actions. Ahorras crear endpoints REST, pero **sigues teniendo que escribir la lógica de validación y permisos**.

**¿Por qué mantienes NestJS entonces?**
Porque tu proyecto es grande y serio. Tener un Backend separado (NestJS) permite que:
1.  Tu **App Móvil** (iOS/Android) use la misma API.
2.  Sistemas externos se conecten a tu API.
3.  Tu lógica de negocio no esté mezclada con la interfaz gráfica.

Para alguien aprendiendo como tú, Next.js es increíble porque te permite hacer "Fullstack" en un solo proyecto, pero entender la separación (como la tienes ahora) te hace mejor programador.

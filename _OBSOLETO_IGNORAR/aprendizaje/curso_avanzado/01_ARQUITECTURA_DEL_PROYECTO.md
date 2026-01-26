# Módulo 1: Arquitectura del Proyecto

## Visión Global
Tu proyecto `d:\planificacion` es un **Monorepo** (repositorio único) que contiene tanto el Backend como el Frontend.
Para un desarrollador .NET/Java, piensa en esto como una "Solución" (.sln) que contiene dos "Proyectos":
1.  **Backend (`/backend`)**: Una API RESTful robusta.
2.  **Frontend (`/clarity-pwa`)**: Una aplicación web moderna (Cliente).

## 1. El Backend (`/backend`) - Stack: NestJS
Es el cerebro de tu aplicación.
*   **Framework**: [NestJS](https://nestjs.com/). Es extremadamente similar a **Spring Boot** (Java) o **ASP.NET Core** (C#).
*   **Lenguaje**: TypeScript (que compila a JavaScript, igual que C# compila a IL).
*   **Base de Datos**: PostgreSQL / SQL Server.
*   **ORM**: TypeORM. Es el equivalente directo a **Hibernate** (Java) o **Entity Framework** (C#).

### Estructura de Carpetas Backend
```text
backend/src/
├── app.module.ts       <-- El "Main" o configuración global (como ApplicationContext o Startup.cs)
├── main.ts             <-- Punto de entrada (public static void main). Arranca el servidor HTTP.
├── planning/           <-- Módulo de Planificación (Dominio específico)
│   ├── planning.controller.ts  <-- API Endpoints (@RestController / [ApiController])
│   ├── planning.service.ts     <-- Lógica de Negocio (@Service / Business Logic Layer)
│   └── entities/               <-- Modelos de Base de Datos (@Entity / DbContext models)
└── ...
```

## 2. El Frontend (`/clarity-pwa`) - Stack: React + Vite
Es la cara de tu aplicación.
*   **Framework**: React (Librería de UI).
*   **Build Tool**: [Vite](https://vitejs.dev/). Es una herramienta de compilación ultra-rápida.
    *   *Nota*: No es Next.js. Es una "Single Page Application" (SPA) pura. Todo el renderizado ocurre en el navegador del usuario.
*   **Router**: React Router (`react-router-dom`). Maneja la navegación sin recargar la página.
*   **Estilos**: TailwindCSS. CSS utilitario (clases como `p-4`, `flex`, `text-red-500`).

### Estructura de Carpetas Frontend
```text
clarity-pwa/src/
├── main.tsx            <-- Punto de entrada (inyecta React en el HTML).
├── App.tsx             <-- Componente Raíz. Define las Rutas principales.
├── components/         <-- Bloques de LEGO reutilizables (Botones, Gráficos).
├── pages/              <-- Pantallas completas (Dashboard, Login).
└── hooks/              <-- Lógica reutilizable de React (Hook = "Gancho" a funcionalidad de React).
```

## Flujo de Datos
1.  El usuario entra a `clarity-pwa` en su navegador.
2.  El navegador descarga el JS y renderiza la página (React).
3.  React hace peticiones HTTP (Fetch/Axios) al Backend (`http://localhost:3000/...`).
4.  NestJS (`Backend`) recibe la petición en un **Controller**.
5.  El Controller llama a un **Service**.
6.  El Service consulta la Base de Datos usando **TypeORM**.
7.  Los datos regresan todo el camino hasta mostrarse en la pantalla.

## ¿Dónde entra Next.js?
En tu solicitud pediste "más Next.js".
*   **Tu código actual NO usa Next.js**. Usa Vite.
*   **¿La diferencia?**
    *   **Vite (SPA)**: El navegador descarga un HTML vacío y luego React lo llena. (Mejor para apps internas, dashboards como el tuyo).
    *   **Next.js (SSR)**: El servidor envía el HTML ya lleno con datos. (Mejor para SEO, tiendas online, blogs).

En el archivo `03_NEXTJS_VS_VITE_REACT.md` profundizaremos en esto para que aprendas Next.js comparándolo con lo que ya tienes.

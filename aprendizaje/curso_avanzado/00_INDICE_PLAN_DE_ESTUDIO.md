# Plan de Estudios: Arquitectura, NestJS y Next.js

Bienvenido a tu curso personalizado de programación avanzada basado en tu propio proyecto `d:\planificacion`.
Este curso está diseñado para un desarrollador con experiencia en C# (Entity Framework), Java y SQL, que desea dominar el stack moderno de TypeScript (NestJS + React/Next.js).

## Estructura del Curso

Este curso se divide en módulos que explican tu código línea por línea.

### Módulo 1: Fundamentos y Arquitectura
*   **[01_ARQUITECTURA_DEL_PROYECTO.md](./01_ARQUITECTURA_DEL_PROYECTO.md)**: Entendiendo el Monorepo, Backend vs Frontend, y tu stack actual.
*   **[02_NESTJS_EXPLICADO_PARA_JAVA_DEV.md](./02_NESTJS_EXPLICADO_PARA_JAVA_DEV.md)**: Explicación de NestJS usando `app.module.ts` y comparándolo con Spring Boot / .NET Core.
*   **[03_NEXTJS_VS_VITE_REACT.md](./03_NEXTJS_VS_VITE_REACT.md)**: **CRÍTICO**. Tu proyecto actual usa Vite, pero aquí te enseño Next.js a fondo comparándolo con lo que ya tienes.

### Módulo 2: Profundización en Backend (NestJS)
*   **[04_CONTROLADORES_Y_SERVICIOS.md](./04_CONTROLADORES_Y_SERVICIOS.md)**: Análisis de `planning.controller.ts` y `planning.service.ts`. Inyección de Dependencias.
*   **[05_ENTIDADES_Y_ORM.md](./05_ENTIDADES_Y_ORM.md)**: TypeORM vs Entity Framework. Análisis de tus entidades en `backend/src/entities`.

### Módulo 3: Profundización en Frontend (React/Next.js)
*   **[06_COMPONENTES_Y_HOOKS.md](./06_COMPONENTES_Y_HOOKS.md)**: React 101 avanzado. `useState`, `useEffect` explicados con tu código.
*   **[07_RUTAS_Y_NAVEGACION.md](./07_RUTAS_Y_NAVEGACION.md)**: Cómo funciona `react-router-dom` (tu código) vs `Next.js App Router` (lo que quieres aprender).

---

## Nota sobre Next.js vs Vite
Actualmente, tu carpeta `clarity-pwa` es una aplicación **Vite** (Single Page Application), no Next.js.
Sin embargo, **React** es la base de ambos.
En el archivo `03_NEXTJS_VS_VITE_REACT.md`, te explicaré exactamente las diferencias y cómo migrar mentalmente de uno a otro. Aprenderás Next.js analizando por qué tu código actual es diferente.

---
*Generado automáticamente por Antigravity (Google Deepmind) el 2026-01-16.*

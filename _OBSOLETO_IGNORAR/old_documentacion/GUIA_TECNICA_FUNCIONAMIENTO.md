# ⚙️ Guía Técnica de Funcionamiento - Momentus

Este documento explica la lógica interna, arquitectura y flujo de datos de **Momentus**. Diseñado para administradores, desarrolladores y personal de TI.

---

## 1. Arquitectura del Sistema

Momentus opera bajo una arquitectura moderna de **SPA (Single Page Application)** desacoplada:

*   **Frontend (PWA):**
    *   **Tecnología:** React 18, TypeScript, Vite.
    *   **Estilo:** TailwindCSS (Utility-first).
    *   **Estado:** Context API (AuthContext, UIContext) para gestión global ligera.
    *   **Comunicación:** Axios para peticiones HTTP REST al backend.
    *   **Offline:** Service Workers configurados vía VitePWA para capacidades offline básicas.

*   **Backend (API):**
    *   **Tecnología:** NestJS (Node.js framework).
    *   **Lenguaje:** TypeScript.
    *   **ORM:** TypeORM.
    *   **Seguridad:** JWT (JSON Web Tokens) y Guards de NestJS para protección de rutas.

*   **Base de Datos:**
    *   **Motor:** PostgreSQL.
    *   **Modelo:** Relacional normalizado (ver sección Entidades).

---

## 2. Modelo de Datos (Entidades Core)

El corazón de Momentus es su modelo relacional enfocado en jerarquías:

1.  **OrganizacionNodo:** Estructura de árbol que define la jerarquía de la empresa (Gerencias, Áreas, Equipos). Usa `idPadre` para recursividad.
2.  **UsuarioOrganizacion:** Tabla pivote que vincula `Usuario` <-> `Nodo` con un `Rol` (Gerente, Líder, Miembro). Esto define los permisos.
3.  **Proyecto:** Pertenece a un `OrganizacionNodo` (ej. Proyecto de "Reclutamiento").
4.  **Tarea:** La unidad atómica de trabajo. Vinculada a un `Proyecto`.
5.  **TareaAsignado:** Define quién trabaja en la tarea y cómo (Responsable, Colaborador).

---

## 3. Lógica de "Visibilidad Inteligente"

Momentus se diferencia por su estricto pero fluido control de visibilidad. No todos ven todo.

**Algoritmo de Visibilidad (Backend: `clarity.service.ts` -> `proyectoListar`)**
Al solicitar proyectos, el sistema filtra dinámicamente:

1.  **Identificación:** ¿Quién es el usuario? (ID extraído del JWT).
2.  **Roles Jerárquicos:** ¿Qué nodos administra este usuario? (Busca roles 'Gerente', 'Director' en `UsuarioOrganizacion`).
3.  **Regla de Administrador:** Si el usuario administra el Nodo Raíz (ej. 'Gerencia RRHH') o un Nodo Estratégico, se activa el modo `isAdmin` -> **Ve TODOS los proyectos**.
4.  **Regla General:** Si no es admin, se construye una query `OR`:
    *   **Condición A (Participación):** El usuario está asignado explícitamente a alguna tarea del proyecto.
    *   **Condición B (Gestión):** El proyecto pertenece a un nodo (o sub-nodo) que el usuario administra.

*Resultado:* Los gerentes tienen visión de águila sobre sus dominios; los operativos tienen visión láser sobre sus tareas.

---

## 4. Flujo de Trabajo (Workflow)

### A. Creación y Asignación
1.  Un **Gerente/Líder** crea un Proyecto en su Nodo.
2.  Crea Tareas dentro del proyecto.
3.  Asigna usuarios. *Nota: Al asignar un usuario, el proyecto se vuelve visible automáticamente para él.*

### B. Ejecución Diaria
1.  El **Usuario** entra a "Mi Día".
2.  El sistema busca tareas con `fechaInicio <= HOY` y estado no `Hecha`.
3.  Usuario hace Check-in (registra ánimo/bloqueos).
4.  Usuario actualiza progreso de tareas.

### C. Monitoreo
1.  Si una tarea se marca como "Bloqueada", se genera una entrada en la tabla `Bloqueo`.
2.  El Dashboard del Gerente alerta sobre "Bloqueos Activos".
3.  El Gerente interviene y resuelve.

---

## 5. Carga de Equipo (Cálculo Dinámico)

La página de "Carga de Trabajo" no es estática.
1.  El frontend solicita el rango de fechas (Semana actual).
2.  El backend busca todas las tareas activas en ese rango.
3.  Agrupa por `idUsuario`.
4.  Suma la carga diaria (basada en estimación de `Esfuerzo` o conteo simple).
5.  Frontend renderiza mapa de calor (Verde/Amarillo/Rojo).

---

## 6. Instalación y Despliegue

### Requisitos
*   Node.js v18+
*   PostgreSQL v14+

### Pasos Rápidos
1.  **DB:** Crear base de datos y configurar `.env` en `backend/`.
2.  **Backend:** `npm install` -> `npm run start:dev`. (Corre en puerto 3000).
3.  **Seed:** Ejecutar `npx ts-node src/scripts/seed.ts` para poblar datos iniciales.
4.  **Frontend:** `npm install` -> `npm run dev`. (Corre en puerto 5173).

---

**Momentus Tech Docs** - Enero 2026

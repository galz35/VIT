# ⚙️ Lógica de Backend (NestJS + SQL)

El backend actúa como una API REST robusta que valida permisos y coordina la persistencia de datos complejos.

## 📂 Organización del Código (`backend/src`)
Los módulos están organizados por dominio:

*   **`auth/`**: Manejo de sesiones, comparación de hashes (bcrypt) y generación de JWT.
*   **`planning/`**: Lógica de creación de proyectos y asignación de tareas.
*   **`clarity/`**: Endpoints específicos para los dashboards de la PWA (KPIs, estadísticas).
*   **`acceso/`**: El motor de visibilidad que decide si puedes ver la información de otro usuario según el organigrama.
*   **`common/`**: Decoradores, guardias de seguridad y filtros de excepciones.

## 🚀 El Patrón "Stored Procedure First"
En Planer, la lógica pesada NO está en el código Node.js, sino en la Base de Datos.
*   **Por qué:** SQL Server gestiona mejor las relaciones jerárquicas (recursividad) que un ORM tradicional.
*   **Cómo funciona:** El controlador NestJS recibe el request, valida que el JWT sea válido, y llama a un SP (Ej: `sp_Planer_GestionarTarea`).
*   **Múltiples Acciones:** Un solo SP puede manejar CREATE, UPDATE, DELETE y TOGGLE de una tarea, lo que reduce la latencia de red.

## 🔐 Visibilidad y Seguridad
El backend implementa un sistema de **Herencia de Permisos**:
1.  Si eres un **Líder** de un nodo (ej: Gerente de Ventas), el backend te da acceso automático a todo lo que creen los miembros de tu nodo y sub-nodos.
2.  Si eres un **Administrador**, el backend quita los filtros de jerarquía.
3.  Si eres un **Usuario estándar**, solo puedes ver lo que se te asignó o lo que tú creaste.

---

## 🛰️ Comunicación con el Móvil
El backend ofrece endpoints optimizados para el móvile:
*   **`POST /sync`**: Recibe una ráfaga de cambios de la `sync_queue` del móvil y los procesa en una sola transacción SQL.
*   **`GET /my-day`**: Devuelve un JSON ligero con solo lo necesario para que el móvil funcione offline (Menos de 20KB).

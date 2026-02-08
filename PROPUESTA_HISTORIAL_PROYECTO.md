# Propuesta: Módulo de Historial Avanzado de Proyecto (Timeline)

## 1. Visión y Objetivo
El objetivo es transformar la experiencia de "ver cambios" de un simple log a una **Línea de Tiempo (Timeline) Interactiva** específica para cada proyecto. A diferencia de la página general de Actividad (`/equipo/actividad`), esta vista estará altamente contextualizada, permitiendo a los gestores entender la evolución completa de un proyecto desde su creación hasta su entrega.

### ¿Por qué es mejor?
- **Contexto Puro:** Solo ves lo que importa para *este* proyecto. Sin ruido de otros equipos o tareas.
- **Narrativa:** Agrupa cambios por días e hitos, creando una historia visual.
- **Profundidad:** Permite ver no solo "que cambió", sino comparar el *antes* y *después* de fechas críticas, estados y bloqueos.
- **Auditoría:** Traza claramente quién hizo qué y cuándo.

---

## 2. Propuesta de Funcionalidad y Diseño

### Acceso
Se integrará en el menú de opciones (tres puntos) de cada fila en `ProyectosPage`:
- Opción: **"Ver Línea de Tiempo"** o **"Historial Completo"**.
- Icono sugerido: `GitCommit` o `History`.

### Interfaz de Usuario (UI)
La página nueva (`/planning/proyectos/:id/historial`) tendrá:

1.  **Encabezado de Resumen:**
    -   Título del Proyecto y Estado Actual.
    -   Métricas clave: "Creado hace X días", "Última modificación por Y", "Total de Cambios: Z".
2.  **Línea de Tiempo Vertical:**
    -   Agrupación por fechas (e.g., "Hoy", "Ayer", "Semana Pasada", "Septiembre 2023").
    -   **Nodos Visuales:**
        -   🟢 **Creación/Inicio:** Nodos verdes.
        -   🔵 **Modificaciones:** Nodos azules para cambios de alcance, fechas, o asignaciones.
        -   🔴 **Bloqueos/Problemas:** Nodos rojos para alertas o bloqueos reportados.
        -   ✅ **Finalización:** Nodo de cierre o hitos completados.
3.  **Tarjetas de Cambio (Cards):**
    -   Cada evento es una tarjeta.
    -   Muestra claramente: *Quién* (Avatar + Nombre), *Qué* (Acción), *Cuándo* (Hora).
    -   **Diff Inteligente:** "Fecha Fin: 20 Oct -> **25 Oct**" (Resaltado visual).

---

## 3. Implementación Técnica

### A. Backend (`ClarityCore`)

No podemos confiar solo en `Entidad = 'Proyecto'` porque la gran mayoría de la actividad ocurre en las **Tareas** del proyecto.

#### Estrategia de Datos:
1.  **Identificar el Alcance:**
    -   Obtener el ID del Proyecto.
    -   Obtener todos los IDs de las tareas asociadas a ese proyecto (`SELECT idTarea FROM p_Tareas WHERE idProyecto = X`).
2.  **Consulta Híbrida (Query):**
    -   Buscar en `p_Auditoria` donde:
        -   `(Entidad = 'Proyecto' AND EntidadId = X)`
        -   **OR**
        -   `(Entidad = 'Tarea' AND EntidadId IN [lista_de_ids_tareas])`
3.  **Optimización:**
    -   Usar `UNION` o `OR` optimizado.
    -   Paginar los resultados (infinite scroll o paginación clásica).

#### Cambios Requeridos:
1.  **Repo:** `audit.repo.ts` -> Nuevo método `obtenerHistorialProyectoCompleto(idProyecto, limit, offset)`.
2.  **Service:** `audit.service.ts` -> Lógica para buscar tareas primero y luego lanzar la query de auditoría.
3.  **Controller:** `clarity.controller.ts` -> Endpoint `GET /proyectos/:id/historial`.

### B. Frontend (`ClarityPWA`)

#### Nueva Página: `ProjectHistoryPage.tsx`
-   **Ruta:** `/app/planning/proyectos/:id/historial`
-   **Componentes:**
    -   `TimelineContainer`: Layout vertical.
    -   `TimelineItem`: Componente reutilizable para renderizar cada log.
    -   `DiffData`: Componente para mostrar JSON diffs de forma bonita (reusar lógica de `ActividadEquipoPage`).

#### Modificaciones en `ProyectosPage.tsx`
-   Agregar la acción en el menú dropdown.
-   Manejar la navegación.

---

## 4. Guía de Implementación Paso a Paso

### Paso 1: Backend - Capa de Datos
Crear la consulta SQL eficiente que traiga logs de proyecto y sus tareas.

```typescript
// Pseudo-código para audit.repo.ts
async function obtenerHistorialProyecto(idProyecto: number) {
  // 1. Get Task IDs
  const taskIds = await db.query('SELECT idTarea FROM p_Tareas WHERE idProyecto = ?', [idProyecto]);
  const ids = taskIds.map(t => t.idTarea);
  
  // 2. Get Logs
  return db.query(`
    SELECT * FROM p_Auditoria 
    WHERE (entidad = 'Proyecto' AND entidadId = ?)
       OR (entidad = 'Tarea' AND entidadId IN (?))
    ORDER BY fecha DESC
    LIMIT 100
  `, [idProyecto, ids]);
}
```

### Paso 2: Backend - Endpoint
Exponer el endpoint en `ClarityController`.

### Paso 3: Frontend - Integración
1.  Crear `src/pages/Planning/ProjectHistoryPage.tsx`.
2.  Definir la ruta en el router principal.
3.  Maquetar la línea de tiempo usando Tailwind CSS (e.g., border-l-2 para la línea, absolute positioning para los puntos).

### Paso 4: Polish
-   Agregar filtros en la página de historial (e.g., "Ver solo Bloqueos", "Ver solo mis cambios").

---

## 5. Estimación
-   **Backend:** 1-2 horas (Query compleja + testing).
-   **Frontend:** 3-4 horas (Diseño de timeline, integración, manejo de estados vacíos).
-   **Total:** ~5-6 horas para una versión "Premium" y pulida.

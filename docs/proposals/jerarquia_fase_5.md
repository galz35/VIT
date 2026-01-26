# Propuesta Técnica: Jerarquía de Tareas (Fase 5)
**Estado:** Borrador de Planificación para IA / Investigación  
**Proyecto:** Clarity Planning System  
**Autor:** Antigravity AI (Pair Programming)

---

## 1. Definición del Concepto
La **Jerarquía (Fase 5)** es el motor de estructuración de trabajo que permite transformar una lista plana de tareas en un **Árbol de Valor**. 

En lugar de ver tareas aisladas, el sistema permite agruparlas bajo **"Entregables Mayores"** (Parents/Epics), donde cada tarea contribuye al progreso del nivel superior.

### Terminología:
- **Tarea Principal (Padre):** Un objetivo de alto nivel o hito que requiere múltiples pasos para completarse.
- **Subtarea (Hijo):** Una unidad de trabajo accionable y granular que forma parte del padre.
- **Árbol de Dependencia:** La visualización técnica de estas relaciones.

---

## 2. Funcionamiento Actual (Mecánica)
Actualmente, el sistema utiliza una relación autorreferencial en la base de datos:
- **Tabla:** `p_Tareas`
- **Columna:** `idTareaPadre` (FK a `p_Tareas.idTarea`)
- **UI:** Ubicado en la pestaña "Historial & Jerarquía" del `TaskDetailModal`.
- **Lógica:** 
    - Se puede seleccionar cualquier tarea activa como "Padre".
    - Si una tarea tiene hijos, se listan con su porcentaje de avance individual.

---

## 3. Identificación de Fricción (Problemática)
El usuario reporta "fricción" en el apartado actual. Análisis de puntos de dolor detectados:
1. **Descubribilidad:** Al estar en la pestaña de historial, la jerarquía se siente como "pasado" o "registro" en lugar de "organización activa".
2. **Vinculación Manual:** Buscar un padre en un dropdown de IDs y títulos es tedioso cuando hay cientos de tareas.
3. **Falta de Automatización:** Si el hijo avanza, el padre no se actualiza automáticamente (el usuario debe cambiar ambos).
4. **Contexto:** Al estar trabajando en una subtarea, se pierde de vista el objetivo macro (el padre).

---

## 4. Benchmark: ¿Cómo lo hacen los líderes?
*Investigación basada en Jira, Asana y ClickUp (Enero 2026):*

| Software | Mecánica de Jerarquía | Fortaleza |
| :--- | :--- | :--- |
| **Jira** | Epic > Story > Subtask | **Roll-up automático:** Las fechas y estados del hijo pueden heredar al padre. |
| **Asana** | Multi-nivel (infinito) | **Contexto Visual:** "Breadcrumbs" (Migas de pan) superiores para saber dónde estás. |
| **ClickUp** | Relationships & Subtasks | **Creación Rápida:** Botón "+" dentro del padre para crear hijos al instante. |
| **Monday** | Sub-items | **Visualización de Carga:** El avance del padre es la barra de progreso de sus hijos. |

---

## 5. Propuesta de Evolución (El Plan)

### A. Fin y Resultado Esperado
Lograr un sistema donde la jerarquía no se "registre", sino que se "viva". El fin es que el **Líder** vea el bosque (Padres) y el **Colaborador** vea el árbol (Hijos), pero ambos entiendan la conexión.

### B. Mejoras Planificadas (Backlog para IA):
1. **Inteligencia de Avance (Sync):** Implementar un trigger o servicio que, al actualizar un hijo, recalcule el `% de avance` del padre automáticamente (Promedio de hijos).
2. **Jerarquía en la Vista Principal:** Mover la visualización de "Hijos" a la pestaña de "Información" si la tarea es un Padre.
3. **Breadcrumbs (Migas de Pan):** Agregar una línea superior en el modal: `Proyecto > Tarea Padre > Tarea Actual`.
4. **Creación In-Situ:** Agregar un botón "Añadir Subtarea" directamente desde el modal del Padre, heredando proyecto, área y fechas por defecto.
5. **Detección de Bloqueos en Cascada:** Si un hijo está "Bloqueado", el padre debe mostrar visualmente un indicador de "Riesgo por Dependencia".

---

## 6. Resultado Final
Para el usuario, el resultado debe ser: **Cero fricción cognitiva.** No debe pensar "¿Dónde pongo que esto depende de aquello?", sino que la estructura debe ser natural.

**KPI de Éxito:** Reducción del 50% en el tiempo de gestión de tareas "Estratégicas" mediante la automatización del progreso jerárquico.

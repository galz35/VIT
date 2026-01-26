# 🎓 Nivel 3: Lógica Avanzada
**Archivo bajo el microscopio:** `src/pages/Planning/ProjectSimulationPage.tsx`

Esta es la página más compleja. Aquí aprendemos a manejar lógica de negocio real.

---

## 1. Renderizado Condicional (El Switcher)
¿Cómo hacemos que el botón cambie entre "Tabla", "Tablero" y "Gantt"?

Usamos una variable de estado simple:
```tsx
const [viewMode, setViewMode] = useState<'table' | 'board' | 'gantt'>('table');
```

Y en el HTML, usamos la condición `&&`:

```tsx
{/* Si viewMode es 'table', muestra esto */}
{viewMode === 'table' && (
    <table>...</table>
)}

{/* Si viewMode es 'board', muestra esto otro */}
{viewMode === 'board' && (
    <div className="kanban">...</div>
)}
```
*Es como un interruptor de luz con 3 posiciones.*

## 2. La Lógica de Dependencias (El "Cerebro")
¿Recuerdas que hicimos que al terminar "Backend", se desbloquee "QA"?
Mira la función `handleStatusChange`:

```tsx
const handleStatusChange = (taskId, newStatus) => {
    // 1. Actualizamos la lista normal
    setTasks(prev => {
        let nextTasks = prev.map(t => ...);

        // 2. DETECTAMOS EL EVENTO CLAVE
        // "Si la tarea es la 103 (Backend) Y el nuevo estado es 'Hecha'..."
        if (taskId === 103 && newStatus === 'Hecha') {
            
            // Buscamos la tarea dependiente (QA - 104)
            const qaTask = nextTasks.find(t => t.idTarea === 104);
            
            // Si existe y está bloqueada...
            if (qaTask && qaTask.estado === 'Bloqueada') {
                // Preguntamos al usuario
                const confirm = window.confirm("¿Desbloquear QA?");
                
                if (confirm) {
                    // Mágicamente cambiamos QA a 'Pendiente'
                    // .map recorre toda la lista otra vez y cambia solo la 104
                     return nextTasks.map(t => 
                        t.idTarea === 104 ? { ...t, estado: 'Pendiente' } : t
                    );
                }
            }
        }
        return nextTasks;
    });
};
```

## 3. Estilos Dinámicos
¿Cómo hacemos que la etiqueta sea Roja si es "Alta" y Gris si es "Baja"?

Usamos Clases Dinámicas de Tailwind:

```tsx
<span className={`text-xs font-bold ${
    task.prioridad === 'Alta' ? 'text-red-600' :      // Si es Alta -> Rojo
    task.prioridad === 'Media' ? 'text-amber-600' :   // Si es Media -> Naraja
    'text-slate-500'                                  // Si no -> Gris
}`}>
    {task.prioridad}
</span>
```
Esto es lo que hace que tu aplicación se vea "viva".

---
**✅ Tu Misión Final:**
Intenta agregar una nueva lógica en `handleStatusChange`:
*   *"Si completo la tarea 'Arquitectura' (ID 101), mostrar una alerta que diga '¡Buen primer paso!'"*

Si logras hacer eso, ya estás programando lógica de negocio. ¡Felicidades!

# 🎓 Nivel 2: Disección de una Página Real
**Archivo bajo el microscopio:** `src/pages/Pendientes/PendientesPage.tsx`

Abre este archivo en tu editor. Vamos a leerlo juntos, bloque por bloque.

---

## 1. Las Importaciones (Líneas 1-10)
```tsx
import { useState, useEffect } from 'react';
import { Plus, CheckCircle, Trash2 } from 'lucide-react';
import { api } from '../../services/api';
```
*   **React:** Traemos las herramientas básicas.
*   **Lucide:** Traemos los iconos (Basurero, Check, Mas).
*   **API:** Traemos nuestra conexión al servidor (backend).

## 2. Definición del Estado (Dentro de la función)
Aquí definimos qué "recuerda" esta página.

```tsx
const [tasks, setTasks] = useState<Tarea[]>([]); // Lista de tareas (empieza vacía)
const [loading, setLoading] = useState(true);    // ¿Está cargando? (empieza sí)
const [newTaskTitle, setNewTaskTitle] = useState(''); // Lo que escribes en el input
```

## 3. Cargar Datos (El `fetchTasks`)
Esta función es la que va a buscar la información.

```tsx
const fetchTasks = async () => {
    try {
        setLoading(true); // 1. Avisamos que empezamos a cargar
        // 2. AWAIT significa "espera aquí hasta que el servidor responda"
        const res = await api.get('/tareas/mias'); 
        setTasks(res.data); // 3. Guardamos los datos recibidos
    } catch (err) {
        // Si falla, usamos datos falsos (Mocks) para que no se vea vacío
        setTasks(mockTasks);
    } finally {
        setLoading(false); // 4. Termine bien o mal, ya no estoy cargando
    }
};
```

## 4. Crear Tarea (El `handleCreateTask`)
Lo que pasa cuando pulsas el botón "+".

```tsx
const handleCreateTask = async () => {
    if (!newTaskTitle.trim()) return; // Si está vacío, no hagas nada

    // Truco de Experto: "Optimistic Update"
    // Agregamos la tarea a la lista VISUALMENTE antes de que el servidor confirme.
    // Esto hace que la app se sienta instantánea.
    const tempTask = { id: Date.now(), titulo: newTaskTitle, estado: 'Pendiente' };
    setTasks(prev => [tempTask, ...prev]); 
    
    // Luego limpiamos el input
    setNewTaskTitle('');
};
```

## 5. El Renderizado (HTML/JSX)
Es lo que el usuario ve.

```tsx
return (
    <div className="p-6">
        {/* Input de Nueva Tarea */}
        <div className="flex gap-2">
            <input 
                value={newTaskTitle}
                onChange={(e) => setNewTaskTitle(e.target.value)} // Conecta lo que escribes con la variable
            />
            <button onClick={handleCreateTask}>
                <Plus />
            </button>
        </div>

        {/* Lista de Tareas */}
        {loading ? (
           <p>Cargando...</p> 
        ) : (
            // MAP: Convierte una lista de datos en una lista de HTML
            tasks.map(task => (
                <div key={task.id} className="fila-tarea">
                    <span>{task.titulo}</span>
                </div>
            ))
        )}
    </div>
)
```

---
**✅ Tu Misión:**
Cambia algo en el `map` (Línea 180 aprox). Por ejemplo, agrega un texto que diga "HOLA" al lado de `{task.titulo}` y ve cómo se repite en todas las filas. Así entenderás el poder de los bucles.

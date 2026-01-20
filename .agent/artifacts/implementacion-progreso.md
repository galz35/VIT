# Resumen de Implementación: Clasificación de Tareas y Organización de Planes

## ✅ COMPLETADO - Backend

### 1. Entidades
- ✅ `Tarea.entity.ts`: Campo `tipo` ya existía con valores correctos
- ✅ `PlanTrabajo.entity.ts`: Agregados campos `area`, `subgerencia`, `gerencia`

### 2. Base de Datos
- ✅ Columnas creadas automáticamente por TypeORM (`synchronize: true`)
- ✅ Verificado que existen: `area`, `subgerencia`, `gerencia` en `p_PlanesTrabajo`

### 3. DTOs
- ✅ `TareaCrearRapidaDto`: Agregado campo `tipo` con validación
- ✅ `TareaActualizarDto`: Agregado campo `tipo` con validación
- ✅ `upsertPlan` body: Agregados campos organizacionales

### 4. Servicios
- ✅ `planning.service.ts::upsertPlan`: 
  - Auto-rellena campos organizacionales desde el usuario
  - Si es admin, permite especificar manualmente
  - Si no es admin, usa automáticamente su área/subgerencia/gerencia

### 5. Tipos Frontend
- ✅ `modelos.ts`: 
  - Actualizado `TipoTarea` a: 'Logistica' | 'Administrativa' | 'Estrategica' | 'AMX' | 'Otros'
  - Agregado campo `tipo` a `TareaCrearRapidaDto`
  - Agregada interfaz `PlanTrabajo` con campos organizacionales
  - Agregados campos `primerNivel`, `segundoNivel`, `tercerNivel` a `Usuario`

---

## 🔄 PENDIENTE - Frontend UI

### 6. Formularios de Tareas
**Archivos a modificar**:
- `clarity-pwa/src/pages/Hoy/components/*` (donde se crean tareas)
- Cualquier modal/form de creación de tareas

**Cambios necesarios**:
```tsx
<select name="tipo" value={form.tipo || 'Administrativa'} onChange={handleChange}>
    <option value="Logistica">Logística</option>
    <option value="Administrativa">Administrativa</option>
    <option value="Estrategica">Estratégica</option>
    <option value="AMX">AMX</option>
    <option value="Otros">Otros</option>
</select>
```

### 7. Visualización de Tareas
**Archivos a modificar**:
- `AgendaTimeline.tsx`
- `AgendaSemanal.tsx`
- Cualquier componente que muestre tareas

**Cambios necesarios**:
```tsx
{task.tipo && (
    <span className={`badge badge-${getTipoColor(task.tipo)}`}>
        {task.tipo}
    </span>
)}
```

### 8. Formularios de Planes
**Archivo**: `PlanTrabajoPage.tsx`

**Lógica necesaria**:
- Si usuario NO es admin: Mostrar campos organizacionales como read-only
- Si usuario ES admin: Permitir seleccionar área manualmente

---

## 📝 Próximos Pasos

1. **Buscar formularios de creación de tareas** en el frontend
2. **Agregar dropdown de tipo** en esos formularios
3. **Agregar badges de visualización** en las vistas de tareas
4. **Actualizar formulario de planes** para manejar campos organizacionales
5. **Testing**: Probar con Ali Rodriguez (área de transporte) y admin

---

## 🎯 Objetivo Final

- **Tareas**: Clasificadas por tipo (Logística, Administrativa, etc.)
- **Planes**: Asociados automáticamente a la estructura organizacional del usuario
- **Admins**: Pueden crear planes para cualquier área especificándola manualmente
- **Usuarios normales**: Sus planes se asocian automáticamente a su área


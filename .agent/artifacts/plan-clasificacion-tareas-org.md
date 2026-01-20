# Plan de Implementación: Clasificación de Tareas y Asociación Organizacional de Planes

## Objetivo
1. **Tareas**: Agregar campo `tipo` con opciones: Logística, Administrativa, Estratégica, AMX, Otros
2. **Planes de Trabajo**: Asociar con estructura organizacional (Gerencia → Subgerencia → Área)

---

## FASE 1: Modelo de Datos

### 1.1 Actualizar Entidad `Tarea`
**Archivo**: `backend/src/planning/entities/tarea.entity.ts`

```typescript
@Column({ type: 'varchar', length: 50, nullable: true })
tipo?: 'Logistica' | 'Administrativa' | 'Estrategica' | 'AMX' | 'Otros';
```

### 1.2 Actualizar Entidad `Plan` (si existe) o crear campos organizacionales
**Archivo**: `backend/src/planning/entities/plan.entity.ts` (o similar)

```typescript
@Column({ type: 'varchar', length: 200, nullable: true })
area?: string; // primernivel del CSV

@Column({ type: 'varchar', length: 200, nullable: true })
subgerencia?: string; // segundo_nivel del CSV

@Column({ type: 'varchar', length: 200, nullable: true })
gerencia?: string; // tercer_nivel del CSV

@Column({ type: 'int', nullable: true })
idUsuarioCreador?: number; // Para saber quién creó el plan
```

### 1.3 Migración de Base de Datos
```sql
-- Agregar columna tipo a p_Tareas
ALTER TABLE "p_Tareas" 
ADD COLUMN "tipo" VARCHAR(50);

-- Agregar columnas organizacionales a p_Planes (ajustar nombre de tabla según tu esquema)
ALTER TABLE "p_Planes" 
ADD COLUMN "area" VARCHAR(200),
ADD COLUMN "subgerencia" VARCHAR(200),
ADD COLUMN "gerencia" VARCHAR(200),
ADD COLUMN "idUsuarioCreador" INTEGER;
```

---

## FASE 2: Backend - DTOs y Servicios

### 2.1 Actualizar DTOs de Tareas
**Archivo**: `backend/src/clarity/dto/clarity.dtos.ts`

```typescript
export class TareaCrearRapidaDto {
    // ... campos existentes
    tipo?: 'Logistica' | 'Administrativa' | 'Estrategica' | 'AMX' | 'Otros';
}

export class TareaActualizarDto {
    // ... campos existentes
    tipo?: 'Logistica' | 'Administrativa' | 'Estrategica' | 'AMX' | 'Otros';
}
```

### 2.2 Actualizar DTOs de Planes
**Archivo**: `backend/src/planning/dto/planning.dtos.ts`

```typescript
export class PlanCrearDto {
    // ... campos existentes
    area?: string;
    subgerencia?: string;
    gerencia?: string;
}
```

### 2.3 Lógica de Negocio para Planes
**Archivo**: `backend/src/planning/planning.service.ts`

```typescript
async crearPlan(dto: PlanCrearDto, idUsuario: number) {
    // Si el usuario NO es admin, auto-rellenar con su info organizacional
    const user = await this.userRepo.findOne({ where: { idUsuario } });
    
    if (!dto.area && user.primernivel) {
        dto.area = user.primernivel;
        dto.subgerencia = user.segundo_nivel;
        dto.gerencia = user.tercer_nivel;
    }
    
    // Si es admin, debe especificar manualmente el área
    // (validar que si es admin y no especifica, lanzar error)
    
    const plan = this.planRepo.create({
        ...dto,
        idUsuarioCreador: idUsuario
    });
    
    return this.planRepo.save(plan);
}
```

---

## FASE 3: Frontend - UI Components

### 3.1 Formulario de Creación de Tareas
**Archivos a modificar**:
- `clarity-pwa/src/pages/Hoy/components/TareaForm.tsx` (o similar)
- Cualquier modal/form donde se creen tareas

**Agregar**:
```tsx
<select name="tipo" value={form.tipo} onChange={handleChange}>
    <option value="">Seleccionar tipo...</option>
    <option value="Logistica">Logística</option>
    <option value="Administrativa">Administrativa</option>
    <option value="Estrategica">Estratégica</option>
    <option value="AMX">AMX</option>
    <option value="Otros">Otros</option>
</select>
```

### 3.2 Visualización de Tareas
**Archivos a modificar**:
- `clarity-pwa/src/pages/Hoy/components/AgendaTimeline.tsx`
- `clarity-pwa/src/pages/Hoy/components/AgendaSemanal.tsx`
- Cualquier componente que muestre tareas

**Agregar badge/etiqueta**:
```tsx
{task.tipo && (
    <span className={`badge badge-${getTipoColor(task.tipo)}`}>
        {task.tipo}
    </span>
)}
```

### 3.3 Formulario de Creación de Planes
**Archivo**: `clarity-pwa/src/pages/Planning/components/PlanForm.tsx` (o similar)

**Lógica**:
```tsx
const { user } = useAuth();
const isAdmin = user?.rolGlobal === 'Admin';

// Si NO es admin, mostrar campos como read-only con valores del usuario
// Si ES admin, mostrar dropdown de áreas disponibles

{!isAdmin ? (
    <>
        <input readOnly value={user?.primernivel} label="Área" />
        <input readOnly value={user?.segundo_nivel} label="Subgerencia" />
        <input readOnly value={user?.tercer_nivel} label="Gerencia" />
    </>
) : (
    <select name="area" onChange={handleAreaChange}>
        {/* Cargar áreas únicas del CSV/DB */}
    </select>
)}
```

---

## FASE 4: Filtros y Reportes

### 4.1 Filtros por Tipo de Tarea
Agregar filtros en vistas de tareas para filtrar por tipo.

### 4.2 Filtros por Área Organizacional en Planes
Permitir a gerentes ver planes de su área/subgerencia/gerencia.

**Ejemplo de query**:
```typescript
async getPlanesPorArea(area: string) {
    return this.planRepo.find({
        where: { area },
        relations: ['usuario', 'tareas']
    });
}
```

---

## FASE 5: Validaciones y Permisos

### 5.1 Validar que Admin especifique área al crear plan
```typescript
if (user.rolGlobal === 'Admin' && !dto.area) {
    throw new BusinessRuleException('El administrador debe especificar el área del plan');
}
```

### 5.2 Validar que usuarios no-admin solo vean/editen planes de su área
```typescript
if (user.rolGlobal !== 'Admin' && plan.area !== user.primernivel) {
    throw new InsufficientPermissionsException('No tienes permisos para este plan');
}
```

---

## Orden de Implementación Recomendado

1. ✅ **Migración de BD** (agregar columnas)
2. ✅ **Actualizar Entidades** (backend)
3. ✅ **Actualizar DTOs** (backend)
4. ✅ **Actualizar Servicios** (backend - lógica de negocio)
5. ✅ **Actualizar Tipos Frontend** (`modelos.ts`)
6. ✅ **Actualizar Formularios** (frontend - UI)
7. ✅ **Actualizar Vistas** (frontend - visualización)
8. ✅ **Agregar Filtros** (frontend/backend)
9. ✅ **Testing** (probar con Ali Rodriguez y admin)

---

## Notas Importantes

- **Compatibilidad**: Las tareas/planes existentes tendrán `tipo` y campos organizacionales en `NULL` (opcional).
- **CSV RRHH**: Los datos organizacionales ya están en `p_Usuarios` (campos `primernivel`, `segundo_nivel`, `tercer_nivel`).
- **Admin**: Debe poder crear planes para cualquier área, pero debe especificarla manualmente.
- **Usuarios normales**: Sus planes se auto-asocian a su área organizacional.

---

## ¿Proceder con la implementación?
Por favor confirma si este plan es correcto antes de comenzar la ejecución.

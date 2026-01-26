# Documentación: Estructura Organizacional y Empleados (Backend v2)

Este archivo documenta la arquitectura de empleados y visibilidad del sistema. 
**IMPORTANTE**: Actualmente coexisten DOS sistemas que deben entenderse por separado.

---

## RESUMEN EJECUTIVO: DOS SISTEMAS

| Aspecto | Sistema `clarity` (VIEJO) | Sistema `acceso` (NUEVO) |
|---------|---------------------------|--------------------------|
| **PK Empleado** | `idUsuario` (INT) | **`carnet`** (VARCHAR, ej: "1010232") |
| **Tabla Principal** | `p_Usuarios` | `p_empleados` |
| **Propósito** | Gestión de tareas, check-ins, proyectos | Visibilidad, permisos, jerarquía RRHH |
| **Origen Datos** | Manual/API interna | SIGHO1 (RRHH) via importación |
| **Jerarquía** | Via `UsuarioOrganizacion.rol` | Via `carnet_jefe1..4` + CTE recursivo |
| **Permisos Extra** | No tiene | 3 tablas de permisos flexibles |
| **Frontend** | `TeamListPage`, `UsersPage` | `PermisosPage`, `VisibilidadPage` |

---

## PARTE 1: SISTEMA NUEVO (`acceso`) - VISIBILIDAD

### Características Clave
- **`carnet`** es el identificador único (texto, usualmente numérico como "001120", "1010232")
- Algunos países pueden tener letras en el carnet (raro pero posible)
- Datos importados directamente de RRHH (SIGHO1)
- Sistema de permisos flexible con 3 tablas

### 1.1 Entidad: Empleado (`p_empleados`)

```typescript
@Entity({ name: 'p_empleados' })
export class Empleado {
    @PrimaryColumn({ name: 'carnet', type: 'varchar', length: 100 })
    carnet: string;  // ⭐ PK ÚNICA (ej: "1010232", "001120")

    @Column({ name: 'nombre_completo' }) nombreCompleto: string | null;
    @Column({ name: 'correo', unique: true }) correo: string | null;
    @Column({ name: 'idorg', type: 'bigint' }) idOrg: string | null;
    @Column({ name: 'cargo' }) cargo: string | null;
    @Column({ name: 'departamento' }) departamento: string | null;

    // ⭐ JEFATURA DIRECTA (por carnet)
    @Column({ name: 'carnet_jefe1' }) carnetJefe1: string | null;
    @Column({ name: 'carnet_jefe2' }) carnetJefe2: string | null;
    @Column({ name: 'carnet_jefe3' }) carnetJefe3: string | null;
    @Column({ name: 'carnet_jefe4' }) carnetJefe4: string | null;

    @Column({ name: 'activo', default: true }) activo: boolean;
    @Column({ name: 'fuente' }) fuente: string | null; // EXCEL, API, SIGHO1
}
```

### 1.2 Sistema de Permisos

#### Tabla 1: `p_permiso_area` - Permiso por Subárbol
```json
{
  "carnetRecibe": "500708",      // Quién recibe el permiso
  "idOrgRaiz": "1234567890",     // ID del nodo organizacional
  "alcance": "SUBARBOL"          // O "SOLO_NODO"
}
```

#### Tabla 2: `p_permiso_empleado` - Permiso Puntual
```json
{
  "carnetRecibe": "500708",      // Quién recibe el permiso
  "carnetObjetivo": "000772"     // A quién puede ver
}
```

#### Tabla 3: `p_delegacion_visibilidad` - Herencia de Visibilidad
```json
{
  "carnetDelegante": "1010232",  // El gerente (quien tiene visibilidad)
  "carnetDelegado": "001120"     // La secretaria (quien hereda)
}
```

### 1.3 Consulta Maestra: ¿A quién puedo ver?

**Endpoint**: `GET /api/visibilidad/{carnet}/empleados`

**Lógica SQL (VisibilidadService)**:
```sql
WITH RECURSIVE
Actores AS (
    SELECT 'MI_CARNET'::text AS carnet
    UNION
    SELECT carnet_delegante FROM p_delegacion_visibilidad 
    WHERE carnet_delegado = 'MI_CARNET' AND activo = true
),
Seeds AS (
    SELECT e.idorg FROM p_empleados e JOIN Actores a ON a.carnet = e.carnet
    UNION
    SELECT idorg_raiz FROM p_permiso_area pa JOIN Actores a ON a.carnet = pa.carnet_recibe WHERE pa.activo = true
),
Arbol AS (
    SELECT idorg FROM p_organizacion_nodos WHERE idorg IN (SELECT idorg FROM Seeds)
    UNION ALL
    SELECT child.idorg FROM p_organizacion_nodos child JOIN Arbol parent ON child.padre = parent.idorg
)
SELECT DISTINCT e.carnet, e.nombre_completo
FROM p_empleados e
WHERE e.activo = true AND (
    e.idorg IN (SELECT idorg FROM Arbol)
    OR e.carnet IN (SELECT carnet_objetivo FROM p_permiso_empleado pe JOIN Actores a ON a.carnet = pe.carnet_recibe WHERE pe.activo = true)
);
```

### 1.4 Endpoints API del Sistema `acceso`

| Método | Ruta | Descripción |
|--------|------|-------------|
| GET | `/api/visibilidad/:carnet` | Carnets que puedo ver |
| GET | `/api/visibilidad/:carnet/empleados` | Empleados con datos completos |
| GET | `/api/visibilidad/:carnet/puede-ver/:objetivo` | Verificar acceso específico |
| GET | `/api/acceso/empleado/:carnet` | Obtener un empleado |
| GET | `/api/acceso/empleados/buscar?q=...` | Buscar empleados |
| POST | `/api/acceso/permiso-area` | Crear permiso por área |
| POST | `/api/acceso/permiso-empleado` | Crear permiso puntual |
| POST | `/api/acceso/delegacion` | Crear delegación |

### 1.5 Frontend del Sistema `acceso`

| Página | Ruta | Función |
|--------|------|---------|
| `PermisosPage.tsx` | `/admin/acceso/permisos` | Gestión de los 3 tipos de permisos |
| `VisibilidadPage.tsx` | `/admin/acceso/visibilidad` | Explorador: ¿quién ve a quién? |

---

## PARTE 2: SISTEMA VIEJO (`clarity`) - TAREAS

### Características
- Usa `idUsuario` (INT) como identificador
- Orientado a gestión de tareas, check-ins, proyectos
- Jerarquía calculada via `UsuarioOrganizacion.rol`

### 2.1 Entidad: Usuario (`p_Usuarios`)

```typescript
@Entity({ name: 'p_Usuarios' })
export class Usuario {
    @PrimaryGeneratedColumn()
    idUsuario: number;  // ⭐ PK NUMÉRICA

    @Column() nombre: string;
    @Column({ unique: true }) correo: string;
    @Column({ default: true }) activo: boolean;
    @Column({ default: 'Empleado' }) rolGlobal: string;
}
```

### 2.2 Consulta de Equipo (TasksService)

El hook `useEquipo` llama a `GET /api/equipo/hoy` que usa:

```typescript
// TasksService.getSubtreeUserIds(idLider)
const relaciones = await userOrgRepo.find({
    where: { idUsuario: idLider, rol: In(['Lider', 'Gerente', 'Director']) }
});
// + CTE recursivo sobre p_OrganizacionNodos
```

### 2.3 Endpoints del Sistema `clarity`

| Método | Ruta | Descripción |
|--------|------|-------------|
| GET | `/api/equipo/hoy?fecha=...` | Miembros del equipo (usa idUsuario) |
| GET | `/api/equipo/miembro/:id/tareas` | Tareas de un subordinado |
| GET | `/api/admin/usuarios` | Listar todos los usuarios |

---

## PARTE 3: CONVIVENCIA DE SISTEMAS

### ¿Por qué hay dos sistemas?

1. **`clarity`/`p_Usuarios`**: Sistema original para funcionalidad de app (tareas, check-ins)
2. **`acceso`/`p_empleados`**: Sistema nuevo para visibilidad precisa importada de RRHH

### Relación entre Tablas

```
p_Usuarios (clarity)          p_empleados (acceso)
-----------------------       -------------------------
idUsuario (PK, INT)           carnet (PK, VARCHAR)
correo (unique)        <--->  correo (unique)  ← LINK
nombre                        nombre_completo
```

El campo `correo` puede ser la llave para relacionar ambos sistemas si fuese necesario.

### Casos de Uso

| Caso | Sistema a Usar |
|------|----------------|
| Ver mis tareas del día | `clarity` (Mi Día) |
| Ver tareas de mi equipo | `clarity` (useEquipo) |
| Ver quién puede ver a quién | `acceso` (VisibilidadPage) |
| Dar permiso a alguien | `acceso` (PermisosPage) |
| Importar empleados de Excel | `acceso` (ImportController) |
| Gestionar roles del sistema | `clarity` (UsersPage) |

---

## PARTE 4: EJEMPLOS PRÁCTICOS

### Ejemplo 1: Consultar empleados que puedo ver

**Frontend**:
```typescript
import { accesoService } from '../services/acceso.service';

// Mi carnet es "1010232"
const res = await accesoService.getVisibilidadEmpleados("1010232");
const empleados = res.data?.data || [];
// empleados = [{ carnet: "000772", nombreCompleto: "...", ... }, ...]
```

### Ejemplo 2: Verificar si puedo ver a alguien

```typescript
const res = await accesoService.verificarPuedeVer("1010232", "000772");
// res.data.data = { puedeVer: true/false, razon: "..." }
```

### Ejemplo 3: Crear un permiso de delegación

```typescript
await accesoService.createDelegacion({
    carnetDelegante: "1010232",  // El gerente
    carnetDelegado: "001120",    // La secretaria
    motivo: "Apoyo administrativo"
});
```

---

## PARTE 5: SQL PARA DEBUG

### Ver empleados visibles para un carnet específico

```sql
-- Reemplazar 'TU_CARNET' con el carnet real
WITH RECURSIVE
Actores AS (
    SELECT 'TU_CARNET'::text AS carnet
    UNION
    SELECT d.carnet_delegante FROM p_delegacion_visibilidad d
    WHERE d.carnet_delegado = 'TU_CARNET' AND d.activo = true
),
Seeds AS (
    SELECT e.idorg FROM p_empleados e JOIN Actores a ON a.carnet = e.carnet WHERE e.idorg IS NOT NULL
    UNION
    SELECT pa.idorg_raiz FROM p_permiso_area pa JOIN Actores a ON a.carnet = pa.carnet_recibe WHERE pa.activo = true
),
Arbol AS (
    SELECT idorg FROM p_organizacion_nodos WHERE idorg::text IN (SELECT idorg::text FROM Seeds)
    UNION ALL
    SELECT child.idorg FROM p_organizacion_nodos child JOIN Arbol parent ON child.padre = parent.idorg
)
SELECT e.carnet, e.nombre_completo, e.departamento, e.cargo
FROM p_empleados e
WHERE e.activo = true AND (
    e.idorg::text IN (SELECT idorg::text FROM Arbol)
    OR e.carnet IN (SELECT carnet FROM Actores)
    OR e.carnet IN (SELECT pe.carnet_objetivo FROM p_permiso_empleado pe JOIN Actores a ON a.carnet = pe.carnet_recibe WHERE pe.activo = true)
)
ORDER BY e.nombre_completo;
```

### Ver quién puede ver a un empleado

```sql
SELECT 
    carnet_jefe1 as carnet, 'Jefe Directo' as razon 
FROM p_empleados WHERE carnet = 'CARNET_OBJETIVO' AND carnet_jefe1 IS NOT NULL
UNION
SELECT carnet_recibe, 'Permiso Puntual' FROM p_permiso_empleado WHERE carnet_objetivo = 'CARNET_OBJETIVO' AND activo = true;
```

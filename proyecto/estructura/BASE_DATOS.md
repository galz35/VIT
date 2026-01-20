# 🗄️ BASE DE DATOS

**Motor:** PostgreSQL 15  
**ORM:** TypeORM

---

## 📊 Resumen

| Categoría | Cantidad |
|-----------|----------|
| Tablas totales | 23 |
| Dominio AUTH | 6 tablas |
| Dominio CLARITY | 8 tablas |
| Dominio ACCESO | 5 tablas |
| Dominio SISTEMA | 4 tablas |

---

## 📋 Lista de Tablas

### 🔐 Dominio AUTH (Usuarios y Roles)

| Tabla | Descripción | Clave Primaria |
|-------|-------------|----------------|
| `p_Usuarios` | Usuarios del sistema | `idUsuario` (auto) |
| `p_UsuariosCredenciales` | Contraseñas y tokens | `idUsuario` (FK) |
| `p_UsuariosConfig` | Preferencias de usuario | `idUsuario` (FK) |
| `p_UsuariosOrganizacion` | Asignación a nodos org | `id` (auto) |
| `p_Roles` | Roles del sistema | `idRol` (auto) |
| `p_OrganizacionNodos` | Árbol organizacional | `idNodo` (auto) |

### ✅ Dominio CLARITY (Productividad)

| Tabla | Descripción | Clave Primaria |
|-------|-------------|----------------|
| `p_Tareas` | Tareas del sistema | `idTarea` (auto) |
| `p_TareaAsignados` | Responsables de tareas | `id` (auto) |
| `p_TareaAvances` | Historial de avances | `idAvance` (auto) |
| `p_Bloqueos` | Bloqueos y dependencias | `idBloqueo` (auto) |
| `p_Checkins` | Check-ins diarios | `idCheckin` (auto) |
| `p_CheckinTareas` | Tareas del check-in | `id` (auto) |
| `p_FocoDiario` | Foco del día | `id` (auto) |
| `p_Proyectos` | Proyectos | `idProyecto` (auto) |
| `p_Notas` | Notas y comentarios | `idNota` (auto) |

### 👥 Dominio ACCESO (Visibilidad)

| Tabla | Descripción | Clave Primaria |
|-------|-------------|----------------|
| `p_empleados` | Empleados (datos RRHH) | `carnet` (varchar) |
| `p_organizacion_nodo_rh` | Árbol org RRHH | `idOrg` (bigint) |
| `p_permiso_area` | Permisos por área | `id` (auto) |
| `p_permiso_empleado` | Permisos por empleado | `id` (auto) |
| `p_delegacion_visibilidad` | Delegaciones | `id` (auto) |

### 🔧 Dominio SISTEMA

| Tabla | Descripción | Clave Primaria |
|-------|-------------|----------------|
| `p_AuditLogs` | Auditoría de cambios | `idAuditLog` (auto) |
| `p_LogsSistema` | Logs de errores | `idLog` (auto) |
| `p_SolicitudesCambio` | Solicitudes de cambio | `idSolicitud` (auto) |

---

## 🔗 Relaciones Principales

```
p_Usuarios
    │
    ├──> p_UsuariosCredenciales (1:1)
    ├──> p_UsuariosConfig (1:1)
    ├──> p_UsuariosOrganizacion (1:N)
    ├──> p_Roles (N:1)
    │
    ├──> p_Tareas (como creador, 1:N)
    ├──> p_TareaAsignados (N:M via tabla)
    ├──> p_Checkins (1:N)
    └──> p_FocoDiario (1:N)

p_Tareas
    │
    ├──> p_TareaAsignados (1:N)
    ├──> p_TareaAvances (1:N)
    ├──> p_Bloqueos (1:N)
    ├──> p_Proyectos (N:1)
    └──> p_FocoDiario (1:N)

p_empleados
    │
    ├──> p_organizacion_nodo_rh (N:1, campo idOrg)
    ├──> p_empleados (N:1, jefe directo via jefe1Carnet)
    ├──> p_permiso_area (1:N, como otorgante)
    ├──> p_permiso_empleado (1:N)
    └──> p_delegacion_visibilidad (1:N)
```

---

## 📝 Entidades Clave

### Usuario (`p_Usuarios`)
```sql
idUsuario      SERIAL PRIMARY KEY
correo         VARCHAR(150) UNIQUE NOT NULL
nombre         VARCHAR(200)
activo         BOOLEAN DEFAULT true
rolGlobal      VARCHAR(50) -- 'Admin', 'Empleado', 'Jefe'
pais           VARCHAR(50) DEFAULT 'Nicaragua'
idRol          INTEGER REFERENCES p_Roles
```

### Empleado (`p_empleados`)
```sql
carnet              VARCHAR(100) PRIMARY KEY
nombreCompleto      VARCHAR(300)
correo              VARCHAR(150) UNIQUE
cargo               VARCHAR(200)
departamento        VARCHAR(200)
idOrg               BIGINT REFERENCES p_organizacion_nodo_rh
jefe1Carnet         VARCHAR(100) -- jefe directo
jefe2Carnet         VARCHAR(100) -- jefe del jefe
activo              BOOLEAN DEFAULT true
fechaIngreso        DATE
```

### Tarea (`p_Tareas`)
```sql
idTarea        SERIAL PRIMARY KEY
titulo         VARCHAR(500) NOT NULL
descripcion    TEXT
estado         VARCHAR(50) -- 'Pendiente','EnCurso','Hecha','Bloqueada'
prioridad      VARCHAR(20) -- 'Alta','Media','Baja'
esfuerzo       CHAR(1) -- 'S','M','L'
fechaObjetivo  DATE
fechaHecha     TIMESTAMP
progreso       INTEGER DEFAULT 0
idProyecto     INTEGER REFERENCES p_Proyectos
idCreador      INTEGER REFERENCES p_Usuarios
```

---

## 🔧 Conexión

```typescript
// Archivo: backend/src/app.module.ts
TypeOrmModule.forRoot({
  type: 'postgres',
  host: process.env.DB_HOST || 'localhost',
  port: parseInt(process.env.DB_PORT) || 5432,
  username: process.env.DB_USER || 'postgres',
  password: process.env.DB_PASS || 'password',
  database: process.env.DB_NAME || 'momentus',
  autoLoadEntities: true,
  synchronize: false, // En producción siempre false
})
```

---

*Última actualización: 14 de Enero 2026*

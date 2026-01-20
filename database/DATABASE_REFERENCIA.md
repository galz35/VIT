# REFERENCIA COMPLETA DE BASE DE DATOS
# Actualizado: 12/1/2026, 8:43:41 p. m.

---

## 📂 TABLAS Y SU FUNCIÓN

### 👤 USUARIOS (p_Usuarios)
Almacena todos los empleados/usuarios del sistema.

```
Campos principales:
- idUsuario (PK) - Identificador único
- nombre - Nombre completo
- correo - Email único (usado para login)
- activo - boolean (true = empleado activo)
- idRol - FK a p_Roles (permisos del sistema)
- rolGlobal - string legacy
- fechaCreacion - Fecha de alta
```

### 🔐 CREDENCIALES (p_UsuariosCredenciales)
Contraseñas hasheadas para autenticación.

```
- idCredencial (PK)
- idUsuario - FK
- passwordHash - bcrypt hash
- ultimoLogin - timestamp
- refreshTokenHash - para JWT refresh
```

### 👔 ROLES (p_Roles)
Define permisos del sistema.

| ID | Rol | Descripción |
|----|-----|-------------|
| 1 | Admin | Acceso total |
| 2 | Gerente | Reportes y gestión |
| 3 | Coordinador | Gestión de equipos |
| 4 | Empleado | Rol base |
| 5 | Colaborador | Personal base |

---

## 🏢 ORGANIZACIÓN

### NODOS (p_OrganizacionNodos)
Estructura jerárquica del organigrama.

```
- idNodo (PK)
- idPadre - FK a sí mismo (jerárquico)
- tipo - Dirección, Gerencia, Subgerencia, Equipo
- nombre - Nombre del nodo
- activo - boolean
```

**Jerarquía típica:**
```
Dirección (nivel 0)
  └─ Gerencia (nivel 1)
      └─ Subgerencia (nivel 2)
          └─ Equipo (nivel 3)
```

### USUARIO-ORGANIZACIÓN (p_UsuariosOrganizacion)
Relaciona usuarios con nodos del organigrama.

```
- idRelacion (PK)
- idUsuario - FK
- idNodo - FK
- rol - Lider, Miembro, Gerente, Director
- fechaInicio / fechaFin
```

---

## 📋 GESTIÓN DE TRABAJO

### PROYECTOS (p_Proyectos)
```
- idProyecto (PK)
- nombre
- descripcion
- idNodoDuenio - FK (qué área es dueña)
- estado - Activo, Cerrado
```

### TAREAS (p_Tareas)
```
- idTarea (PK, bigint)
- idProyecto - FK
- titulo
- descripcion
- estado - Pendiente, EnCurso, Bloqueada, Revision, Hecha, Descartada
- prioridad - Alta, Media, Baja
- esfuerzo - S, M, L
- fechaObjetivo - date
- progreso - 0-100
- idCreador - quien creó la tarea
- idAsignadoPor - si fue asignada por jefe
```

### ASIGNACIONES (p_TareaAsignados)
```
- idAsignacion (PK)
- idTarea - FK
- idUsuario - FK
- tipo - Responsable, Colaborador
```

---

## ✅ CHECK-INS DIARIOS

### CHECKINS (p_Checkins)
Un registro por usuario por día.

```
- idCheckin (PK)
- fecha - date (único por usuario)
- idUsuario - FK
- entregableTexto - Qué entregaste hoy
- estadoAnimo - Tope, Bien, Bajo
- nota - comentarios adicionales
```

### CHECKIN-TAREAS (p_CheckinTareas)
Tareas asociadas al checkin del día.

```
- idCheckinTarea (PK)
- idCheckin - FK
- idTarea - FK
- tipo - Entrego, Avanzo, Extra
```

---

## 🚫 BLOQUEOS

### BLOQUEOS (p_Bloqueos)
Reporta dependencias bloqueantes.

```
- idBloqueo (PK)
- idTarea - FK (qué tarea está bloqueada)
- idOrigenUsuario - quien reporta
- idDestinoUsuario - a quién bloquea (puede ser null)
- destinoTexto - si es externo (ej: "TI", "Compras")
- motivo - razón del bloqueo
- accionMitigacion - qué hacer mientras tanto
- estado - Activo, Resuelto
- fechaCreacion / fechaResolucion
```

---

## 📌 MI AGENDA (p_FocoDiario)
Rolling tasks - tareas que se arrastran día a día.

```
- idFoco (PK)
- fecha - date
- idUsuario - FK
- idTarea - FK
- esEstrategico - boolean (★ objetivo vs tarea)
- diasArrastre - cuántos días lleva sin completar
- completadoEnFecha - date o null
- orden - posición en lista
```

---

## 🔗 CONSULTAS SQL ÚTILES

### Empleados de una gerencia específica
```sql
SELECT u.*, uo.rol as rol_org
FROM "p_Usuarios" u
JOIN "p_UsuariosOrganizacion" uo ON uo."idUsuario" = u."idUsuario"
WHERE uo."idNodo" = [ID_NODO] AND u.activo = true;
```

### Jerarquía de un nodo
```sql
WITH RECURSIVE tree AS (
    SELECT * FROM "p_OrganizacionNodos" WHERE "idNodo" = [ID]
    UNION ALL
    SELECT n.* FROM "p_OrganizacionNodos" n
    JOIN tree t ON n."idPadre" = t."idNodo"
)
SELECT * FROM tree;
```

### Tareas de un usuario
```sql
SELECT t.* FROM "p_Tareas" t
JOIN "p_TareaAsignados" ta ON ta."idTarea" = t."idTarea"
WHERE ta."idUsuario" = [ID_USUARIO];
```

### Bloqueos activos
```sql
SELECT b.*, u.nombre as quien_bloquea, t.titulo as tarea
FROM "p_Bloqueos" b
JOIN "p_Usuarios" u ON b."idOrigenUsuario" = u."idUsuario"
LEFT JOIN "p_Tareas" t ON b."idTarea" = t."idTarea"
WHERE b.estado = 'Activo';
```

---

## 📊 ESTADÍSTICAS ACTUALES

- Usuarios activos: 1911
- Nodos organización: 361
- Gerencias: 141
- Líderes identificados: 290

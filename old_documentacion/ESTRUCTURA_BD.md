# ===============================================
# ESTRUCTURA DE BASE DE DATOS - MOMENTUS
# ===============================================

## 📂 TABLAS PRINCIPALES

### Usuarios y Autenticación
| Tabla                    | Descripción                          |
|--------------------------|--------------------------------------|
| p_Usuarios               | Usuarios del sistema                 |
| p_UsuariosCredenciales   | Contraseñas hasheadas                |
| p_UsuariosConfig         | Preferencias de usuario              |
| p_Roles                  | Roles del sistema                    |

### Organización (Jerarquía)
| Tabla                    | Descripción                          |
|--------------------------|--------------------------------------|
| p_OrganizacionNodos      | Nodos del organigrama                |
| p_UsuariosOrganizacion   | Relación usuario-nodo                |

### Gestión de Trabajo
| Tabla                    | Descripción                          |
|--------------------------|--------------------------------------|
| p_Proyectos              | Proyectos                            |
| p_Tareas                 | Tareas del sistema                   |
| p_TareaAsignados         | Asignación tarea-usuario             |
| p_TareaAvances           | Avances registrados en tareas        |

### Check-in Diario
| Tabla                    | Descripción                          |
|--------------------------|--------------------------------------|
| p_Checkins               | Check-ins diarios                    |
| p_CheckinTareas          | Tareas asociadas al check-in         |

### Bloqueos y Foco
| Tabla                    | Descripción                          |
|--------------------------|--------------------------------------|
| p_Bloqueos               | Bloqueos activos/resueltos           |
| p_FocoDiario             | Agenda/Foco diario (rolling tasks)   |

### Sistema
| Tabla                    | Descripción                          |
|--------------------------|--------------------------------------|
| p_Notas                  | Notas personales                     |
| p_Logs                   | Logs del sistema                     |
| p_Auditoria              | Auditoría de acciones                |

---

## 🔑 CAMPOS IMPORTANTES

### p_Usuarios
```
idUsuario    - PK, autoincrement
nombre       - Nombre completo
correo       - Email único
activo       - boolean (true = activo)
idRol        - FK a p_Roles
rolGlobal    - string legacy
```

### p_Tareas
```
idTarea      - PK, bigint
idProyecto   - FK a p_Proyectos
titulo       - Título de la tarea
estado       - Pendiente, EnCurso, Bloqueada, Revision, Hecha, Descartada
prioridad    - Alta, Media, Baja
esfuerzo     - S, M, L
fechaObjetivo - date
progreso     - 0-100
```

### p_Checkins
```
idCheckin        - PK, bigint
fecha            - date (único por usuario)
idUsuario        - FK
entregableTexto  - Qué entregaste hoy
estadoAnimo      - Tope, Bien, Bajo
```

### p_Bloqueos
```
idBloqueo        - PK, bigint
idTarea          - FK
idOrigenUsuario  - Quien reporta el bloqueo
idDestinoUsuario - A quién bloquea (puede ser null)
destinoTexto     - Texto si es externo (ej: "TI")
motivo           - Razón del bloqueo
estado           - Activo, Resuelto
```

### p_FocoDiario (Mi Agenda)
```
idFoco           - PK
fecha            - date
idUsuario        - FK
idTarea          - FK
esEstrategico    - boolean (★ objetivo vs tarea)
diasArrastre     - Días que lleva sin completar
completadoEnFecha - date o null
```

---

## 🔗 RELACIONES CLAVE

```
Usuario
├── tiene 1 Rol
├── tiene muchos UsuarioOrganizacion (pertenece a nodos)
├── tiene muchas TareaAsignado (tareas asignadas)
├── tiene muchos Checkins
├── tiene muchas Notas
└── tiene muchos FocoDiario

Tarea
├── pertenece a 1 Proyecto
├── tiene muchos TareaAsignado
├── tiene muchos TareaAvance
├── tiene muchos Bloqueo
└── tiene muchos FocoDiario

OrganizacionNodo
├── tiene 1 padre (jerárquico)
├── tiene muchos hijos
└── tiene muchos UsuarioOrganizacion
```

---

## 📝 ESTADOS DE TAREA
1. **Pendiente** - Nueva, sin iniciar
2. **EnCurso** - En progreso
3. **Bloqueada** - Esperando algo/alguien externo
4. **Revision** - Terminada, esperando aprobación
5. **Hecha** - Completada
6. **Descartada** - Cancelada

---

## 💡 CONSULTAS ÚTILES

### Usuarios activos
```sql
SELECT * FROM "p_Usuarios" WHERE activo = true;
```

### Tareas de un usuario
```sql
SELECT t.* FROM "p_Tareas" t
JOIN "p_TareaAsignados" ta ON ta."idTarea" = t."idTarea"
WHERE ta."idUsuario" = 899;
```

### Bloqueos activos
```sql
SELECT * FROM "p_Bloqueos" WHERE estado = 'Activo';
```

### Estructura jerárquica
```sql
SELECT n.*, p.nombre as padre
FROM "p_OrganizacionNodos" n
LEFT JOIN "p_OrganizacionNodos" p ON n."idPadre" = p."idNodo"
WHERE n.activo = true;
```

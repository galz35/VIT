# 🔌 ENDPOINTS API

**Base URL:** `http://localhost:3000/api`  
**Autenticación:** JWT Bearer Token

---

## 📋 Lista Completa de Endpoints

### 🔐 AUTH (Autenticación)

| Método | Ruta | Descripción | Auth |
|--------|------|-------------|------|
| POST | `/auth/login` | Iniciar sesión | ❌ |
| POST | `/auth/refresh` | Renovar token | ❌ |

---

### ✅ CLARITY (Core de Productividad)

#### Configuración
| Método | Ruta | Descripción | Auth |
|--------|------|-------------|------|
| GET | `/config` | Obtener config usuario | ✅ |
| POST | `/config` | Guardar config | ✅ |

#### Mi Día
| Método | Ruta | Descripción | Auth |
|--------|------|-------------|------|
| GET | `/mi-dia?fecha=YYYY-MM-DD` | Snapshot del día | ✅ |
| POST | `/checkins` | Registrar check-in | ✅ |

#### Tareas
| Método | Ruta | Descripción | Auth |
|--------|------|-------------|------|
| GET | `/tareas/mias` | Mis tareas | ✅ |
| POST | `/tareas/rapida` | Crear tarea rápida | ✅ |
| PATCH | `/tareas/:id` | Actualizar tarea | ✅ |
| POST | `/tareas/:id/revalidar` | Revalidar arrastrada | ✅ |
| PATCH | `/tareas/:id/orden` | Cambiar orden | ✅ |
| PATCH | `/tareas/reordenar` | Reordenar múltiples | ✅ |
| POST | `/tareas/:id/avance` | Registrar avance | ✅ |
| POST | `/tareas/:id/asignar` | Asignar responsable | ✅ |

#### Bloqueos
| Método | Ruta | Descripción | Auth |
|--------|------|-------------|------|
| POST | `/bloqueos` | Crear bloqueo | ✅ |
| PATCH | `/bloqueos/:id/resolver` | Resolver bloqueo | ✅ |

#### Foco Diario
| Método | Ruta | Descripción | Auth |
|--------|------|-------------|------|
| GET | `/foco?fecha=YYYY-MM-DD` | Foco del día | ✅ |
| POST | `/foco` | Agregar al foco | ✅ |
| PATCH | `/foco/:id` | Actualizar foco | ✅ |
| DELETE | `/foco/:id` | Quitar del foco | ✅ |
| POST | `/foco/reordenar` | Reordenar focos | ✅ |
| GET | `/foco/estadisticas` | Stats del foco | ✅ |

#### Equipo (Jefatura)
| Método | Ruta | Descripción | Auth |
|--------|------|-------------|------|
| GET | `/equipo/hoy?fecha=` | Dashboard equipo | ✅ |
| GET | `/equipo/bloqueos?fecha=` | Bloqueos equipo | ✅ |
| GET | `/equipo/backlog?fecha=` | Backlog equipo | ✅ |
| GET | `/equipo/miembro/:id` | Info de miembro | ✅ |
| GET | `/equipo/miembro/:id/tareas` | Tareas de miembro | ✅ |

#### Gerencia
| Método | Ruta | Descripción | Auth |
|--------|------|-------------|------|
| GET | `/gerencia/resumen?fecha=` | Dashboard gerencia | ✅ |

#### Reportes
| Método | Ruta | Descripción | Auth |
|--------|------|-------------|------|
| GET | `/reportes/productividad` | Productividad | ✅ |
| GET | `/reportes/bloqueos-trend` | Tendencia bloqueos | ✅ |
| GET | `/reportes/equipo-performance` | Performance | ✅ |

#### Proyectos
| Método | Ruta | Descripción | Auth |
|--------|------|-------------|------|
| GET | `/proyectos` | Listar proyectos | ✅ |
| GET | `/proyectos/:id` | Detalle proyecto | ✅ |
| POST | `/proyectos` | Crear proyecto | ✅ |
| PATCH | `/proyectos/:id` | Actualizar | ✅ |
| DELETE | `/proyectos/:id` | Archivar | ✅ |
| GET | `/proyectos/:id/tareas` | Tareas del proyecto | ✅ |

---

### 👥 ACCESO (Empleados y Permisos)

#### Empleados
| Método | Ruta | Descripción | Auth |
|--------|------|-------------|------|
| GET | `/acceso/empleados` | Listar todos | ✅ |
| GET | `/acceso/empleado/:carnet` | Buscar por carnet | ✅ |
| GET | `/acceso/empleado/email/:correo` | Buscar por email | ✅ |
| GET | `/acceso/empleados/buscar?q=` | Búsqueda texto | ✅ |

#### Permisos
| Método | Ruta | Descripción | Auth |
|--------|------|-------------|------|
| GET | `/acceso/permiso-area` | Listar permisos área | ✅ |
| POST | `/acceso/permiso-area` | Crear permiso área | ✅ |
| DELETE | `/acceso/permiso-area/:id` | Eliminar permiso | ✅ |
| GET | `/acceso/permiso-empleado` | Listar permisos emp | ✅ |
| POST | `/acceso/permiso-empleado` | Crear permiso emp | ✅ |
| DELETE | `/acceso/permiso-empleado/:id` | Eliminar permiso | ✅ |
| GET | `/acceso/delegacion` | Listar delegaciones | ✅ |
| POST | `/acceso/delegacion` | Crear delegación | ✅ |
| DELETE | `/acceso/delegacion/:id` | Eliminar delegación | ✅ |

#### Importación
| Método | Ruta | Descripción | Auth |
|--------|------|-------------|------|
| GET | `/acceso/importar/estadisticas` | Stats | ✅ |
| GET | `/acceso/importar/plantilla` | Plantilla columnas | ✅ |
| POST | `/acceso/importar/empleados` | Importar JSON | ✅ |
| POST | `/acceso/importar/empleados/excel` | Importar Excel | ✅ |
| POST | `/acceso/importar/organizacion` | Importar org | ✅ |
| GET | `/acceso/importar/empleados/exportar` | Exportar | ✅ |
| POST | `/acceso/importar/empleados/preview` | Preview Excel | ✅ |

---

### 👁️ VISIBILIDAD

| Método | Ruta | Descripción | Auth |
|--------|------|-------------|------|
| GET | `/visibilidad/:carnet` | Carnets visibles | ✅ |
| GET | `/visibilidad/:carnet/empleados` | Empleados visibles | ✅ |
| GET | `/visibilidad/:carnet/puede-ver/:objetivo` | Verificar visibilidad | ✅ |
| GET | `/visibilidad/:carnet/actores` | Actores efectivos | ✅ |
| GET | `/visibilidad/:carnet/quien-puede-verme` | Quién me ve | ✅ |
| GET | `/visibilidad/organizacion/:idorg/subarbol` | Subárbol org | ✅ |

---

### 📋 PLANNING

| Método | Ruta | Descripción | Auth |
|--------|------|-------------|------|
| POST | `/planning/check-permission` | Check permiso | ✅ |
| POST | `/planning/request-change` | Solicitar cambio | ✅ |
| GET | `/planning/pending` | Pendientes | ✅ |
| POST | `/planning/resolve` | Resolver solicitud | ✅ |
| POST | `/planning/update-operative` | Actualizar operativo | ✅ |

---

### ⚙️ ADMIN (Solo rol Admin)

| Método | Ruta | Descripción | Auth | Rol |
|--------|------|-------------|------|-----|
| GET | `/admin/usuarios` | Listar usuarios | ✅ | Admin |
| PATCH | `/admin/usuarios/:id/rol` | Cambiar rol | ✅ | Admin |
| GET | `/admin/roles` | Listar roles | ✅ | Admin |
| POST | `/admin/roles` | Crear rol | ✅ | Admin |
| PATCH | `/admin/roles/:id` | Actualizar rol | ✅ | Admin |
| DELETE | `/admin/roles/:id` | Eliminar rol | ✅ | Admin |
| GET | `/admin/organigrama` | Ver organigrama | ✅ | Admin |
| POST | `/admin/nodos` | Crear nodo | ✅ | Admin |
| GET | `/admin/logs` | Ver logs | ✅ | Admin |
| GET | `/admin/audit-logs` | Ver auditoría | ✅ | Admin |

---

## 📦 Formato de Respuesta

Todos los endpoints retornan:

```json
{
  "statusCode": 200,
  "message": "OK",
  "data": { ... }  // El contenido real
}
```

En caso de error:
```json
{
  "statusCode": 400,
  "message": "Descripción del error",
  "error": "Bad Request"
}
```

---

*Total: 70+ endpoints*  
*Última actualización: 14 de Enero 2026*

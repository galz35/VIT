# 📋 Sistema de Historial de Asignaciones de Tareas

> **Fecha de implementación:** 2026-01-14  
> **Versión:** 1.0  
> **Estado:** ✅ Implementado

## 📊 Resumen

Se ha implementado un sistema completo de trazabilidad para asignaciones de tareas que permite:

1. **Tareas sin asignar** - Una tarea puede existir sin estar asignada a nadie
2. **Log completo** - Cada cambio de asignación se registra con fecha, quién lo hizo, y motivo
3. **Historial laboral** - Ver todo lo que ha trabajado un empleado a lo largo del tiempo
4. **Reasignación masiva** - Transferir todas las tareas de un empleado a otro (offboarding)

---

## 🗄️ Nueva Entidad: `p_TareaAsignacionLog`

```sql
CREATE TABLE p_TareaAsignacionLog (
    id SERIAL PRIMARY KEY,
    
    -- Tarea
    idTarea BIGINT NOT NULL REFERENCES p_Tareas(idTarea),
    
    -- Asignado (NULL = sin asignar)
    idUsuarioAsignado INT REFERENCES p_Usuarios(idUsuario),
    
    -- Quién hizo el cambio
    idUsuarioAsignador INT NOT NULL REFERENCES p_Usuarios(idUsuario),
    
    -- Periodo
    fecha_inicio TIMESTAMP DEFAULT NOW(),
    fecha_fin TIMESTAMP NULL,  -- NULL = asignación activa
    activo BOOLEAN DEFAULT TRUE,
    
    -- Tipo y motivo
    tipoAsignacion VARCHAR(50) DEFAULT 'RESPONSABLE',
    -- Valores: RESPONSABLE, COLABORADOR, REVISOR
    
    motivoCambio VARCHAR(50) DEFAULT 'ASIGNACION_INICIAL',
    -- Valores: ASIGNACION_INICIAL, REASIGNACION, TRANSFERENCIA_AREA, 
    --          BAJA_EMPLEADO, SOLICITUD_EMPLEADO, CARGA_TRABAJO, DESASIGNACION
    
    notas TEXT NULL,
    ip_origen VARCHAR(50) NULL
);

-- Índices para búsquedas rápidas
CREATE INDEX idx_asignacion_tarea ON p_TareaAsignacionLog(idTarea, fecha_inicio);
CREATE INDEX idx_asignacion_usuario ON p_TareaAsignacionLog(idUsuarioAsignado, activo);
```

---

## 🔌 Nuevos Endpoints API

### Asignación de Tareas

| Método | Endpoint | Descripción |
|--------|----------|-------------|
| **POST** | `/api/asignaciones` | Asigna tarea a usuario (o deja sin asignar) |
| **POST** | `/api/asignaciones/reasignar` | Reasigna tarea a otro usuario |
| **POST** | `/api/asignaciones/reasignar-masivo` | Reasigna TODAS las tareas de un usuario |

### Consultas de Historial

| Método | Endpoint | Descripción |
|--------|----------|-------------|
| **GET** | `/api/asignaciones/tarea/:idTarea/historial` | Historial completo de una tarea |
| **GET** | `/api/asignaciones/tarea/:idTarea/activa` | Asignación actual de una tarea |
| **GET** | `/api/asignaciones/usuario/:idUsuario/historial` | Historial laboral de un usuario |
| **GET** | `/api/asignaciones/usuario/:idUsuario/estadisticas` | Estadísticas de asignaciones |
| **GET** | `/api/asignaciones/mi-historial` | Mi historial (usuario autenticado) |
| **GET** | `/api/asignaciones/mis-estadisticas` | Mis estadísticas |
| **GET** | `/api/asignaciones/sin-asignar` | Tareas pendientes de asignación |

---

## 📝 Ejemplos de Uso

### 1. Asignar tarea a un usuario

```http
POST /api/asignaciones
Authorization: Bearer <token>
Content-Type: application/json

{
  "idTarea": 123,
  "idUsuarioAsignado": 456,
  "tipoAsignacion": "RESPONSABLE",
  "notas": "Asignado durante reunión de planificación"
}
```

### 2. Dejar tarea sin asignar

```http
POST /api/asignaciones
Authorization: Bearer <token>
Content-Type: application/json

{
  "idTarea": 123,
  "idUsuarioAsignado": null,
  "motivoCambio": "DESASIGNACION",
  "notas": "Esperando definición de nuevo responsable"
}
```

### 3. Reasignar por transferencia de área

```http
POST /api/asignaciones/reasignar
Authorization: Bearer <token>
Content-Type: application/json

{
  "idTarea": 123,
  "idNuevoUsuario": 789,
  "motivoCambio": "TRANSFERENCIA_AREA",
  "notas": "Juan pasó a otra área, María asume"
}
```

### 4. Offboarding: Reasignar TODAS las tareas

```http
POST /api/asignaciones/reasignar-masivo
Authorization: Bearer <token>
Content-Type: application/json

{
  "idUsuarioOrigen": 456,
  "idUsuarioDestino": 789,
  "motivoCambio": "BAJA_EMPLEADO",
  "notas": "Juan renuncia, María asume todas sus tareas"
}
```

**Respuesta:**
```json
{
  "tareasReasignadas": 8,
  "tareasAfectadas": [101, 102, 103, 104, 105, 106, 107, 108]
}
```

### 5. Ver historial de una tarea

```http
GET /api/asignaciones/tarea/123/historial
Authorization: Bearer <token>
```

**Respuesta:**
```json
[
  {
    "id": 45,
    "idTarea": 123,
    "tituloTarea": "Revisar reportes Q4",
    "usuarioAsignado": {
      "id": 789,
      "nombre": "maria.garcia",
      "correo": "maria.garcia@claro.com.ni"
    },
    "usuarioAsignador": {
      "id": 100,
      "nombre": "jefe.soporte",
      "correo": "jefe.soporte@claro.com.ni"
    },
    "fechaInicio": "2026-01-14T10:30:00Z",
    "fechaFin": null,
    "duracionDias": 0,
    "tipoAsignacion": "RESPONSABLE",
    "motivoCambio": "BAJA_EMPLEADO",
    "notas": "Juan renunció, María asume",
    "activo": true
  },
  {
    "id": 32,
    "idTarea": 123,
    "tituloTarea": "Revisar reportes Q4",
    "usuarioAsignado": {
      "id": 456,
      "nombre": "juan.perez",
      "correo": "juan.perez@claro.com.ni"
    },
    "usuarioAsignador": {
      "id": 100,
      "nombre": "jefe.soporte",
      "correo": "jefe.soporte@claro.com.ni"
    },
    "fechaInicio": "2026-01-01T08:00:00Z",
    "fechaFin": "2026-01-14T10:30:00Z",
    "duracionDias": 13,
    "tipoAsignacion": "RESPONSABLE",
    "motivoCambio": "ASIGNACION_INICIAL",
    "notas": null,
    "activo": false
  }
]
```

---

## 🔄 Flujos de Trabajo

### Flujo 1: Empleado Renuncia

```
┌─────────────────────────────────────────────────────────────────┐
│           PROCESO DE OFFBOARDING                                │
├─────────────────────────────────────────────────────────────────┤
│                                                                  │
│  1️⃣ RRHH notifica baja de Juan (EMP456)                         │
│        ↓                                                         │
│  2️⃣ Jefe consulta:                                              │
│     GET /api/asignaciones/usuario/456/historial?soloActivas=true │
│     → Ve que Juan tiene 8 tareas activas                        │
│        ↓                                                         │
│  3️⃣ Jefe decide:                                                │
│     a) Reasignar todas a María:                                  │
│        POST /api/asignaciones/reasignar-masivo                   │
│        { idUsuarioOrigen: 456, idUsuarioDestino: 789 }           │
│                                                                  │
│     b) O reasignar individualmente:                              │
│        - Tarea 101 → María                                       │
│        - Tarea 102 → Pedro                                       │
│        - Tarea 103 → Sin asignar (pendiente)                     │
│        ↓                                                         │
│  4️⃣ RRHH desactiva usuario en p_Usuarios y p_empleados          │
│        ↓                                                         │
│  5️⃣ Historial de Juan se MANTIENE para auditoría                │
│                                                                  │
└─────────────────────────────────────────────────────────────────┘
```

### Flujo 2: Tarea Pasa por Varios Responsables

```
Día 1:  Jefe crea tarea "Análisis de mercado" → Sin asignar
        POST /api/asignaciones { idTarea: 200, idUsuarioAsignado: null }

Día 3:  Jefe asigna a Carlos
        POST /api/asignaciones { idTarea: 200, idUsuarioAsignado: 50 }

Día 10: Carlos pide reasignación por sobrecarga
        POST /api/asignaciones/reasignar {
          idTarea: 200, 
          idNuevoUsuario: 60,
          motivoCambio: "CARGA_TRABAJO"
        }

Día 15: Ana completa la tarea
        → Historial muestra: SIN ASIGNAR → CARLOS (7 días) → ANA (5 días)
```

---

## 📈 Beneficios

| Beneficio | Descripción |
|-----------|-------------|
| **Trazabilidad** | Saber exactamente quién trabajó en qué y cuándo |
| **Auditoría** | Registro inmutable de cambios |
| **Métricas** | Calcular tiempo promedio de tareas por persona |
| **Offboarding seguro** | Transferir trabajo sin perder nada |
| **Visibilidad de carga** | Ver cuántas tareas tiene cada persona |
| **Tareas huérfanas** | Identificar tareas sin responsable |

---

## 📁 Archivos Creados/Modificados

| Archivo | Tipo | Descripción |
|---------|------|-------------|
| `planning/entities/tarea-asignacion-log.entity.ts` | Nuevo | Entidad de historial |
| `planning/dto/asignacion.dto.ts` | Nuevo | DTOs con validación |
| `planning/services/asignacion.service.ts` | Nuevo | Lógica de negocio |
| `planning/controllers/asignacion.controller.ts` | Nuevo | Endpoints REST |
| `planning/planning.module.ts` | Modificado | Registro de componentes |

---

## ⚠️ Pendiente

Para que la tabla se cree en la base de datos, ejecutar:

```bash
cd backend
npm run migration:generate -- -n CreateTareaAsignacionLog
npm run migration:run
```

O con TypeORM synchronize (solo desarrollo):
```typescript
// En ormconfig: synchronize: true
```

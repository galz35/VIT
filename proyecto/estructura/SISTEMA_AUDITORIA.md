# Sistema de Auditoría y Logs - Momentus

> **Versión:** 2.0  
> **Fecha:** 2026-01-15  
> **Estado:** ✅ Implementado

---

## 📋 Resumen

Se implementó un sistema de auditoría robusto que registra:

1. **Logs de Auditoría** - Cada acción del usuario
2. **Logs del Sistema** - Errores, warnings e info técnica
3. **Centro de Monitoreo** - UI mejorada para administradores

---

## 🗂️ Arquitectura

### Backend

```
backend/src/common/
├── audit.service.ts       # Servicio centralizado de auditoría ✨ NUEVO
├── audit.module.ts        # Módulo global (inyectable en cualquier parte) ✨ NUEVO
├── entities/
│   ├── audit-log.entity.ts    # Tabla p_Auditoria
│   └── log-sistema.entity.ts  # Tabla p_Logs
└── interceptors/
    └── audit.interceptor.ts   # Auto-captura errores ✨ NUEVO
```

### Frontend

```
clarity-pwa/src/pages/Admin/
└── LogsPage.tsx           # Centro de Monitoreo rediseñado ✨ MEJORADO
```

---

## 🎯 Tipos de Acciones Registradas

### AccionAudit (Enum)

```typescript
// Tareas
TAREA_CREADA       // Usuario crea una tarea
TAREA_ACTUALIZADA  // Usuario modifica cualquier campo
TAREA_ELIMINADA    // Usuario elimina tarea
TAREA_COMPLETADA   // Usuario marca como completada
TAREA_ASIGNADA     // Se asigna por primera vez
TAREA_REASIGNADA   // Se cambia el responsable

// Proyectos
PROYECTO_CREADO
PROYECTO_ACTUALIZADO
PROYECTO_ARCHIVADO

// Bloqueos
BLOQUEO_CREADO
BLOQUEO_RESUELTO

// Check-ins
CHECKIN_CREADO
CHECKIN_ACTUALIZADO

// Usuarios
USUARIO_LOGIN
USUARIO_LOGOUT
USUARIO_CREADO
USUARIO_ACTUALIZADO
USUARIO_DESACTIVADO

// Permisos
PERMISO_OTORGADO
PERMISO_REVOCADO
DELEGACION_CREADA
DELEGACION_REVOCADA

// Sistema
ERROR_SISTEMA
IMPORTACION_DATOS
```

---

## 🔧 Uso del AuditService

### Inyección

```typescript
import { AuditService, AccionAudit, RecursoAudit } from '../common/audit.service';

@Injectable()
export class MiServicio {
  constructor(private auditService: AuditService) {}
}
```

### Registrar Acción de Usuario

```typescript
await this.auditService.log({
  idUsuario: user.idUsuario,
  accion: AccionAudit.TAREA_CREADA,
  recurso: RecursoAudit.TAREA,
  recursoId: tarea.idTarea.toString(),
  detalles: { titulo: tarea.titulo, idProyecto: tarea.idProyecto },
  ip: request.ip,
});
```

### Registrar Error

```typescript
try {
  // operación
} catch (error) {
  await this.auditService.error(
    'MiServicio.metodo',
    `Error procesando X: ${error.message}`,
    error,
    user?.idUsuario
  );
  throw error;
}
```

### Registrar Warning

```typescript
await this.auditService.warn(
  'MiServicio.metodo',
  'Operación tardó más de 5 segundos',
  user?.idUsuario
);
```

### Registrar Info

```typescript
await this.auditService.info(
  'MiServicio.metodo',
  'Importación completada: 150 registros',
  user?.idUsuario
);
```

---

## 📊 Consultas Disponibles

### Listar Logs de Auditoría

```typescript
const result = await this.auditService.listarAudit(1, 50, {
  idUsuario: 123,
  accion: 'TAREA_CREADA',
  recurso: 'Tarea',
  fechaDesde: new Date('2026-01-01'),
  fechaHasta: new Date('2026-01-31'),
});
// Retorna: { items, total, page, totalPages }
```

### Listar Logs del Sistema

```typescript
const result = await this.auditService.listarLogs(1, 100, {
  nivel: 'Error',
  origen: 'TasksService',
});
// Retorna: { items, total, page, totalPages, estadisticas: { errors, warns, infos } }
```

### Historial de una Entidad

```typescript
const historial = await this.auditService.getHistorialEntidad('Tarea', '456');
// Todas las acciones sobre la tarea 456
```

### Actividad de un Usuario

```typescript
const actividad = await this.auditService.getActividadUsuario(123, 7);
// Últimos 7 días de actividad del usuario 123
```

### Resumen para Dashboard

```typescript
const resumen = await this.auditService.getResumenActividad(7);
// { totalAcciones, accionesPorTipo, accionesPorUsuario, erroresTotales }
```

---

## 🖥️ Centro de Monitoreo (UI)

### Características

- **3 tabs**: Actividad, Sistema, Errores
- **Búsqueda** en tiempo real
- **Estadísticas** de últimas 24h
- **Detalles expandibles** para cada log
- **Diseño responsive** y dark mode

### Acceso

```
/app/admin/logs
```

Solo accesible para usuarios con rol **Admin**.

---

## 🗄️ Tablas de Base de Datos

### p_Auditoria

| Campo     | Tipo     | Descripción                    |
|-----------|----------|--------------------------------|
| idAudit   | int PK   | ID auto-incremento             |
| idUsuario | int FK   | Usuario que ejecutó la acción  |
| accion    | varchar  | Tipo de acción (AccionAudit)   |
| recurso   | varchar  | Tipo de recurso (RecursoAudit) |
| recursoId | varchar  | ID del recurso afectado        |
| detalles  | text     | JSON con información adicional |
| ip        | varchar  | IP del cliente                 |
| fecha     | datetime | Timestamp automático           |

### p_Logs

| Campo     | Tipo     | Descripción                    |
|-----------|----------|--------------------------------|
| idLog     | int PK   | ID auto-incremento             |
| nivel     | varchar  | 'Error' | 'Warn' | 'Info'     |
| origen    | varchar  | Servicio.método que genera log |
| mensaje   | text     | Descripción del evento         |
| stack     | text     | Stack trace (solo errores)     |
| idUsuario | int      | Usuario relacionado (opcional) |
| fecha     | datetime | Timestamp automático           |

---

## ✅ Verificación

Backend compila: ✅  
Frontend compila: ✅  
Módulo integrado en app.module.ts: ✅  

---

## 🔜 Próximos Pasos

1. [ ] Integrar AuditService en todos los servicios existentes
2. [ ] Agregar endpoint REST para historial de tareas
3. [ ] Configurar retención de logs (auto-borrar > 90 días)
4. [ ] Agregar gráficos de tendencias en el Centro de Monitoreo

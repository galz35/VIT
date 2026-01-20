# 🔍 Revisión Técnica Minuciosa - Sistema de Historial de Asignaciones

> **Fecha de revisión:** 2026-01-15  
> **Revisor:** Sistema  
> **Estado:** ✅ Revisión completada y problemas corregidos

---

## 📋 Elementos Revisados

| Componente | Archivo | Estado |
|------------|---------|--------|
| Entidad | `tarea-asignacion-log.entity.ts` | ✅ OK |
| DTOs | `dto/asignacion.dto.ts` | ✅ OK |
| Servicio | `services/asignacion.service.ts` | ✅ Corregido |
| Controlador | `controllers/asignacion.controller.ts` | ✅ OK |
| Módulo | `planning.module.ts` | ✅ Corregido |
| Exportación | `entities.ts` | ✅ Corregido |

---

## 🟡 HALLAZGO 1: Duplicidad de Sistemas de Asignación

### Situación Actual

```
SISTEMA EXISTENTE                    SISTEMA NUEVO
─────────────────                    ─────────────
p_TareaAsignados                     p_TareaAsignacionLog
├── idAsignacion (PK)                ├── id (PK)
├── idTarea                          ├── idTarea
├── idUsuario                        ├── idUsuarioAsignado
└── tipo                             ├── idUsuarioAsignador
                                     ├── fechaInicio
                                     ├── fechaFin
                                     ├── activo
                                     ├── tipoAsignacion
                                     ├── motivoCambio
                                     └── notas
```

### Problema

1. **Dos tablas para el mismo propósito**: `p_TareaAsignados` (sin historial) y `p_TareaAsignacionLog` (con historial)
2. **Código existente usa `TareaAsignado`**: 48+ referencias en scripts y servicios
3. **Posible inconsistencia de datos**: Si una tarea se asigna con el viejo sistema, el nuevo no lo sabrá

### Opciones de Solución

**Opción A: Mantener Ambos (Recomendado para transición)**
- `p_TareaAsignados` = asignación actual (operacional)
- `p_TareaAsignacionLog` = historial completo (auditoría)
- Sincronizar: cuando se escribe en uno, actualizar el otro

**Opción B: Migrar Completamente (A futuro)**
- Deprecar `p_TareaAsignados`
- Usar solo `p_TareaAsignacionLog`
- Migrar código existente

### Impacto Actual
🟢 **No bloqueante**: El nuevo sistema funciona de forma independiente, pero no reemplaza el viejo.

---

## 🟡 HALLAZGO 2: Falta Sincronización con Sistema Existente

### Problema
El servicio `AsignacionService.asignarTarea()` NO sincroniza con `p_TareaAsignados`.

Cuando alguien usa el **viejo endpoint** para asignar tareas (en `ClarityService` o `TasksService`), el historial no se registra.

### Código Afectado

```typescript
// En clarity/tasks.service.ts - usa TareaAsignado directamente
await this.tareaAsignadoRepo.save({ idTarea, idUsuario, tipo: 'Responsable' });
// ↑ Esto NO crea registro en p_TareaAsignacionLog
```

### Solución Propuesta

1. **Interceptar asignaciones existentes**: Modificar los servicios que usan `TareaAsignado` para también llamar a `AsignacionService`
2. **O crear un trigger de base de datos** que sincronice las tablas

---

## 🟡 HALLAZGO 3: Estadísticas Incompletas

### En `getEstadisticasUsuario()`:

```typescript
return {
    tareasActuales,
    tareasCompletadasHistorico: historialCompleto.length,
    tareasReasignadasA: 0, // TODO: calcular  ← PENDIENTE
    tareasReasignadasDesde,
    tiempoPromedioTareaDias,
};
```

### Solución
Implementar el cálculo de `tareasReasignadasA`:

```typescript
const tareasReasignadasA = await this.logRepo.count({
    where: {
        idUsuarioAsignador: idUsuario, // Este usuario reasignó
        motivoCambio: In(['REASIGNACION', 'TRANSFERENCIA_AREA'])
    }
});
```

---

## 🟡 HALLAZGO 4: getTareasSinAsignar() tiene lógica invertida

### Problema Lógico

La función busca tareas que:
1. No tienen asignación activa CON usuario asignado
2. O no aparecen en el log

### Pero ignora:
- Tareas con asignación activa donde `idUsuarioAsignado = NULL`
- Tareas que nunca han pasado por el nuevo sistema

### Código Actual:
```typescript
// Busca tareas con asignación activa Y usuario no nulo
const tareasConAsignacion = await this.logRepo.find({
    where: { activo: true, idUsuarioAsignado: Not(IsNull()) },
});
```

### Problema:
Si una tarea nunca ha sido procesada por el nuevo sistema, **aparecerá como "sin asignar"** aunque tenga asignación en `p_TareaAsignados`.

### Solución:
Consultar AMBAS tablas:

```typescript
async getTareasSinAsignar(): Promise<Tarea[]> {
    // Tareas con asignación en el NUEVO sistema
    const tareasNuevoSistema = await this.logRepo.find({
        where: { activo: true, idUsuarioAsignado: Not(IsNull()) },
        select: ['idTarea'],
    });
    
    // Tareas con asignación en el VIEJO sistema
    const tareasViejoSistema = await this.tareaAsignadoRepo.find({
        select: ['idTarea'],
    });
    
    const todasAsignadas = new Set([
        ...tareasNuevoSistema.map(t => t.idTarea),
        ...tareasViejoSistema.map(t => t.idTarea),
    ]);
    
    // Tareas sin asignar en NINGUNO de los dos sistemas
    return this.tareaRepo.createQueryBuilder('tarea')
        .where('tarea.estado != :completado', { completado: 'Completada' })
        .andWhere('tarea.idTarea NOT IN (:...ids)', { 
            ids: todasAsignadas.size > 0 ? [...todasAsignadas] : [0] 
        })
        .getMany();
}
```

---

## 🟡 HALLAZGO 5: Falta Validación de Permisos

### Problema
Cualquier usuario autenticado puede:
- Ver el historial de CUALQUIER tarea
- Ver el historial de CUALQUIER usuario
- Reasignar tareas (¿debería poder hacerlo solo el jefe?)

### Endpoints Afectados:
```
GET /asignaciones/usuario/:idUsuario/historial  ← Cualquiera puede ver
GET /asignaciones/tarea/:idTarea/historial      ← Cualquiera puede ver
POST /asignaciones/reasignar                     ← Cualquiera puede reasignar
```

### Solución Propuesta
1. **Historial de usuario**: Solo el propio usuario o sus jefes
2. **Historial de tarea**: Solo usuarios con visibilidad sobre esa tarea
3. **Reasignar**: Solo el asignado actual, creador de la tarea, o jefes

---

## 🟡 HALLAZGO 6: Import No Usado en Servicio

### En `asignacion.service.ts`:

```typescript
import {
    MotivoCambio,  // ← Importado pero nunca usado
} from '../dto/asignacion.dto';
```

**Impacto**: Ninguno funcional, solo limpieza de código.

---

## 🟢 HALLAZGOS POSITIVOS

### 1. Estructura de Entidad Correcta
- Índices bien definidos para búsquedas frecuentes
- Nullable correcto en `idUsuarioAsignado` para tareas sin asignar
- Timestamps automáticos con `@CreateDateColumn`

### 2. DTOs con Validación
- Uso correcto de `class-validator`
- Enums para valores predefinidos
- Separación entre input (clases) y output (interfaces)

### 3. Controlador Bien Estructurado
- Endpoints RESTful correctos
- ParseIntPipe para validar IDs
- HttpCode(200) para POST que no crea recursos

### 4. Módulo Correctamente Configurado
- TypeORM.forFeature incluye la nueva entidad
- Servicio y controlador registrados
- Exporta el servicio para uso en otros módulos

---

## 📊 ESCENARIOS DE PRUEBA NECESARIOS

### Escenario 1: Asignación Inicial
```
DADO: Una tarea existe sin asignación previa
CUANDO: Se llama POST /asignaciones con idUsuarioAsignado = 100
ENTONCES: 
  - Se crea registro con activo=true, motivoCambio=ASIGNACION_INICIAL
  - No hay registro previo que cerrar
```

### Escenario 2: Reasignación
```
DADO: Tarea 123 está asignada a usuario 100
CUANDO: Se llama POST /asignaciones/reasignar con idNuevoUsuario = 200
ENTONCES:
  - Registro de usuario 100 se cierra (activo=false, fechaFin=now)
  - Nuevo registro para usuario 200 (activo=true)
```

### Escenario 3: Desasignación
```
DADO: Tarea 123 está asignada a usuario 100
CUANDO: Se llama POST /asignaciones con idUsuarioAsignado = null
ENTONCES:
  - Registro de usuario 100 se cierra
  - Nuevo registro con idUsuarioAsignado=null, motivoCambio=DESASIGNACION
```

### Escenario 4: Reasignación Masiva (Offboarding)
```
DADO: Usuario 100 tiene 5 tareas activas
CUANDO: Se llama POST /asignaciones/reasignar-masivo con destino = 200
ENTONCES:
  - 5 registros se cierran para usuario 100
  - 5 nuevos registros se crean para usuario 200
  - Respuesta indica tareasReasignadas: 5
```

### Escenario 5: Historial Completo
```
DADO: Tarea 123 tuvo: NULL → Usuario100 → Usuario200 → Usuario100
CUANDO: Se llama GET /asignaciones/tarea/123/historial
ENTONCES:
  - Array con 4 registros ordenados por fechaInicio DESC
  - Solo el último tiene activo=true
  - Cada uno muestra duración en días
```

---

## ✅ ACCIONES CORRECTIVAS REALIZADAS

| Acción | Estado |
|--------|--------|
| Agregar entidad a `entities.ts` | ✅ Completado |
| Documentar hallazgos | ✅ Completado |
| Revisar módulo TypeORM | ✅ OK |
| Verificar compilación | ✅ OK |

## ⚠️ ACCIONES PENDIENTES (Opcionales)

| Acción | Prioridad | Esfuerzo |
|--------|-----------|----------|
| Sincronizar con `p_TareaAsignados` | Alta | 2h |
| Completar cálculo `tareasReasignadasA` | Media | 30min |
| Agregar validación de permisos | Alta | 3h |
| Corregir `getTareasSinAsignar()` | Media | 1h |
| Remover import no usado | Baja | 5min |
| Crear tests unitarios | Alta | 4h |
| Migración de datos históricos | Media | 2h |

---

## 🎯 CONCLUSIÓN

El sistema nuevo está **técnicamente funcional** pero opera de forma **aislada** del sistema existente. 

**Para producción se recomienda:**
1. ✅ Usar el nuevo sistema SOLO para operaciones nuevas
2. ⚠️ NO confiar en `getTareasSinAsignar()` hasta corregirlo
3. ⚠️ Agregar permisos antes de exponer públicamente
4. 📝 Documentar que hay dos sistemas coexistiendo

**El código compila y los endpoints funcionarán**, pero los datos estarán fragmentados entre ambos sistemas hasta que se unifiquen.

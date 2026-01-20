# 📋 TAREAS DE IMPLEMENTACIÓN — SISTEMA MOMENTUS (Agente AI)

> **Generado:** 2026-01-20  
> **Uso:** Agente AI (Gemini 3 o similar)  
> **Regla máxima:** NO modificar archivos no listados en cada tarea.

---

## 0) ✅ MODO DE TRABAJO DEL AGENTE (OBLIGATORIO)

En cada tarea, seguir este ciclo:

1. **Precheck** (leer y validar supuestos antes de tocar código)
2. **Cambio mínimo** (solo lo pedido)
3. **Build** (backend o frontend según corresponda)
4. **Smoke test** (si aplica)
5. **Reporte** (qué cambió + qué comando corriste + resultado)

**Prohibido:**
- Refactors, "mejoras", "cleanup" fuera del scope
- Cambiar nombres, estilos, estructuras, rutas o DTOs sin que la tarea lo pida
- Borrar código comentado
- Modificar archivos "NO TOCAR"

---

## 1) ⚠️ REGLAS CRÍTICAS (SIN EXCEPCIÓN)

1. **NO MODIFICAR** archivos que no estén explícitamente listados en cada tarea
2. Antes de editar, **leer el archivo completo** y ubicar exactamente el bloque objetivo
3. **NO eliminar** código comentado
4. **PRESERVAR** imports existentes que estén en uso (no reordenar por gusto)
5. Después de cada tarea: ejecutar **build** (backend o frontend)
6. Si hay duda (nombres de campos/relaciones/respuestas), **DETENERSE y PREGUNTAR**
7. **No inventar** entidades, rutas, DTOs o formatos de respuesta

---

## 2) 📁 ESTRUCTURA DEL PROYECTO (Referencia)

```
d:\planificacion\
├── backend\                    # NestJS
│   └── src\
│       ├── clarity\
│       │   ├── clarity.controller.ts
│       │   ├── tasks.service.ts
│       │   ├── dto\clarity.dtos.ts
│       │   └── entities\
│       ├── planning\
│       │   ├── planning.service.ts
│       │   ├── analytics.service.ts
│       │   └── entities\
│       └── auth\
│
├── clarity-pwa\                # React
│   └── src\
│       ├── pages\
│       ├── components\
│       ├── services\
│       └── context\
```

---

## 3) ✅ TAREAS COMPLETADAS (NO TOCAR)

| ID | Descripción | Archivos |
|----|-------------|----------|
| CRIT-004 | AnalyticsService mejorado para buscar por fecha | `backend/src/planning/analytics.service.ts` |
| CRIT-005 | Agregado titulo/progreso al DTO y service | `backend/src/clarity/dto/clarity.dtos.ts`, `backend/src/clarity/tasks.service.ts` |
| CRIT-001 | Unificación entidad SolicitudCambio | `backend/src/clarity/entities/solicitud-cambio.entity.ts`, `backend/src/planning/entities/solicitud-cambio.entity.ts` |
| CRIT-003 | Corrección estado Proyecto y campos | `backend/src/planning/entities/proyecto.entity.ts` |
| APPR-001 | Endpoint Confirmar Proyecto | `backend/src/clarity/clarity.controller.ts`, `backend/src/clarity/tasks.service.ts` |
| APPR-003 | Lógica Interceptación Cambios Tarea | `backend/src/clarity/tasks.service.ts` |
| APPR-004 | Modal Solicitud Cambios Frontend | `clarity-pwa/src/components/ui/TaskDetailModal.tsx`, `clarity-pwa/src/components/ui/SolicitudCambioModal.tsx` |
| APPR-005 | Verificación Auditoría | `backend/src/common/audit.subscriber.ts` |

---

## 4) 🔒 ARCHIVOS PROHIBIDOS (NO TOCAR)

```
- backend/src/auth/*
- backend/src/app.module.ts
- clarity-pwa/src/context/AuthContext.tsx
- clarity-pwa/src/services/api.ts
- cualquier *.test.ts o *.spec.ts
- node_modules/*
```

---

## 5) 🔴 SPRINT 1 — CORRECCIONES CRÍTICAS

---

### CRIT-001 — Eliminar entidad duplicada (con verificación real)

**Objetivo:** eliminar entidad huérfana que confunde.

**ELIMINAR (solo si no está usada):**
```
d:\planificacion\backend\src\clarity\entities\solicitud-cambio.entity.ts
```

**PRESERVAR (no tocar):**
```
d:\planificacion\backend\src\planning\entities\solicitud-cambio.entity.ts
```

**Precheck obligatorio (Windows PowerShell):**
```powershell
cd d:\planificacion
Select-String -Path backend\src\**\*.ts -Pattern "clarity/entities/solicitud-cambio" -SimpleMatch
```

**Alternativa con grep:**
```bash
grep -r "clarity/entities/solicitud-cambio" backend/src/
```

**Acción:**
- Si **NO hay resultados** → eliminar el archivo de clarity/entities
- Si **HAY resultados** → NO eliminar, reportar qué archivos lo importan

**Build:**
```bash
cd d:\planificacion\backend
npm run build
```

**Checklist:**
- [ ] No hay imports rotos
- [ ] Backend build OK

---

### CRIT-002 — Permisos en tareaActualizar (NO ejecutar aún)

**Objetivo:** reactivar validación de permisos comentada, pero dependiente.

**Archivo (solo lectura por ahora):**
```
d:\planificacion\backend\src\clarity\tasks.service.ts
```

**Acción:**
- ⚠️ **NO descomentar**
- Marcar como **EN ESPERA** hasta completar APPR-003

---

### CRIT-003 — Verificar tabla p_SolicitudCambios (sin tocar código)

**Objetivo:** confirmar que la tabla existe.

**Acción:**
1. Iniciar backend (si hace falta) y confirmar que arranca sin error
2. En PostgreSQL ejecutar:
```sql
SELECT * FROM "p_SolicitudCambios" LIMIT 1;
```

**Resultado esperado:**
- Si existe → ✅ OK
- Si no existe → revisar logs de arranque del backend (TypeORM synchronize)

**No modificar archivos.**

---

## 6) 🟡 SPRINT 2 — SISTEMA DE APROBACIONES

---

### APPR-001 — Agregar estado a Proyecto (seguro y verificable)

**Archivo:**
```
d:\planificacion\backend\src\planning\entities\proyecto.entity.ts
```

**Precheck obligatorio:**
- Confirmar que existe el campo `tipo` en la entidad y dónde está
- Insertar `estado` inmediatamente después de `tipo`
- **Si `tipo` no existe, DETENERSE y PREGUNTAR**

**Cambio (agregar después de `tipo`):**
```typescript
@Column({ default: 'Borrador' })
estado: string; // Borrador | Confirmado | EnEjecucion | Cerrado
```

**Build:**
```bash
cd d:\planificacion\backend
npm run build
```

**Checklist:**
- [ ] Build OK
- [ ] Al iniciar backend se refleja la columna (synchronize)

---

### APPR-002 — Endpoint Confirmar Proyecto + Service

#### A) Backend Controller

**Archivo:**
```
d:\planificacion\backend\src\clarity\clarity.controller.ts
```

**Acción:**
- Agregar endpoint POST después de los endpoints de proyectos
- **Importante:** convertir id a number con `ParseIntPipe`

```typescript
@Post('proyectos/:id/confirmar')
async confirmarProyecto(@Param('id', ParseIntPipe) id: number, @Request() req) {
    return this.tasksService.confirmarProyecto(id, req.user.userId);
}
```

- Si `ParseIntPipe` no está importado, importarlo desde `@nestjs/common`

#### B) Backend Service

**Archivo:**
```
d:\planificacion\backend\src\clarity\tasks.service.ts
```

**Precheck obligatorio:**
1. Confirmar si existe `verificarAccesoNodo(...)`
2. Confirmar si `ResourceNotFoundException` existe y está importable
3. Confirmar estructura real de Proyecto: ¿tiene `idNodoDuenio`?

**Implementación PREFERIDA (si existe verificarAccesoNodo y idNodoDuenio):**
```typescript
async confirmarProyecto(idProyecto: number, idUsuario: number) {
    const proyecto = await this.proyectoRepo.findOne({ where: { idProyecto } });
    if (!proyecto) throw new ResourceNotFoundException('Proyecto', idProyecto);

    const usuario = await this.usuarioRepo.findOne({ where: { idUsuario } });
    const esAdmin = usuario?.rolGlobal === 'Admin' || usuario?.rolGlobal === 'SuperAdmin';

    if (!esAdmin && proyecto.idNodoDuenio) {
        const tieneAcceso = await this.verificarAccesoNodo(idUsuario, proyecto.idNodoDuenio);
        if (!tieneAcceso) throw new ForbiddenException('No tienes permiso para confirmar este proyecto');
    }

    proyecto.estado = 'Confirmado';
    return await this.proyectoRepo.save(proyecto);
}
```

**FALLBACK (si NO existe verificarAccesoNodo o no hay idNodoDuenio):**
```typescript
async confirmarProyecto(idProyecto: number, idUsuario: number) {
    const proyecto = await this.proyectoRepo.findOne({ where: { idProyecto } });
    if (!proyecto) throw new ResourceNotFoundException('Proyecto', idProyecto);

    const usuario = await this.usuarioRepo.findOne({ where: { idUsuario } });
    const esAdmin = usuario?.rolGlobal === 'Admin' || usuario?.rolGlobal === 'SuperAdmin';
    if (!esAdmin) throw new ForbiddenException('Solo administradores pueden confirmar proyectos');

    proyecto.estado = 'Confirmado';
    return await this.proyectoRepo.save(proyecto);
}
```

#### C) Frontend service

**Archivo:**
```
d:\planificacion\clarity-pwa\src\services\clarity.service.ts
```

**Agregar:**
```typescript
confirmarProyecto: async (idProyecto: number) => {
    const { data: response } = await api.post<ApiResponse<any>>(`/proyectos/${idProyecto}/confirmar`);
    return response.data;
},
```

**Builds:**
```bash
cd d:\planificacion\backend
npm run build

cd d:\planificacion\clarity-pwa
npm run build
```

**Checklist:**
- [ ] Backend build OK
- [ ] Frontend build OK
- [ ] Endpoint responde en Postman

---

### APPR-003 — tareaActualizar con aprobación (sin romper por fechas)

**Archivo:**
```
d:\planificacion\backend\src\clarity\tasks.service.ts
```

**Precheck obligatorio (antes de reemplazar):**
1. Confirmar tipos reales en Tarea:
   - `fechaObjetivo` y `fechaInicioPlanificada` ¿son `Date | string | null`?
2. Confirmar DTO `TareaActualizarDto`:
   - nombres exactos de propiedades
3. Confirmar que el repo `SolicitudCambio` existe en el service y la entidad está registrada en el módulo correspondiente
4. **Si al inyectar el repo luego falla DI, no continuar: reportar**

**Regla de comparación de fechas (OBLIGATORIA):**
- Comparar por `getTime()` para evitar "siempre diferente"
- Convertir `dtoFecha` y `tareaFecha` a `Date` si vienen como string

**Imports y DI a verificar:**
```typescript
import { SolicitudCambio } from '../planning/entities/solicitud-cambio.entity';
```

```typescript
@InjectRepository(SolicitudCambio) private solicitudCambioRepo: Repository<SolicitudCambio>,
```

**Lógica principal a implementar en tareaActualizar:**
```typescript
// Dentro del método tareaActualizar, DESPUÉS de obtener la tarea:

// Campos que SIEMPRE se pueden editar sin aprobación
const camposLibres = ['progreso', 'estado', 'descripcion', 'prioridad', 'esfuerzo'];

// Comparación segura de fechas
const fechaObjetivoAnterior = tarea.fechaObjetivo ? new Date(tarea.fechaObjetivo).getTime() : null;
const fechaObjetivoNueva = dto.fechaObjetivo ? new Date(dto.fechaObjetivo).getTime() : null;
const cambioFechaObjetivo = dto.fechaObjetivo !== undefined && fechaObjetivoAnterior !== fechaObjetivoNueva;

const fechaInicioAnterior = tarea.fechaInicioPlanificada ? new Date(tarea.fechaInicioPlanificada).getTime() : null;
const fechaInicioNueva = dto.fechaInicioPlanificada ? new Date(dto.fechaInicioPlanificada).getTime() : null;
const cambioFechaInicio = dto.fechaInicioPlanificada !== undefined && fechaInicioAnterior !== fechaInicioNueva;

const cambiandoFechas = cambioFechaObjetivo || cambioFechaInicio;

if (cambiandoFechas) {
    const requiereAprobacion = await this.verificarRequiereAprobacion(tarea);
    
    if (requiereAprobacion) {
        const solicitud = await this.crearSolicitudCambioAutomatica(
            tarea, dto, idUsuario, cambioFechaObjetivo ? 'fechaObjetivo' : 'fechaInicioPlanificada'
        );
        return { 
            requiresApproval: true, 
            solicitudId: solicitud.idSolicitud,
            message: 'El cambio de fecha ha sido enviado para aprobación.' 
        };
    }
}

// Continuar con aplicación normal de cambios...
```

**Métodos helper a agregar:**
```typescript
private async verificarRequiereAprobacion(tarea: Tarea): Promise<boolean> {
    const proyecto = tarea.proyecto;
    
    // Regla 1: Proyectos estratégicos confirmados
    if (proyecto?.tipo === 'Estrategico' && 
        ['Confirmado', 'EnEjecucion'].includes(proyecto.estado || '')) {
        return true;
    }
    
    // Regla 2: Tareas próximas a vencer (menos de 7 días)
    if (tarea.fechaObjetivo) {
        const hoy = new Date();
        const fechaObj = new Date(tarea.fechaObjetivo);
        const diasRestantes = Math.ceil((fechaObj.getTime() - hoy.getTime()) / (1000 * 60 * 60 * 24));
        if (diasRestantes <= 7) {
            return true;
        }
    }
    
    return false;
}

private async crearSolicitudCambioAutomatica(
    tarea: Tarea, 
    dto: TareaActualizarDto, 
    idUsuario: number,
    campo: string
) {
    const valorAnterior = campo === 'fechaObjetivo' ? tarea.fechaObjetivo : tarea.fechaInicioPlanificada;
    const valorNuevo = campo === 'fechaObjetivo' ? dto.fechaObjetivo : dto.fechaInicioPlanificada;
    
    const solicitud = this.solicitudCambioRepo.create({
        idTarea: tarea.idTarea,
        idUsuarioSolicitante: idUsuario,
        campoAfectado: campo,
        valorAnterior: valorAnterior?.toString() || null,
        valorNuevo: valorNuevo?.toString() || '',
        motivo: 'Cambio solicitado por el usuario',
        estado: 'Pendiente'
    });
    
    return await this.solicitudCambioRepo.save(solicitud);
}
```

**Build:**
```bash
cd d:\planificacion\backend
npm run build
```

**Pruebas manuales:**
- [ ] Proyecto NO estratégico → cambia directo
- [ ] Proyecto estratégico Confirmado/EnEjecucion → devuelve `requiresApproval: true`

---

### APPR-004 — Frontend maneja requiresApproval (sin asumir wrapper)

**Archivo:**
```
d:\planificacion\clarity-pwa\src\pages\Planning\PlanTrabajoPage.tsx
```

**Precheck obligatorio:**
- Confirmar forma real del response:
  - Caso A: `response.data.data.requiresApproval`
  - Caso B: `response.data.requiresApproval`

**Implementación robusta (soporta ambos):**
```typescript
const payload = response.data?.data ?? response.data;
if (payload?.requiresApproval) {
    showToast(payload.message || 'Cambio enviado para aprobación', 'info');
} else {
    showToast('Cambios guardados correctamente', 'success');
}
```

**Build:**
```bash
cd d:\planificacion\clarity-pwa
npm run build
```

---

### APPR-005 — Botón "Confirmar Plan" + Badge

**Archivo:**
```
d:\planificacion\clarity-pwa\src\pages\Planning\ProyectosPage.tsx
```

**Acción:**
- Botón si `estado === 'Borrador'`
- Badge si `estado === 'Confirmado'`

**Import (si falta):**
```typescript
import { Lock, CheckCircle } from 'lucide-react';
```

**Código botón:**
```tsx
{proyecto.estado === 'Borrador' && (
    <button
        onClick={async () => {
            try {
                await clarityService.confirmarProyecto(proyecto.idProyecto);
                showToast('Proyecto confirmado. Cambios de fecha requieren aprobación.', 'success');
                fetchProyectos();
            } catch (error) {
                showToast('Error al confirmar proyecto', 'error');
            }
        }}
        className="px-3 py-1.5 bg-emerald-600 text-white text-xs font-bold rounded-lg hover:bg-emerald-700 transition-colors flex items-center gap-1"
    >
        <CheckCircle size={14} />
        Confirmar Plan
    </button>
)}
```

**Código badge:**
```tsx
{proyecto.estado === 'Confirmado' && (
    <span className="px-2 py-1 bg-emerald-100 text-emerald-700 text-xs font-bold rounded-full flex items-center gap-1">
        <Lock size={12} />
        Confirmado
    </span>
)}
```

**Build:**
```bash
cd d:\planificacion\clarity-pwa
npm run build
```

---

### APPR-006 — Indicador de bloqueo en detalle de tarea

**Archivo:**
```
d:\planificacion\clarity-pwa\src\pages\Planning\PlanTrabajoPage.tsx
```

**Acción:** Mostrar warning si:
- `selectedTask.proyecto.tipo === 'Estrategico'`
- `estado in ('Confirmado','EnEjecucion')`

**Import si falta:**
```typescript
import { Lock } from 'lucide-react';
```

**Código:**
```tsx
{(selectedTask?.proyecto?.tipo === 'Estrategico' && 
  ['Confirmado', 'EnEjecucion'].includes(selectedTask?.proyecto?.estado || '')) && (
    <div className="mt-2 px-3 py-2 bg-amber-50 border border-amber-200 rounded-lg text-xs text-amber-700 flex items-center gap-2">
        <Lock size={14} />
        <span>Proyecto confirmado - Cambios de fecha requieren aprobación</span>
    </div>
)}
```

**Build:**
```bash
cd d:\planificacion\clarity-pwa
npm run build
```

---

## 7) 🟢 SPRINT 3 — LIMPIEZA / UX

---

### HIGH-003 — Eliminar import no usado (Map)

**Archivo:**
```
clarity-pwa/src/pages/Planning/PlanTrabajoPage.tsx
```

**Acción:** Quitar solo `Map` del import.

**Build:**
```bash
cd d:\planificacion\clarity-pwa
npm run build
```

---

### HIGH-001 — Registrar rutas huérfanas (verificar exports)

**Archivo:**
```
clarity-pwa/src/App.tsx
```

**Precheck obligatorio:**
- Confirmar si cada view exporta `default` o `{ Named }`
- Importar acorde (no asumir)

**Agregar routes dentro de `hoy`:**
```tsx
<Route path="alertas" element={<AlertsView />} />
<Route path="bloqueos" element={<BlockersView />} />
<Route path="metricas" element={<MetricsView />} />
<Route path="equipo" element={<TeamView />} />
```

**Build + ver navegación:**
- `/app/hoy/alertas`
- `/app/hoy/bloqueos`
- `/app/hoy/metricas`
- `/app/hoy/equipo`

---

### UX-001 — Loading states (solo ajustes mínimos)

**Objetivo:** evitar "No hay datos" mientras carga.

**Regla:** solo agregar flags `isLoading`/`disabled`/spinner donde ya hay estados similares (sin rediseño).

**Archivos a revisar:**
- `PlanTrabajoPage.tsx`
- `ProyectosPage.tsx`
- `ApprovalsPage.tsx`

---

### UX-002 — Cierre correcto de modales

**Regla:** cerrar modal solo en éxito y limpiar estado al abrir.

**Archivos a revisar:**
- `TaskDetailModal.tsx`
- `CloneModal` en `ArchivePage.tsx`
- Cualquier modal nuevo creado

---

## 8) 📊 PRIORIDAD Y DEPENDENCIAS

| # | Tarea | Dependencias |
|---|-------|--------------|
| 1 | CRIT-001 | - |
| 2 | CRIT-003 | - |
| 3 | APPR-001 | - |
| 4 | APPR-002 | APPR-001 |
| 5 | APPR-003 | APPR-001, APPR-002 |
| 6 | APPR-004 | APPR-003 |
| 7 | APPR-005 | APPR-002 |
| 8 | APPR-006 | APPR-001 |
| 9 | CRIT-002 | APPR-003 |
| 10 | HIGH-003 | - |
| 11 | HIGH-001 | - |
| 12 | UX-001 | - |
| 13 | UX-002 | - |

---

## 9) 🔍 VERIFICACIÓN FINAL

**Backend:**
```bash
cd d:\planificacion\backend
npm run build
npm run start:dev
```

**Frontend:**
```bash
cd d:\planificacion\clarity-pwa
npm run build
npm run dev
```

**Pruebas manuales:**
- [ ] Login OK
- [ ] Mi Día carga
- [ ] Crear tarea OK
- [ ] Editar tarea (proyecto no confirmado) → guarda directo
- [ ] Confirmar proyecto OK
- [ ] Editar fecha (proyecto confirmado) → requiere aprobación (mensaje)
- [ ] Ver solicitudes pendientes en `/app/planning/approvals`

---

**Última actualización:** 2026-01-20

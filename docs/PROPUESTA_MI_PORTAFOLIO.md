# 📋 Propuesta: Vista Unificada "Mi Portafolio"

**Versión:** 1.0  
**Fecha:** 2026-02-05  
**Estado:** Propuesta de Nueva Funcionalidad  
**Prioridad:** Media-Alta  

---

## 🎯 Resumen Ejecutivo

### El Problema
Actualmente un usuario que quiere ver **solo sus tareas asignadas en proyectos** debe:
1. Ir a `/proyectos` → Ver todos los proyectos (incluso donde no participa)
2. Hacer clic en un proyecto → Entrar a `/plan-trabajo?projectId=X`
3. Buscar manualmente cuáles son SUS tareas entre todas las del proyecto

Esto es **ineficiente** para el usuario operativo que solo quiere saber: *"¿Qué me toca hacer a mí?"*

### La Solución
Crear una nueva página **"Mi Portafolio"** que muestre:
- **Solo proyectos donde tengo tareas asignadas**
- **Solo mis tareas** dentro de cada proyecto
- **Vista compacta y unificada** sin necesidad de navegar entre páginas

---

## 🖥️ Diseño de la Interface

### Vista Principal: Lista de Proyectos con Mis Tareas

```
┌─────────────────────────────────────────────────────────────────────────────┐
│  📁 Mi Portafolio                                        🔍 Buscar...       │
├─────────────────────────────────────────────────────────────────────────────┤
│  Filtros: [Todos ▼] [Pendientes ▼] [Este Mes ▼]         📊 3 Proyectos     │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│  ┌───────────────────────────────────────────────────────────────────────┐  │
│  │ 📂 Plan Estratégico 2026                              🟡 En Progreso  │  │
│  │    Gerencia Comercial • 2 tareas mías • 1 atrasada                    │  │
│  │                                                                       │  │
│  │    ┌─────────────────────────────────────────────────────────────┐    │  │
│  │    │ ☐ Revisar presupuesto Q1          📅 4 Feb   🔴 -1 día      │    │  │
│  │    │   Prioridad: Alta • Progreso: 0%                     [▶]   │    │  │
│  │    └─────────────────────────────────────────────────────────────┘    │  │
│  │    ┌─────────────────────────────────────────────────────────────┐    │  │
│  │    │ ☐ Preparar presentación dirección 📅 15 Feb  🟢 A tiempo   │    │  │
│  │    │   Prioridad: Media • Progreso: 25%                   [▶]   │    │  │
│  │    └─────────────────────────────────────────────────────────────┘    │  │
│  │                                                                       │  │
│  │    [Ver Proyecto Completo →]                                          │  │
│  └───────────────────────────────────────────────────────────────────────┘  │
│                                                                             │
│  ┌───────────────────────────────────────────────────────────────────────┐  │
│  │ 📂 Migración Sistema Facturación                      🟢 Activo       │  │
│  │    TI • 1 tarea mía • Al día                                          │  │
│  │                                                                       │  │
│  │    ┌─────────────────────────────────────────────────────────────┐    │  │
│  │    │ ☑ Validar datos migrados          📅 10 Feb  🟢 A tiempo   │    │  │
│  │    │   Prioridad: Alta • Progreso: 80%                    [▶]   │    │  │
│  │    └─────────────────────────────────────────────────────────────┘    │  │
│  │                                                                       │  │
│  │    [Ver Proyecto Completo →]                                          │  │
│  └───────────────────────────────────────────────────────────────────────┘  │
│                                                                             │
│  ┌───────────────────────────────────────────────────────────────────────┐  │
│  │ 📂 Capacitación Equipos Regionales                    🔵 Planificado  │  │
│  │    RRHH • 3 tareas mías • Inicia próxima semana                       │  │
│  │                                                                       │  │
│  │    ▼ Expandir para ver tareas...                                      │  │
│  └───────────────────────────────────────────────────────────────────────┘  │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

### Interacciones Clave

| Acción | Resultado |
|--------|-----------|
| Clic en proyecto | Expande/Colapsa lista de mis tareas |
| Clic en tarea | Abre panel lateral con detalles (como en PlanTrabajo) |
| Clic en [▶] | Acción rápida: Marcar progreso, completar, etc. |
| Clic en "Ver Proyecto Completo" | Navega a `/plan-trabajo?projectId=X` |
| Checkbox en tarea | Marca como completada (100%) |

---

## 🔧 Arquitectura Técnica

### 1. Nueva API Endpoint

**GET `/api/planning/mi-portafolio`**

**Request:**
```
GET /api/planning/mi-portafolio?estado=pendiente&fechaDesde=2026-02-01
Headers: Authorization: Bearer <token>
```

**Response:**
```json
{
  "proyectos": [
    {
      "idProyecto": 163,
      "nombre": "Plan Estratégico 2026",
      "estado": "En Progreso",
      "gerencia": "Gerencia Comercial",
      "fechaInicio": "2026-01-31",
      "fechaFin": "2026-08-30",
      "progresoProyecto": 15,
      "misTareas": [
        {
          "idTarea": 501,
          "titulo": "Revisar presupuesto Q1",
          "estado": "Pendiente",
          "prioridad": "Alta",
          "progreso": 0,
          "fechaObjetivo": "2026-02-04",
          "diasAtraso": 1,
          "esAtrasada": true
        },
        {
          "idTarea": 502,
          "titulo": "Preparar presentación dirección",
          "estado": "En Progreso",
          "prioridad": "Media",
          "progreso": 25,
          "fechaObjetivo": "2026-02-15",
          "diasAtraso": 0,
          "esAtrasada": false
        }
      ],
      "resumen": {
        "totalMisTareas": 2,
        "completadas": 0,
        "atrasadas": 1,
        "alDia": 1
      }
    }
  ],
  "resumenGlobal": {
    "totalProyectos": 3,
    "totalTareas": 6,
    "tareasAtrasadas": 1,
    "tareasHoy": 0,
    "tareasSemana": 3
  }
}
```

### 2. Query SQL Principal

```sql
-- SP: sp_MiPortafolio_Obtener
CREATE PROCEDURE sp_MiPortafolio_Obtener
    @carnet NVARCHAR(50),
    @estado NVARCHAR(50) = NULL,
    @fechaDesde DATE = NULL,
    @fechaHasta DATE = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- 1. Obtener IDs de proyectos donde tengo tareas asignadas
    DECLARE @MisProyectos TABLE (idProyecto INT);
    
    INSERT INTO @MisProyectos
    SELECT DISTINCT t.idProyecto
    FROM p_Tareas t
    INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
    WHERE ta.carnet = @carnet
      AND t.activo = 1
      AND t.idProyecto IS NOT NULL
      AND (@estado IS NULL OR t.estado = @estado);

    -- 2. Proyectos con metadata
    SELECT 
        p.idProyecto,
        p.nombre,
        p.estado,
        p.gerencia,
        p.subgerencia,
        p.area,
        p.fechaInicio,
        p.fechaFin,
        p.tipo,
        -- Progreso calculado
        ISNULL((
            SELECT AVG(CAST(t2.porcentaje AS FLOAT))
            FROM p_Tareas t2
            WHERE t2.idProyecto = p.idProyecto 
              AND t2.activo = 1 
              AND t2.idTareaPadre IS NULL
        ), 0) AS progresoProyecto
    FROM p_Proyectos p
    INNER JOIN @MisProyectos mp ON p.idProyecto = mp.idProyecto
    WHERE p.activo = 1
    ORDER BY p.fechaFin ASC;

    -- 3. Mis tareas en esos proyectos
    SELECT 
        t.idTarea,
        t.idProyecto,
        t.nombre AS titulo,
        t.estado,
        t.prioridad,
        t.porcentaje AS progreso,
        t.fechaObjetivo,
        t.fechaInicioPlanificada,
        t.descripcion,
        -- Días de atraso
        CASE 
            WHEN t.fechaObjetivo < CAST(GETDATE() AS DATE) 
                 AND t.estado NOT IN ('Hecha', 'Completada', 'Descartada')
            THEN DATEDIFF(day, t.fechaObjetivo, GETDATE())
            ELSE 0
        END AS diasAtraso,
        -- Flag booleano
        CASE 
            WHEN t.fechaObjetivo < CAST(GETDATE() AS DATE) 
                 AND t.estado NOT IN ('Hecha', 'Completada', 'Descartada')
            THEN 1 ELSE 0
        END AS esAtrasada
    FROM p_Tareas t
    INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
    INNER JOIN @MisProyectos mp ON t.idProyecto = mp.idProyecto
    WHERE ta.carnet = @carnet
      AND t.activo = 1
      AND (@estado IS NULL OR t.estado = @estado)
      AND (@fechaDesde IS NULL OR t.fechaObjetivo >= @fechaDesde)
      AND (@fechaHasta IS NULL OR t.fechaObjetivo <= @fechaHasta)
    ORDER BY t.idProyecto, t.fechaObjetivo ASC;
END
```

### 3. Archivos a Crear/Modificar

| Archivo | Tipo | Descripción |
|---------|------|-------------|
| `MiPortafolioPage.tsx` | **Nuevo** | Componente principal de la vista |
| `planning.repo.ts` | Modificar | Agregar `obtenerMiPortafolio()` |
| `planning.service.ts` | Modificar | Agregar `getMiPortafolio()` |
| `planning.controller.ts` | Modificar | Agregar endpoint `/mi-portafolio` |
| `AppRoutes.tsx` | Modificar | Agregar ruta `/app/planning/mi-portafolio` |
| `appMenu.ts` | Modificar | Agregar item de menú |

---

## 📐 Wireframes Detallados

### Estado Colapsado (Default)
```
┌──────────────────────────────────────────────────────────────┐
│ 📂 Plan Estratégico 2026                      [▼] Expandir  │
│    🔴 2 tareas • 1 atrasada                                  │
│    📅 Próxima: 4 Feb (hace 1 día)                            │
└──────────────────────────────────────────────────────────────┘
```

### Estado Expandido
```
┌──────────────────────────────────────────────────────────────┐
│ 📂 Plan Estratégico 2026                      [▲] Colapsar  │
│    Gerencia Comercial • Estratégico                          │
│    📅 31 Ene - 30 Ago 2026 • 15% completado                  │
├──────────────────────────────────────────────────────────────┤
│                                                              │
│   ☐ Revisar presupuesto Q1                                   │
│      📅 4 Feb 2026 • 🔴 1 día de atraso                      │
│      Prioridad: Alta  │  Progreso: ████░░░░░░ 0%            │
│      [Editar] [Completar] [Ver Detalles]                     │
│                                                              │
│   ☐ Preparar presentación dirección                          │
│      📅 15 Feb 2026 • 🟢 Al día                              │
│      Prioridad: Media │  Progreso: ████████░░ 25%           │
│      [Editar] [Completar] [Ver Detalles]                     │
│                                                              │
├──────────────────────────────────────────────────────────────┤
│ [+ Nueva Tarea]                    [Ver Proyecto Completo →] │
└──────────────────────────────────────────────────────────────┘
```

### Panel Lateral de Tarea (Reutilizar de PlanTrabajoPage)
```
┌────────────────────────────────────────┐
│ ✏️ Revisar presupuesto Q1        [X]  │
├────────────────────────────────────────┤
│ Proyecto: Plan Estratégico 2026        │
│ Estado: [Pendiente ▼]                  │
│ Prioridad: [Alta ▼]                    │
│ Progreso: [=====>____] 50%             │
│                                        │
│ Fecha Objetivo: 📅 4 Feb 2026          │
│ ⚠️ Esta tarea está atrasada 1 día     │
│                                        │
│ Descripción:                           │
│ ┌────────────────────────────────────┐ │
│ │ Revisar el presupuesto del primer │ │
│ │ trimestre con finanzas...         │ │
│ └────────────────────────────────────┘ │
│                                        │
│ Comentarios / Avances:                 │
│ + Agregar comentario...                │
│                                        │
│        [Guardar Cambios]               │
└────────────────────────────────────────┘
```

---

## 📊 Estadísticas Superiores (Header)

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                                                                             │
│   📦 3 Proyectos        ⏳ 6 Tareas        🔴 1 Atrasada       ✅ 2 Hoy     │
│   Con tareas mías       Asignadas a ti    Requiere atención   Para entregar│
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

---

## 🚀 Plan de Implementación

### Fase 1: Backend (1-2 días)
- [ ] Crear SP `sp_MiPortafolio_Obtener`
- [ ] Crear función `obtenerMiPortafolio` en `planning.repo.ts`
- [ ] Crear método `getMiPortafolio` en `planning.service.ts`
- [ ] Agregar endpoint `GET /planning/mi-portafolio` en controller
- [ ] Probar con Postman/curl

### Fase 2: Frontend Base (2-3 días)
- [ ] Crear `MiPortafolioPage.tsx` con estructura básica
- [ ] Implementar llamada API y estado
- [ ] Renderizar lista de proyectos colapsables
- [ ] Renderizar tareas dentro de cada proyecto
- [ ] Agregar ruta en `AppRoutes.tsx`
- [ ] Agregar item de menú en `appMenu.ts`

### Fase 3: Interactividad (1-2 días)
- [ ] Expandir/Colapsar proyectos
- [ ] Panel lateral de tarea (reutilizar componente existente)
- [ ] Acciones rápidas (completar, editar progreso)
- [ ] Filtros (estado, fecha)

### Fase 4: Pulido (1 día)
- [ ] Estadísticas superiores
- [ ] Indicadores visuales de atraso
- [ ] Responsividad móvil
- [ ] Loading states y errores

### Tiempo Total Estimado: **5-8 días**

---

## 🔀 Alternativas Consideradas

### Alternativa A: Filtro en ProyectosPage
*"Agregar un toggle 'Solo mis proyectos' en la página existente"*

**Pros:** Menor esfuerzo, reutiliza código
**Contras:** No muestra las tareas directamente, sigue requiriendo navegación

### Alternativa B: Pestañas en "Mis Tareas"
*"Agregar una pestaña 'Por Proyecto' en la página de pendientes"*

**Pros:** Aprovecha página existente
**Contras:** Cambia la naturaleza de esa página, puede confundir

### Alternativa C: Vista Unificada Nueva (Recomendada ✅)
*"Crear página dedicada 'Mi Portafolio'"*

**Pros:** 
- Experiencia optimizada para el caso de uso
- No afecta vistas existentes
- Puede evolucionar independientemente
- Más fácil de explicar a usuarios

**Contras:** Código nuevo a mantener

---

## 🎨 Ubicación en el Menú

**Propuesta:**
```
📁 Mi Espacio
   ├── ☀️ Mi Agenda
   ├── ✅ Mis Tareas  
   ├── 📋 Mi Portafolio   ← NUEVO
   ├── 📂 Gestión Proyectos
   └── 📝 Mis Notas
```

**Ruta:** `/app/planning/mi-portafolio`

---

## ❓ Preguntas para Definir

1. **¿Mostrar tareas completadas?**
   - Opción A: No, solo pendientes/en progreso
   - Opción B: Sí, con filtro para ocultarlas

2. **¿Permitir crear tareas desde esta vista?**
   - Opción A: No, redirigir al proyecto completo
   - Opción B: Sí, con selector de proyecto

3. **¿Agrupar por fecha en lugar de proyecto?**
   - Vista alternativa: "Hoy → Esta Semana → Este Mes → Más Adelante"

4. **¿Incluir tareas sin proyecto?** (Tareas personales)
   - Opción A: No, solo tareas de proyectos
   - Opción B: Sí, en sección separada "Mis Tareas Personales"

---

## 📌 Conclusión

La vista **"Mi Portafolio"** resuelve directamente la necesidad del usuario operativo:

> *"Quiero ver solo lo que me toca a mí hacer, sin ruido, en una sola pantalla."*

Es una inversión de **5-8 días** que mejora significativamente la experiencia del día a día para usuarios que participan en múltiples proyectos pero no necesitan ver todo el detalle de gestión.

**Recomendación:** Implementar como Fase 1 la versión básica (proyectos + tareas expandibles) y en Fase 2 agregar las funcionalidades avanzadas según feedback de usuarios.

---

*Documento de propuesta - Revisar y aprobar antes de implementar.*

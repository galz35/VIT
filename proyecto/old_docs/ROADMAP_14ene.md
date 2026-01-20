# 🎯 ROADMAP: DE 7/10 A 10/10

**Estado actual:** 7/10  
**Meta:** 10/10  
**Fecha creación:** 14 de Enero 2026

---

## 📊 DIAGNÓSTICO: ¿POR QUÉ ESTAMOS EN 7/10?

```
┌─────────────────────────────────────────────────────────────────┐
│                    DESGLOSE ACTUAL                              │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  ÁREA                     │ ACTUAL │ META  │ BRECHA            │
│  ─────────────────────────┼────────┼───────┼───────────────────│
│  Backend/API              │  9/10  │ 10/10 │ Falta Edge cases  │
│  Base de datos            │  9/10  │ 10/10 │ OK                │
│  Frontend UX/UI           │  6/10  │ 10/10 │ FALTA PULIR       │
│  Testing real             │  3/10  │ 10/10 │ SIN USUARIOS      │
│  Notificaciones           │  2/10  │ 10/10 │ NO IMPLEMENTADO   │
│  Reportes automáticos     │  3/10  │ 10/10 │ BÁSICOS           │
│  Documentación usuario    │  4/10  │ 10/10 │ SOLO TÉCNICA      │
│  Datos reales importados  │  1/10  │ 10/10 │ SOLO PRUEBAS      │
│  Adopción/Cultura         │  0/10  │ 10/10 │ NO INICIADO       │
│                                                                 │
│  PROMEDIO PONDERADO: 7/10                                      │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

---

## 🚀 FASES PARA LLEGAR A 10/10

```
FASE 1           FASE 2           FASE 3           FASE 4
TÉCNICO          DATOS            ADOPCIÓN         ESCALA
(2 semanas)      (1 semana)       (4 semanas)      (4 semanas)
    │                │                │                │
    ▼                ▼                ▼                ▼
┌─────────┐    ┌─────────┐    ┌─────────┐    ┌─────────┐
│ Pulir   │───▶│ Importar│───▶│ Piloto  │───▶│ Rollout │
│ código  │    │ 2000    │    │ 3→30    │    │ 2000    │
│ y UI    │    │ empleados│   │ personas│    │ empleados│
└─────────┘    └─────────┘    └─────────┘    └─────────┘
```

---

# FASE 1: COMPLETAR LO TÉCNICO (2 semanas)

## 🔴 PRIORIDAD CRÍTICA

### T001: Validar Frontend Completo
```
DESCRIPCIÓN: Probar TODAS las páginas del frontend manualmente
TIEMPO: 4 horas
ESTADO: ☐ Pendiente

SUBTAREAS:
☐ Probar login/logout
☐ Probar Mi Día - crear tarea
☐ Probar Mi Día - marcar como hecha
☐ Probar Mi Día - agregar a foco
☐ Probar Mi Día - crear bloqueo
☐ Probar Check-in completo
☐ Probar Mi Equipo (como jefe)
☐ Probar navegación móvil
☐ Probar en Chrome, Firefox, Edge
☐ Documentar bugs encontrados
```

### T002: Implementar Notificaciones Básicas
```
DESCRIPCIÓN: Avisar cuando hay bloqueos pendientes
TIEMPO: 8 horas
ESTADO: ☐ Pendiente

SUBTAREAS:
☐ Backend: Endpoint para obtener notificaciones pendientes
☐ Frontend: Componente de campana con contador
☐ Frontend: Dropdown con lista de notificaciones
☐ Notificación: "Tienes X bloqueos sin resolver"
☐ Notificación: "Tu equipo tiene X personas sin check-in"
☐ Marcar notificación como leída
```

### T003: Mejorar Dashboard Mi Equipo
```
DESCRIPCIÓN: El jefe debe ver resumen útil de su equipo
TIEMPO: 6 horas
ESTADO: ☐ Pendiente

SUBTAREAS:
☐ Widget: Total equipo / Con check-in hoy / Pendientes
☐ Widget: Bloqueos activos de mi equipo
☐ Lista: Ordenar por "más urgente" primero
☐ Filtro: Ver solo los que tienen bloqueos
☐ Drill-down: Click en persona → ver su MI DÍA
```

### T004: Reportes Básicos para Gerente
```
DESCRIPCIÓN: Vista ejecutiva de productividad
TIEMPO: 8 horas
ESTADO: ☐ Pendiente

SUBTAREAS:
☐ Pantalla: /app/reportes/productividad
☐ Gráfico: % check-in por día (última semana)
☐ Gráfico: Tareas completadas vs creadas
☐ Gráfico: Bloqueos promedio por área
☐ Tabla: Ranking de áreas por productividad
☐ Filtro: Por gerencia/subgerencia
```

---

## 🟡 PRIORIDAD MEDIA

### T005: PWA Offline Básico
```
DESCRIPCIÓN: Que funcione sin conexión para ver datos
TIEMPO: 6 horas
ESTADO: ☐ Pendiente

SUBTAREAS:
☐ Service worker para cache de páginas
☐ Guardar MI DÍA en localStorage
☐ Indicador visual de "sin conexión"
☐ Sincronizar cuando vuelva conexión
```

### T006: Búsqueda Global
```
DESCRIPCIÓN: Buscar empleados, tareas, bloqueos rápidamente
TIEMPO: 4 horas
ESTADO: ☐ Pendiente

SUBTAREAS:
☐ Componente CommandPalette (Ctrl+K)
☐ Buscar empleados por nombre
☐ Buscar tareas por texto
☐ Ir directo a resultado
```

### T007: Mejorar UX de Creación de Tareas
```
DESCRIPCIÓN: Crear tarea debe ser MÁS rápido
TIEMPO: 4 horas
ESTADO: ☐ Pendiente

SUBTAREAS:
☐ Input rápido en MI DÍA (sin modal)
☐ Enter para crear, Tab para siguiente campo
☐ Autoguardado cada 3 segundos
☐ Sugerencias basadas en tareas anteriores
```

### T008: Modo Oscuro
```
DESCRIPCIÓN: Opción visual para usuarios
TIEMPO: 3 horas
ESTADO: ☐ Pendiente

SUBTAREAS:
☐ Toggle en configuración
☐ Variables CSS para dark mode
☐ Guardar preferencia en localStorage
☐ Respetar preferencia del sistema
```

---

## 🟢 PRIORIDAD BAJA (Nice to have)

### T009: Atajos de Teclado
```
DESCRIPCIÓN: Poder usar el sistema sin mouse
TIEMPO: 2 horas
ESTADO: ☐ Pendiente

SUBTAREAS:
☐ N = Nueva tarea
☐ C = Check-in
☐ / = Buscar
☐ ESC = Cerrar modal
```

### T010: Exportar a Excel
```
DESCRIPCIÓN: Descargar reportes en Excel
TIEMPO: 3 horas
ESTADO: ☐ Pendiente

SUBTAREAS:
☐ Botón exportar en reportes
☐ Generar XLSX con librería
☐ Incluir filtros aplicados
```

---

# FASE 2: DATOS REALES (1 semana)

### T011: Importar 2000 Empleados
```
DESCRIPCIÓN: Cargar todos los empleados de RRHH
TIEMPO: 4 horas (+ revisión)
ESTADO: ☐ Pendiente

SUBTAREAS:
☐ Preparar archivo Excel con formato correcto
☐ Validar carnets de jefes existen
☐ Ejecutar importación en modo MERGE
☐ Verificar conteo: 2000+ registros
☐ Spot check: 10 empleados aleatorios
☐ Verificar jerarquías correctas
```

### T012: Importar Organización
```
DESCRIPCIÓN: Cargar estructura organizacional
TIEMPO: 2 horas
ESTADO: ☐ Pendiente

SUBTAREAS:
☐ Preparar JSON con nodos
☐ Ejecutar importación
☐ Verificar relaciones padre-hijo
☐ Verificar que empleados apunten a org correcta
```

### T013: Crear Usuarios para Piloto
```
DESCRIPCIÓN: Cuentas de login para participantes
TIEMPO: 1 hora
ESTADO: ☐ Pendiente

SUBTAREAS:
☐ Crear usuario Campeón Cultura
☐ Crear usuario Tester
☐ Enviar credenciales temporales
☐ Verificar que pueden loguearse
```

### T014: Validar Visibilidad Real
```
DESCRIPCIÓN: Confirmar que jefe ve subordinados correctos
TIEMPO: 2 horas
ESTADO: ☐ Pendiente

SUBTAREAS:
☐ Login como supervisor → ve su equipo
☐ Login como gerente → ve toda su gerencia
☐ Login como operativo → solo ve su MI DÍA
☐ Documentar cualquier problema
```

---

# FASE 3: PILOTO Y ADOPCIÓN (4 semanas)

### T015: Preparar Material de Capacitación
```
DESCRIPCIÓN: Guías para usuarios
TIEMPO: 4 horas
ESTADO: ☐ Pendiente

SUBTAREAS:
☐ Guía rápida: 1 página "Cómo usar MI DÍA"
☐ Video: Demo de 3 minutos
☐ FAQ: 10 preguntas frecuentes
☐ Poster: "30 segundos para tu check-in"
```

### T016: Ejecutar Piloto 3 Personas
```
DESCRIPCIÓN: Tú + Campeón + Tester por 2 semanas
TIEMPO: 2 semanas
ESTADO: ☐ Pendiente

SUBTAREAS:
☐ Día 1: Reunión de inicio
☐ Semana 1: Uso diario, reporte bugs
☐ Día 6: Retrospectiva
☐ Semana 2: Uso + ajustes
☐ Día 10: Decisión GO/NO-GO
```

### T017: Corregir Bugs del Piloto
```
DESCRIPCIÓN: Arreglar lo que aparezca
TIEMPO: Variable
ESTADO: ☐ Pendiente

SUBTAREAS:
☐ Priorizar por criticidad
☐ Arreglar críticos inmediatamente
☐ Documentar mejoras para después
```

### T018: Expandir a 30 Personas
```
DESCRIPCIÓN: Piloto con 1 área completa
TIEMPO: 2 semanas
ESTADO: ☐ Pendiente

SUBTAREAS:
☐ Seleccionar área (recomendación: área pequeña con jefe comprometido)
☐ Crear cuentas para todos
☐ Capacitación grupal 30 min
☐ Acompañamiento diario primera semana
☐ Medir adopción: % con check-in
☐ Retrospectiva fin de semana 2
```

---

# FASE 4: ESCALA (4 semanas)

### T019: Rollout por Gerencias
```
DESCRIPCIÓN: Activar gerencia por gerencia
TIEMPO: 4 semanas
ESTADO: ☐ Pendiente

SUBTAREAS:
☐ Semana 1: Gerencia Técnica (~400 personas)
☐ Semana 2: Gerencia Comercial
☐ Semana 3: CACs y Call Center
☐ Semana 4: Resto de áreas
☐ Soporte: Canal de ayuda activo
```

### T020: Monitorear Adopción
```
DESCRIPCIÓN: Dashboard de uso del sistema
TIEMPO: 4 horas
ESTADO: ☐ Pendiente

SUBTAREAS:
☐ Query: % usuarios activos por día
☐ Query: % check-ins por área
☐ Alerta: Áreas con <50% adopción
☐ Reporte semanal a gerentes
```

### T021: Comunicación Institucional
```
DESCRIPCIÓN: Que Dirección respalde visiblemente
TIEMPO: 2 horas (+ gestión)
ESTADO: ☐ Pendiente

SUBTAREAS:
☐ Email de Dirección anunciando MOMENTUS
☐ Objetivo claro: "Todos usan esto para planificar"
☐ Fecha límite: "A partir de X fecha es obligatorio"
```

---

## 📊 CRONOGRAMA VISUAL

```
ENERO 2026
──────────────────────────────────────────────────────────────────
Semana 3 (20-24)  │ Semana 4 (27-31)  
──────────────────────────────────────────────────────────────────
FASE 1: TÉCNICO
T001 Validar FE   ████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
T002 Notificacion ░░░░████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
T003 Dashboard    ░░░░░░░░░░░░██████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
T004 Reportes     ░░░░░░░░░░░░░░░░░░████████░░░░░░░░░░░░░░░░░░░░░

FEBRERO 2026
──────────────────────────────────────────────────────────────────
Semana 1 (3-7)    │ Semana 2 (10-14)  │ Semana 3 (17-21) │ S4
──────────────────────────────────────────────────────────────────
FASE 2: DATOS
T011 Importar emp ████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
T012 Importar org ░░██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
T013 Crear usuarios░░██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

FASE 3: PILOTO
T016 Piloto 3 pers░░░░████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░
T018 Piloto 30 per░░░░░░░░░░░░░░░░░░░░████████████████░░░░░░░░░░░

MARZO 2026
──────────────────────────────────────────────────────────────────
Semana 1 (3-7)    │ Semana 2 (10-14)  │ Semana 3 (17-21) │ S4
──────────────────────────────────────────────────────────────────
FASE 4: ESCALA
T019 Rollout      ████████████████████████████████████████████████

═══════════════════════════════════════════════════════════════════
META: 10/10 para finales de MARZO 2026
═══════════════════════════════════════════════════════════════════
```

---

## ✅ CHECKLIST RESUMEN

### Semana Actual (14-17 Ene)
```
☐ T001: Validar frontend manualmente
☐ Elegir Campeón de Cultura
☐ Elegir Tester
```

### Próxima Semana (20-24 Ene)
```
☐ T002: Implementar notificaciones
☐ T003: Mejorar Mi Equipo
☐ T013: Crear usuarios piloto
```

### Semana 27-31 Ene
```
☐ T004: Reportes básicos
☐ T011: Importar empleados
☐ Preparar material capacitación
```

### Febrero
```
☐ T016: Piloto 3 personas (semana 1-2)
☐ T018: Piloto 30 personas (semana 3-4)
```

### Marzo
```
☐ T019: Rollout completo
☐ T020: Monitorear adopción
☐ Celebrar 10/10 🎉
```

---

## 🎯 DEFINICIÓN DE 10/10

```
┌─────────────────────────────────────────────────────────────────┐
│                                                                 │
│  EL SISTEMA ESTÁ EN 10/10 CUANDO:                              │
│                                                                 │
│  ✅ 2000 empleados pueden usar el sistema                      │
│  ✅ 80%+ hacen check-in diariamente                            │
│  ✅ Los jefes VEN el plan de su equipo cada día                │
│  ✅ Los bloqueos se resuelven en <48 horas                     │
│  ✅ Las reuniones de status se redujeron 50%                   │
│  ✅ Dirección tiene dashboard de productividad                 │
│  ✅ El sistema es parte de la cultura, no una carga            │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

---

*Documento creado: 14 de Enero 2026*  
*Revisión: Semanal*

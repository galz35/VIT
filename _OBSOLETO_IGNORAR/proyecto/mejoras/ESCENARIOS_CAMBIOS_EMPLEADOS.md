# 🔄 Escenarios de Cambios de Empleados - Análisis Profundo

> **Fecha:** 2026-01-14  
> **Versión:** 1.0  
> **Estado:** Análisis crítico para implementación

Este documento analiza todos los escenarios de la vida real donde un empleado cambia de posición, área, o deja la organización, y cómo Momentus debe manejar cada caso.

---

## 📊 Modelo de Datos Actual

```
┌────────────────────────────────────────────────────────────────────────────┐
│                           ESTRUCTURA ACTUAL                                 │
├────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│   p_Usuarios                    p_empleados                                │
│   ├── idUsuario (PK)            ├── carnet (PK)                            │
│   ├── correo                    ├── correo (link implícito)                │
│   ├── rol                       ├── area, cargo, departamento              │
│   └── activo                    ├── carnetJefe1, carnetJefe2...            │
│         │                       └── activo                                 │
│         │                             │                                    │
│         ↓                             ↓                                    │
│   p_TareaAsignados              VISIBILIDAD                                │
│   ├── idUsuario ────────────→   (quién puede ver a quién)                  │
│   └── idTarea                                                              │
│         │                                                                  │
│         ↓                                                                  │
│   p_Tareas                                                                 │
│   ├── idTarea (PK)                                                         │
│   ├── idCreador                                                            │
│   ├── estado                                                               │
│   └── titulo, descripcion...                                               │
│                                                                             │
└────────────────────────────────────────────────────────────────────────────┘
```

---

## 🎭 ESCENARIO 1: Promoción Interna (Misma Área)

### Contexto
> **María García** es "Analista de Sistemas" y la promueven a "Coordinadora de Sistemas" 
> en el mismo departamento de TI. Ahora ella tendrá 3 personas a su cargo.

### Cambios en Datos
| Campo | Antes | Después |
|-------|-------|---------|
| `cargo` | Analista de Sistemas | Coordinadora de Sistemas |
| `carnetJefe1` | EMP100 (su jefe) | EMP100 (mismo jefe) |
| `area` | TI | TI (sin cambio) |

### ¿Qué pasa con sus tareas?
| Tipo de Tarea | Acción Necesaria |
|---------------|------------------|
| Tareas técnicas en curso | ✅ Puede completarlas o delegarlas |
| Nuevas tareas de coordinación | Nuevas, asignadas después |
| Historial | Se mantiene intacto |

### Flujo Visual
```
                    ANTES                          DESPUÉS
                    
     Director TI                      Director TI
         │                                 │
    Jefe Sistemas                     Jefe Sistemas
         │                                 │
    ┌────┴────┐                      ┌────┴────┐
    │         │                      │         │
  María    Pedro                  MARÍA      Pedro
(Analista)                     (Coordinadora)
                                      │
                               ┌──────┼──────┐
                               │      │      │
                             Ana   Carlos  Luis
                           (nuevos a su cargo)
```

### Impacto en Visibilidad
- ✅ María ahora puede VER las tareas de Ana, Carlos y Luis
- ✅ El Jefe Sistemas sigue viendo las tareas de María
- ✅ El historial de María se mantiene completo

### 🔴 Problema Potencial
María podría tener tareas técnicas muy específicas que ya no debería hacer:
- "Desarrollo de módulo X" → Debería reasignar a Ana
- "Soporte nivel 2" → Ya no es su responsabilidad

### ✅ Solución Recomendada
```
1. Antes de la promoción:
   - Revisar tareas pendientes de María
   - Decidir: ¿las completa? ¿las reasigna?
   
2. Después de la promoción:
   - Jefe Sistemas asigna nuevas tareas de coordinación
   - María puede reasignar sus tareas técnicas a su nuevo equipo
```

---

## 🎭 ESCENARIO 2: Transferencia a Otra Área

### Contexto
> **Juan Pérez** trabaja como "Soporte Técnico" en el área de TI.
> Es transferido a "Operaciones de Red" en el área de Telecomunicaciones.
> Nuevo jefe, nuevo equipo, nuevas responsabilidades.

### Cambios en Datos
| Campo | Antes | Después |
|-------|-------|---------|
| `area` | TI | Telecomunicaciones |
| `departamento` | Soporte | Operaciones de Red |
| `cargo` | Técnico de Soporte | Técnico de Redes |
| `carnetJefe1` | EMP100 (Jefe TI) | EMP200 (Jefe Telecom) |

### Flujo Visual
```
     ANTES                                 DESPUÉS
     
   Gerente TI                           Gerente Telecom
       │                                     │
   Jefe Soporte                          Jefe Redes
       │                                     │
  ┌────┴────┐                           ┌────┴────┐
  │         │                           │         │
JUAN      Ana                        Roberto   JUAN
                                              (nuevo)
```

### 🔴 Problemas Críticos

#### Problema 1: Tareas huérfanas en TI
```
Ticket #1234: "Revisar servidor de correos"
  - Asignado a: Juan
  - Estado: En Curso
  - Contexto: Solo Juan conoce los detalles
```
**¿Qué pasa?** → La tarea queda asignada a Juan, pero ya no trabaja en TI.
El nuevo jefe de Juan (Jefe Redes) no sabe nada de servidores de correo.

#### Problema 2: Visibilidad perdida
- ❌ Jefe TI ya NO puede ver las tareas de Juan
- ❌ PERO las tareas de TI siguen asignadas a Juan
- 😱 Tarea crítica podría quedar invisible para el área de TI

#### Problema 3: Historial fragmentado
- ¿Cómo sabe el Jefe Redes qué experiencia tiene Juan?
- ¿Cómo hace TI auditoría de quién trabajó en qué?

### ✅ Solución Integral Propuesta

```javascript
// Nueva entidad: Transferencia de Empleado
interface TransferenciaEmpleado {
  id: number;
  carnet: string;
  fechaTransferencia: Date;
  
  // Área origen
  areaOrigen: string;
  cargoOrigen: string;
  jefeOrigenCarnet: string;
  
  // Área destino
  areaDestino: string;
  cargoDestino: string;
  jefeDestinoCarnet: string;
  
  // Manejo de tareas
  tareasTransferidas: number;  // cantidad reasignada
  tareasArchivadas: number;    // cantidad archivada
  tareasMantenidasConAcceso: number; // Juan sigue colaborando
  
  motivo: string;
  aprobadoPor: string;
}
```

### Flujo de Transferencia Ideal
```
┌─────────────────────────────────────────────────────────────┐
│     PROCESO DE TRANSFERENCIA DE ÁREA                        │
├─────────────────────────────────────────────────────────────┤
│                                                              │
│  1️⃣ RRHH notifica transferencia pendiente                   │
│        ↓                                                     │
│  2️⃣ Sistema lista tareas pendientes del empleado            │
│        ↓                                                     │
│  3️⃣ Jefe ORIGEN decide por cada tarea:                      │
│     ┌─────────────────────────────────────────────┐          │
│     │ □ Reasignar a [empleado del área]           │          │
│     │ □ Empleado la completa antes de irse        │          │
│     │ □ Archivar/Cancelar (ya no es necesaria)    │          │
│     │ □ Mantener acceso temporal (colaboración)   │          │
│     └─────────────────────────────────────────────┘          │
│        ↓                                                     │
│  4️⃣ Se ejecuta la transferencia en p_empleados              │
│        ↓                                                     │
│  5️⃣ Jefe DESTINO puede asignar nuevas tareas                │
│        ↓                                                     │
│  6️⃣ Se registra historial de transferencia                  │
│                                                              │
└─────────────────────────────────────────────────────────────┘
```

---

## 🎭 ESCENARIO 3: Renuncia del Empleado

### Contexto
> **Carlos Méndez** renuncia a la empresa.
> Tiene 5 tareas pendientes y 2 proyectos en curso.
> Su último día es en 2 semanas.

### Cambios en Datos
| Campo | Antes | Después |
|-------|-------|---------|
| `activo` en p_empleados | true | false |
| `activo` en p_Usuarios | true | false |
| `fechaBaja` | null | 2026-01-28 |

### 🔴 Problemas Críticos

#### Problema 1: Tareas sin responsable
```
Si Carlos tenía:
- Tarea A (En Curso) → ❌ Queda en limbo
- Tarea B (Pendiente) → ❌ Nadie la ve
- Proyecto X (líder) → ❌ Proyecto sin líder
```

#### Problema 2: Conocimiento perdido
- Carlos era el único que sabía hacer X
- No hay documentación de lo que avanzó
- Check-ins desaparecen de la vista del jefe

### ✅ Solución Integral Propuesta

```javascript
// Proceso de offboarding
interface ProcesoOffboarding {
  carnet: string;
  fechaNotificacion: Date;
  ultimoDiaLaboral: Date;
  
  // Tareas a reasignar
  tareasReasignadas: {
    idTarea: number;
    nuevoResponsable: number; // idUsuario
    fechaReasignacion: Date;
  }[];
  
  // Proyectos a transferir
  proyectosTransferidos: {
    idProyecto: number;
    nuevoLider: number;
  }[];
  
  // Entrega de conocimiento
  documentacionEntregada: boolean;
  reunionHandover: boolean;
  
  // Auditoría
  jefeQueAprueba: string;
  fechaDesactivacion: Date;
}
```

### Flujo de Offboarding
```
┌─────────────────────────────────────────────────────────────┐
│     PROCESO DE OFFBOARDING (BAJA DE EMPLEADO)               │
├─────────────────────────────────────────────────────────────┤
│                                                              │
│  1️⃣ RRHH registra fecha de baja pendiente                   │
│        ↓                                                     │
│  2️⃣ Sistema ALERTA al jefe: "Carlos tiene 5 tareas"         │
│        ↓                                                     │
│  3️⃣ Jefe ve lista de tareas con opciones:                   │
│     ┌─────────────────────────────────────────────┐          │
│     │ Tarea A: "Revisar reportes"                 │          │
│     │   → Reasignar a: [María ▼]                  │          │
│     │                                             │          │
│     │ Tarea B: "Documentar proceso X"             │          │
│     │   → Reasignar a: [Pedro ▼]                  │          │
│     │                                             │          │
│     │ Tarea C: "Llamar a proveedor"               │          │
│     │   → Cancelar (ya no aplica) [X]             │          │
│     └─────────────────────────────────────────────┘          │
│        ↓                                                     │
│  4️⃣ Carlos documenta estado de cada tarea (notas/handover)  │
│        ↓                                                     │
│  5️⃣ En fecha de baja:                                       │
│     - p_empleados.activo = false                             │
│     - p_Usuarios.activo = false                              │
│     - Login deshabilitado                                    │
│        ↓                                                     │
│  6️⃣ Historial de Carlos se MANTIENE para auditoría          │
│     - Check-ins pasados: visibles en reportes                │
│     - Tareas completadas: historial intacto                  │
│                                                              │
└─────────────────────────────────────────────────────────────┘
```

---

## 🎭 ESCENARIO 4: Jefe que Renuncia o es Transferido

### Contexto
> **Roberto Sánchez** es "Jefe de Desarrollo" con 8 personas a su cargo.
> Es promovido a "Gerente de Innovación" en otra división.

### 🔴 Impacto en Cascada
```
              ANTES                           DESPUÉS
              
        Gerente TI                        Gerente TI
            │                                  │
    ┌───────┴───────┐                 ┌───────┴───────┐
    │               │                 │               │
 ROBERTO         Ana              [VACANTE]         Ana
(Jefe Dev)   (Jefe QA)           (Jefe Dev)     (Jefe QA)
    │                                  │
┌───┴───┬───┐                    ┌───┴───┬───┐
│   │   │   │                    │   │   │   │
A   B   C   D                    A   B   C   D
                                 ↑
                          ¿Quién es su jefe ahora?
                          ¿Quién ve sus tareas?
```

### Problemas
1. **Visibilidad rota**: A, B, C, D ya no tienen jefe inmediato definido
2. **Aprobaciones pendientes**: Si Roberto debía aprobar algo, queda bloqueado
3. **Reuniones 1:1**: ¿Quién hace seguimiento al equipo?

### ✅ Solución: Jefe Interino Automático

```javascript
// Cuando un jefe es transferido/dado de baja
interface TransferenciaJefe {
  carnetJefeSaliente: string;
  carnetJefeInterino: string; // Puede ser el jefe del jefe
  
  empleadosAfectados: string[]; // carnets
  fechaEfectiva: Date;
  
  // Opciones
  asignarJefeInterino: boolean;
  elevarAlSiguienteNivel: boolean; // Gerente TI asume temporalmente
}
```

### Flujo Automático
```
1. Roberto (Jefe) es transferido
   ↓
2. Sistema detecta: 8 empleados con carnetJefe1 = Roberto
   ↓
3. Opciones:
   a) Asignar jefe interino (Ana temporalmente)
   b) Elevar al siguiente nivel (Gerente TI ve directamente)
   c) Esperar nuevo jefe (riesgo de tareas invisibles)
   ↓
4. Actualizar p_empleados.carnetJefe1 para los 8 empleados
   ↓
5. Notificar al nuevo jefe/interino
```

---

## 🎭 ESCENARIO 5: Reestructuración Organizacional

### Contexto
> La empresa decide fusionar "Soporte Técnico" y "Help Desk" en un nuevo 
> departamento llamado "Centro de Servicios TI".
> 15 empleados cambian de área simultáneamente.

### 🔴 Impacto Masivo
```
            ANTES                              DESPUÉS
            
┌──────────────┬──────────────┐        ┌─────────────────────┐
│   Soporte    │   Help Desk  │   →    │ Centro Servicios TI │
│   Técnico    │              │        │                     │
├──────────────┼──────────────┤        ├─────────────────────┤
│ 8 empleados  │ 7 empleados  │        │   15 empleados      │
│ Jefe: Mario  │ Jefe: Laura  │        │   Jefe: Mario       │
│              │              │        │   (Laura → otra     │
│              │              │        │    posición)        │
└──────────────┴──────────────┘        └─────────────────────┘
```

### Problemas
1. **Múltiples transferencias**: 15 empleados a procesar
2. **Jefe redundante**: Laura necesita nueva posición
3. **Proyectos mixtos**: Tareas de ambos equipos ahora son del mismo
4. **Métricas históricas**: ¿Cómo reportar por el área anterior?

### ✅ Solución: Importación Masiva con Modo MERGE

```javascript
// El sistema ya soporta esto via Excel import
// Archivo Excel con 15 filas actualizando:
// - area: "Centro de Servicios TI"
// - carnetJefe1: "EMP_MARIO"
// - departamento: "Centro Servicios"

POST /api/acceso/empleados/importar
{
  "modo": "MERGE",  // Actualiza existentes, no borra
  "empleados": [/* 15 registros */]
}
```

### Consideración Importante
```
ANTES de la importación masiva:
1. Revisar tareas pendientes de AMBOS equipos
2. Decidir qué hacer con tareas de Laura (si cambia de rol)
3. Comunicar a los 15 empleados

DESPUÉS de la importación:
1. Mario ahora ve las tareas de los 15
2. Historial de cada empleado se mantiene
3. Reportes pueden filtrar por fecha + área
```

---

## 🎭 ESCENARIO 6: Empleado con Múltiples Roles (Matriz)

### Contexto
> **Diana López** trabaja 50% en "Marketing" y 50% en "Producto".
> Tiene dos jefes: Jefe de Marketing y Jefe de Producto.
> Ambos le asignan tareas.

### Estructura Actual
```
El sistema SOPORTA esto parcialmente:
- carnetJefe1: Jefe Marketing (jefe principal)
- carnetJefe2: Jefe Producto (jefe secundario)

Visibilidad:
- Jefe Marketing VE las tareas de Diana ✅
- Jefe Producto VE las tareas de Diana ✅
- Gerente (jefe de ambos) VE las tareas de Diana ✅
```

### 🔴 Problema Potencial
```
Si Diana tiene sobrecarga:
- 10 tareas de Marketing + 8 tareas de Producto = 18 tareas
- ¿Quién prioriza? ¿Marketing o Producto?
- ¿Cómo se coordinan los dos jefes?
```

### ✅ El Sistema Ya Maneja Esto
- Ambos jefes ven las tareas de Diana
- Diana ve todo su backlog
- La priorización es responsabilidad de Diana + sus jefes

---

## 📊 HISTORIAL LABORAL - Solución Completa

### Necesidad
> "Quiero ver todo lo que ha trabajado Juan en la organización,
> incluyendo cuando estaba en TI y ahora que está en Telecom"

### Estructura Propuesta

```javascript
// Nueva entidad: Historial de Posiciones
@Entity({ name: 'p_historial_posiciones' })
class HistorialPosicion {
  @PrimaryGeneratedColumn()
  id: number;
  
  @Column()
  carnet: string;
  
  @Column()
  fechaInicio: Date;
  
  @Column({ nullable: true })
  fechaFin: Date; // null = posición actual
  
  @Column()
  area: string;
  
  @Column()
  cargo: string;
  
  @Column()
  departamento: string;
  
  @Column()
  carnetJefe: string;
  
  @Column()
  motivo: 'INGRESO' | 'PROMOCION' | 'TRANSFERENCIA' | 'REESTRUCTURA';
}
```

### Vista de Historial
```
┌─────────────────────────────────────────────────────────────────────┐
│  HISTORIAL LABORAL: Juan Pérez (EMP456)                             │
├─────────────────────────────────────────────────────────────────────┤
│                                                                      │
│  📅 2024-03-15 - 2025-08-20 | TI - Soporte Técnico                  │
│     Cargo: Técnico de Soporte                                        │
│     Jefe: Mario González                                             │
│     Tareas completadas: 145                                          │
│     Check-ins: 320                                                   │
│     Motivo fin: TRANSFERENCIA                                        │
│                                                                      │
│  📅 2025-08-21 - Actual | Telecom - Operaciones                      │
│     Cargo: Técnico de Redes                                          │
│     Jefe: Roberto Sánchez                                            │
│     Tareas completadas: 28                                           │
│     Check-ins: 45                                                    │
│     Motivo fin: (actual)                                             │
│                                                                      │
│  ─────────────────────────────────────────────────────────────────── │
│  RESUMEN TOTAL                                                       │
│  • Tiempo en empresa: 1 año, 10 meses                                │
│  • Áreas: 2 (TI, Telecom)                                            │
│  • Tareas completadas: 173                                           │
│  • Check-ins totales: 365                                            │
│  • Bloqueos reportados: 12                                           │
│                                                                      │
└─────────────────────────────────────────────────────────────────────┘
```

---

## 🔧 RESUMEN: Funcionalidades a Implementar

### Prioridad ALTA (Necesario para producción)
| Funcionalidad | Descripción | Esfuerzo |
|---------------|-------------|----------|
| Proceso de Offboarding | Reasignar tareas al dar de baja empleado | 3 días |
| Alertas de tareas huérfanas | Notificar cuando empleado se va con tareas | 1 día |
| Jefe interino automático | Asignar visibilidad temporal | 2 días |

### Prioridad MEDIA (Mejora significativa)
| Funcionalidad | Descripción | Esfuerzo |
|---------------|-------------|----------|
| Historial de posiciones | Tabla + API para ver trayectoria | 3 días |
| Log de transferencias | Registrar cada cambio de área | 2 días |
| Reasignación masiva | Transferir multiple tareas a la vez | 2 días |

### Prioridad BAJA (Nice to have)
| Funcionalidad | Descripción | Esfuerzo |
|---------------|-------------|----------|
| Dashboard de RRHH | Vista de movimientos organizacionales | 5 días |
| Predicción de carga | Alertar cuando empleado está sobrecargado | 3 días |

---

## ❓ Preguntas Clave para Definir Implementación

1. **¿Quién tiene permiso de transferir empleados?**
   - Solo RRHH
   - RRHH + Jefes de área
   - Solo Admin del sistema

2. **¿Cuánto tiempo antes se notifica una transferencia?**
   - Inmediato (mismo día)
   - 1 semana antes
   - Depende del caso

3. **¿Qué pasa con historial cuando un empleado es despedido?**
   - Se mantiene indefinidamente
   - Se anonimiza después de X años
   - Se archiva pero accesible

4. **¿Un jefe puede ver el historial completo de un empleado nuevo?**
   - Sí, todo el historial de la empresa
   - Solo desde que está en su área
   - Solo resumen (no tareas específicas)

---

## 📋 CONCLUSIÓN

El sistema actual de Momentus maneja correctamente:
- ✅ Visibilidad basada en jerarquía
- ✅ Múltiples jefes (carnetJefe1, carnetJefe2, etc.)
- ✅ Actualización masiva via Excel import

**Lo que FALTA implementar para producción real:**
- ⚠️ Proceso de offboarding con reasignación de tareas
- ⚠️ Alertas de tareas huérfanas
- ⚠️ Historial de posiciones para trazabilidad
- ⚠️ Jefe interino automático cuando hay vacantes

**Mi recomendación:** Implementar primero el proceso de offboarding, ya que es el escenario más común y más crítico. Las renuncias ocurren cada mes.

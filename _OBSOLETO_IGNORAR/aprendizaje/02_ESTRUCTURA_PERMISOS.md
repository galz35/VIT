# ANÁLISIS COMPLETO DE ESTRUCTURA ORGANIZACIONAL Y PERMISOS
## Fecha de Análisis: 12/1/2026, 9:18:28 p. m.

---

# PARTE 1: ESTADO ACTUAL DE LA BASE DE DATOS

## 1.1 Resumen General

| Concepto | Cantidad |
|----------|----------|
| Total Nodos Organizacionales | 361 |
| Nodos Activos con Empleados | 142 |
| Nodos Vacíos (sin empleados) | 219 |
| Total Empleados Activos | 1911 |
| Empleados sin Nodo Asignado | 0 |

## 1.2 Distribución por Tipo de Nodo

| Tipo | Nodos | Empleados Asignados |
|------|-------|---------------------|
| Dirección | 1 | 966 |
| Gerencia | 67 | 218 |
| Subgerencia | 73 | 64 |
| Equipo | 220 | 664 |

## 1.3 Distribución por Rol en Organización

| Rol | Cantidad |
|-----|----------|
| Colaborador | 1622 |
| Lider | 290 |

## 1.4 Top 20 Nodos con Más Empleados

| # | Nodo | Tipo | Empleados |
|---|------|------|-----------|
| 1 | Claro Nicaragua | Dirección | 966 |
| 2 | 0 | Equipo | 342 |
| 3 | NI GERENCIA CENTRO DE ATENCION AL CLIENTE | Gerencia | 216 |
| 4 | NI GERENCIA OPERACIONES PLANTA INTERNA | Subgerencia | 34 |
| 5 | NI AREA NORESTE (SMRE) | Equipo | 18 |
| 6 | NI COORD. DE NOC CENTRO DE MANDO OPERACIONES | Equipo | 14 |
| 7 | NI SUPERV.  CONMUTACION | Equipo | 9 |
| 8 | NI GERENCIA COMERCIAL MOVIL Y SERVICIOS FIJOS | Subgerencia | 8 |
| 9 | NI PLANTA EXTERNA LEON | Equipo | 8 |
| 10 | NI CAC CIUDAD JARDIN | Equipo | 7 |
| 11 | NI ALMACEN CARRETERA MASAYA | Equipo | 7 |
| 12 | NI PLANTA EXTERNA ESTELI-2 | Equipo | 7 |
| 13 | NI TECNICA HFC CHINANDEGA | Equipo | 7 |
| 14 | NI TECNICA HFC CARAZO | Equipo | 6 |
| 15 | NI COORD. COMERCIAL MOVIL Z-OCCIDENTE-2 | Equipo | 5 |
| 16 | NI CAC BELLO HORIZONTE | Equipo | 5 |
| 17 | NI TECNICA HFC  MATAGALPA | Equipo | 5 |
| 18 | NI R-SVA | Equipo | 5 |
| 19 | NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDA | Subgerencia | 5 |
| 20 | NI CAC MONSEÑOR LEZCANO | Equipo | 5 |

---

# PARTE 2: PROBLEMAS DETECTADOS

1. ⚠️ 966 empleados asignados directamente a la Dirección (debería ser ~2-5 max)
2. ⚠️ 63 nodos con nombre vacío o "0" (datos corruptos)
3. ⚠️ 342 empleados asignados a nodos con nombre "0" o vacío

## 2.1 Problema Principal: Empleados en Nodo Raíz

Actualmente hay **966 empleados** asignados directamente al nodo "Claro Nicaragua" (Dirección).

**Lo correcto sería:**
- Solo el Director General (Antonio Vega) y su asistente (Victoria Roman) en la Dirección
- El resto de empleados asignados a sus Gerencias/Subgerencias/Equipos correspondientes

**Impacto:**
- El sistema calcula que cualquier persona en el nodo Dirección tiene TODOS los empleados como subordinados
- Esto distorsiona los reportes y la lógica de liderazgo

## 2.2 Nodos Corruptos (nombre "0")

Hay 63 nodos con nombre vacío o "0", con 342 empleados asignados.

---

# PARTE 3: ESTRUCTURA JERÁRQUICA CORRECTA

## 3.1 Jerarquía Esperada

```
📂 CLARO NICARAGUA (Dirección)
    └── Antonio Vega (Director General, rol: Lider/Director)
    └── Victoria Roman (Asistente, rol: Colaborador)
    │
    ├── 📁 GERENCIA DE RECURSOS HUMANOS
    │   ├── [Gerente RRHH] (rol: Lider)
    │   ├── 📁 SUBGERENCIA DE RECURSOS HUMANOS
    │   │   ├── [Subgerente] (rol: Lider)
    │   │   └── 📁 COORD. DE RECURSOS HUMANOS
    │   │       ├── [Coordinador] (rol: Lider)
    │   │       └── [Colaboradores] (rol: Colaborador/Miembro)
    │   └── 📁 SUBGERENCIA DE COMPENSACIONES
    │       └── ...
    │
    ├── 📁 GERENCIA COMERCIAL
    │   └── ...
    │
    └── 📁 GERENCIA TÉCNICA
        └── ...
```

## 3.2 Lógica de Liderazgo

Un empleado es **LÍDER REAL** si:
1. Tiene rol "Lider", "Gerente" o "Director" en su nodo
2. El nodo donde está tiene nodos hijos
3. Los nodos hijos tienen empleados asignados

Ejemplo:
- Gerente de RRHH → Es líder porque su gerencia tiene subgerencias con empleados
- Coordinador de Reclutamiento → Es líder si tiene colaboradores en su equipo
- Colaborador en equipo sin hijos → NO es líder

---

# PARTE 4: SISTEMA DE PERMISOS PROPUESTO

## 4.1 Permisos Actuales (Basados en Jerarquía)

Actualmente el sistema usa la **jerarquía organizacional** para determinar quién ve a quién:

```
┌─────────────────────────────────────────────────────────────────┐
│                     PERMISOS POR JERARQUÍA                      │
├─────────────────────────────────────────────────────────────────┤
│ Usuario → Ve empleados de su nodo + todos los nodos hijos      │
│                                                                 │
│ Gerente RRHH → Ve todos en RRHH (Subgerencias, Equipos)         │
│ Coordinador → Ve solo su equipo                                 │
│ Colaborador → Ve solo sus propias tareas                        │
└─────────────────────────────────────────────────────────────────┘
```

## 4.2 PROPUESTA: Permisos Especiales

Para manejar los **casos especiales** que mencionas (secretarias, accesos cruzados, etc.), propongo crear una nueva tabla de permisos:

### Tabla: `p_PermisosEspeciales`

| Campo | Tipo | Descripción |
|-------|------|-------------|
| idPermiso | SERIAL PK | Identificador único |
| idUsuario | INT FK | Usuario que recibe el permiso |
| tipoPermiso | ENUM | 'VER_USUARIO', 'VER_NODO', 'VER_PROYECTO', 'NEGAR_NODO' |
| idObjetivo | INT | ID del usuario/nodo/proyecto afectado |
| permisoNivel | ENUM | 'LECTURA', 'ESCRITURA', 'COMPLETO' |
| otorgadoPor | INT FK | Quién dio el permiso |
| fechaInicio | DATE | Cuándo inicia el permiso |
| fechaFin | DATE NULL | Cuándo expira (NULL = permanente) |
| motivo | TEXT | Razón del permiso especial |
| activo | BOOLEAN | Si está activo |

### Tipos de Permisos Especiales:

#### 1. VER_USUARIO
Permite ver las tareas/agenda de un usuario específico, aunque no sea subordinado.

```
Ejemplo: Secretaria de Gerente puede ver tareas de empleados específicos
┌────────────────────────────────────────────┐
│ idPermiso: 1                               │
│ idUsuario: Victoria Roman (secretaria)     │
│ tipoPermiso: VER_USUARIO                   │
│ idObjetivo: 456 (Juan Pérez - Comercial)   │
│ permisoNivel: LECTURA                      │
│ otorgadoPor: Antonio Vega                  │
│ motivo: "Seguimiento de proyectos clave"   │
└────────────────────────────────────────────┘
```

#### 2. VER_NODO
Permite ver todos los empleados de un nodo (área/gerencia), aunque no sea su jefe.

```
Ejemplo: Jefe de Proyecto de TI ve a personal de Comercial para coordinación
┌────────────────────────────────────────────┐
│ idPermiso: 2                               │
│ idUsuario: María López (Jefe Proyectos TI) │
│ tipoPermiso: VER_NODO                      │
│ idObjetivo: 129 (Gerencia Comercial)       │
│ permisoNivel: LECTURA                      │
│ otorgadoPor: Antonio Vega                  │
│ motivo: "Proyecto integración CRM"         │
└────────────────────────────────────────────┘
```

#### 3. VER_PROYECTO
Permite ver tareas de un proyecto específico, aunque no sea participante directo.

```
Ejemplo: Auditor interno ve tareas del proyecto de Compliance
┌────────────────────────────────────────────┐
│ idPermiso: 3                               │
│ idUsuario: Carlos Ruiz (Auditor)           │
│ tipoPermiso: VER_PROYECTO                  │
│ idObjetivo: 45 (Proyecto Compliance 2024)  │
│ permisoNivel: LECTURA                      │
│ otorgadoPor: Antonio Vega                  │
│ motivo: "Auditoría trimestral"             │
└────────────────────────────────────────────┘
```

#### 4. NEGAR_NODO (Excepción negativa)
Bloquea acceso a un nodo que normalmente vería por jerarquía.

```
Ejemplo: Gerente General no debe ver información de Auditoría Interna
┌────────────────────────────────────────────┐
│ idPermiso: 4                               │
│ idUsuario: Director Comercial              │
│ tipoPermiso: NEGAR_NODO                    │
│ idObjetivo: 999 (Auditoría Interna)        │
│ permisoNivel: COMPLETO (bloquea todo)      │
│ otorgadoPor: Directorio                    │
│ motivo: "Independencia de auditoría"       │
└────────────────────────────────────────────┘
```

## 4.3 Lógica de Evaluación de Permisos

```
función puedeVerUsuario(solicitante, objetivo):
    
    // 1. NEGAR primero (máxima prioridad)
    si existe NEGAR_NODO donde solicitante tiene negado el nodo del objetivo:
        return FALSO
    
    // 2. Permisos especiales (segunda prioridad)
    si existe VER_USUARIO donde solicitante tiene permiso para objetivo:
        return nivel_permiso
    
    si existe VER_NODO donde solicitante tiene permiso para nodo del objetivo:
        return nivel_permiso
    
    // 3. Jerarquía organizacional (fallback)
    si objetivo está en subárbol de solicitante:
        return VERDADERO (por jerarquía)
    
    // 4. Default: sin acceso
    return FALSO
```

## 4.4 Niveles de Permiso

| Nivel | Puede Ver | Puede Editar | Puede Asignar |
|-------|-----------|--------------|---------------|
| LECTURA | ✅ Tareas, Check-ins, Bloqueos | ❌ | ❌ |
| ESCRITURA | ✅ Todo | ✅ Comentarios, Estados | ❌ |
| COMPLETO | ✅ Todo | ✅ Todo | ✅ Puede asignar tareas |

---

# PARTE 5: IMPLEMENTACIÓN SUGERIDA

## 5.1 Paso 1: Crear Tabla de Permisos

```sql
CREATE TABLE "p_PermisosEspeciales" (
    "idPermiso" SERIAL PRIMARY KEY,
    "idUsuario" INTEGER NOT NULL REFERENCES "p_Usuarios"("idUsuario"),
    "tipoPermiso" VARCHAR(20) NOT NULL CHECK ("tipoPermiso" IN ('VER_USUARIO', 'VER_NODO', 'VER_PROYECTO', 'NEGAR_NODO')),
    "idObjetivo" INTEGER NOT NULL,
    "permisoNivel" VARCHAR(15) NOT NULL DEFAULT 'LECTURA' CHECK ("permisoNivel" IN ('LECTURA', 'ESCRITURA', 'COMPLETO')),
    "otorgadoPor" INTEGER REFERENCES "p_Usuarios"("idUsuario"),
    "fechaInicio" DATE NOT NULL DEFAULT CURRENT_DATE,
    "fechaFin" DATE NULL,
    "motivo" TEXT,
    "activo" BOOLEAN DEFAULT TRUE,
    "fechaCreacion" TIMESTAMP DEFAULT NOW(),
    UNIQUE("idUsuario", "tipoPermiso", "idObjetivo")
);

CREATE INDEX idx_permisos_usuario ON "p_PermisosEspeciales"("idUsuario", "activo");
CREATE INDEX idx_permisos_objetivo ON "p_PermisosEspeciales"("tipoPermiso", "idObjetivo");
```

## 5.2 Paso 2: Actualizar Servicio de Permisos

El servicio actual (tasks.service.ts) usa `getSubtreeUserIds` para obtener subordinados.
Se debe modificar para:

1. Llamar a `getSubtreeUserIds` (jerarquía normal)
2. Agregar usuarios de `VER_USUARIO` especiales
3. Agregar usuarios de nodos en `VER_NODO` especiales
4. Restar usuarios cuyo nodo esté en `NEGAR_NODO`

## 5.3 Paso 3: UI de Administración

Crear pantalla en /admin para:
- Ver permisos especiales existentes
- Agregar nuevos permisos
- Revocar permisos
- Historial de cambios

---

# PARTE 6: ACCIONES INMEDIATAS RECOMENDADAS

## 6.1 Corregir Datos Actuales

1. **Reasignar empleados del nodo raíz** a sus nodos correctos
   - Mantener solo Antonio Vega y Victoria Roman en Dirección
   - Mover el resto a sus Gerencias/Equipos correspondientes

2. **Limpiar nodos corruptos** (nombre "0")
   - Reasignar empleados a nodos válidos
   - Desactivar o eliminar nodos corruptos

3. **Validar líderes**
   - Revisar que el rol "Lider" coincida con tener subordinados reales

## 6.2 Para el Módulo de Importación Excel

Columnas necesarias en el Excel:
| Columna | Descripción | Ejemplo |
|---------|-------------|---------|
| Nombre | Nombre completo | JUAN CARLOS PEREZ |
| Correo | Email corporativo | juan.perez@claro.com.ni |
| Teléfono | Opcional | 8888-1234 |
| Área | Nombre del nodo | NI GERENCIA DE RECURSOS HUMANOS |
| Cargo | Rol en el nodo | Lider / Colaborador / Miembro |
| Jefe Directo | Correo del jefe | maria.lopez@claro.com.ni |

## 6.3 Prioridad de Tareas

| # | Tarea | Prioridad | Esfuerzo |
|---|-------|-----------|----------|
| 1 | Obtener Excel con estructura correcta | 🔴 Alta | Depende de RRHH |
| 2 | Crear módulo de importación | 🔴 Alta | 2-3 días |
| 3 | Ejecutar migración correctiva | 🔴 Alta | 1 día |
| 4 | Crear tabla p_PermisosEspeciales | 🟡 Media | 1 hora |
| 5 | Modificar lógica de permisos | 🟡 Media | 1 día |
| 6 | UI de administración de permisos | 🟢 Baja | 2 días |

---

# RESUMEN

La estructura actual tiene un **problema de migración**: la mayoría de empleados están asignados al nodo raíz "Claro Nicaragua" en lugar de sus áreas específicas. Esto causa que el sistema calcule incorrectamente quién es jefe de quién.

**Solución:**
1. Obtener datos correctos desde Excel/RRHH
2. Reasignar empleados a nodos correctos
3. Implementar tabla de permisos especiales para casos excepcionales

**El sistema de permisos propuesto** permite:
- ✅ Mantener la jerarquía natural como base
- ✅ Agregar excepciones positivas (secretarias, auditoría, proyectos cruzados)
- ✅ Agregar excepciones negativas (áreas confidenciales)
- ✅ Auditar quién dio cada permiso y por qué

---

*Documento generado automáticamente - 12/1/2026, 9:18:28 p. m.*

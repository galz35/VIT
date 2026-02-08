# 🏢 DATOS DE ORGANIZACIÓN - FUENTE ORIGINAL

**Fuente:** `database/empleado y organizacion` (SQL Server - SIGHO1)  
**Tabla:** `dbo.organizacion`

---

## 📋 Estructura de la Tabla Organización

```sql
CREATE TABLE [dbo].[organizacion](
    [idorg] [bigint] NOT NULL,           -- ID único del nodo
    [descripcion] [nvarchar](100) NULL,  -- Nombre del área
    [padre] [bigint] NULL,               -- ID del nodo padre
    [des_padre] [nvarchar](100) NULL,    -- Nombre del padre
    [Estado] [nvarchar](50) NULL,        -- Estado (activo/inactivo)
    [nivel] [nvarchar](200) NULL,        -- Código jerárquico
    [id] [int] IDENTITY(1,1) NOT NULL,   -- ID autoincremental
    [ubicacion] [nvarchar](100) NULL,
    [Idubicacion] [bigint] NULL,
    [Departamento] [nvarchar](100) NULL,
    [Municipio] [nvarchar](100) NULL,
    [Direccion] [nvarchar](200) NULL,
    [Pais] [nvarchar](50) NULL,
    [Telefono] [nvarchar](50) NULL,
    [Nombreubicacion] [nvarchar](200) NULL,
    [datos] [nvarchar](200) NULL,
    [Idhrms] [nvarchar](50) NULL,
    CONSTRAINT [PK_organizacion_1] PRIMARY KEY CLUSTERED ([id])
)
```

---

## 🔗 Mapeo a MOMENTUS (p_organizacion_nodo_rh)

| Columna SIGHO1 | Columna MOMENTUS | Notas |
|----------------|------------------|-------|
| `idorg` | `idOrg` | Clave primaria |
| `descripcion` | `nombre` | |
| `padre` | `padreIdOrg` | FK recursiva |
| `nivel` | `nivel` | Código jerárquico |
| `Pais` | `pais` | NI = Nicaragua |
| `Estado` | `activo` | |

---

## 🌳 Estructura Jerárquica

```
NI DIRECCION PAIS (Nivel 0)
├── NI GERENCIA TECNICA
│   ├── NI GERENCIA OPERACIONES PLANTA INTERNA
│   │   ├── NI SUBGERENCIA CCR
│   │   ├── NI SUBGERENCIA PLANTA INTERNA RED FIJA
│   │   └── ...
│   ├── NI GERENCIA OPERACIONES PLANTA EXTERNA
│   │   ├── NI SUBGERENCIA PX COBRE FIBRA
│   │   ├── NI SUBGCIA GESTION DE ABONADOS
│   │   └── ...
│   └── NI GERENCIA DE IMPLANTACION
│       ├── NI SUBGERENCIA PROYECTO MOVIL
│       ├── NI SUBGERENCIA CONSTRUCCION PLANTA EXTERNA
│       └── ...
├── NI AREA COMERCIAL
│   ├── NI GERENCIA COMERCIAL MOVIL Y SERVICIOS FIJOS
│   ├── NI GERENCIA COMERCIAL CADENAS Y MULTIMARCAS
│   └── ...
├── NI GERENCIA CENTRO DE ATENCION AL CLIENTE
│   ├── NI CAC ZONA MANAGUA I
│   ├── NI CAC ZONA MANAGUA II
│   ├── NI CAC ZONA NOROCCIDENTE
│   ├── NI CAC ZONA SURORIENTE
│   └── ...
├── NI GERENCIA CALL CENTER
├── NI GERENCIA MARKETING
├── NI GERENCIA DE INFORMATICA Y TECNOLOGIA
├── NI GERENCIA OPERACIONES COMERCIALES
└── ...
```

---

## 🔢 Formato del Campo "nivel"

El campo `nivel` usa un código jerárquico con formato:
```
XXXX.XXXX.XXXX.XXXX.XXXX.XXXX
```

Ejemplo: `5029.0003.0003.0007.0011.0000`
- `5029` = Primer nivel (Gerencia Técnica o similar)
- `0003` = Segundo nivel (Subgerencia)
- `0003` = Tercer nivel (Coordinación)
- `0007` = Cuarto nivel (Supervisión)
- `0011` = Quinto nivel (Área específica)
- `0000` = Sexto nivel (no aplica)

---

## 📊 Nodos Principales (idorg)

| idorg | Descripción |
|-------|-------------|
| `300000002978259` | NI DIRECCION PAIS |
| `300000002903006` | NI GERENCIA TECNICA |
| `300000002902948` | NI GERENCIA OPERACIONES PLANTA INTERNA |
| `300000002902772` | NI GERENCIA OPERACIONES PLANTA EXTERNA |
| `300000002902619` | NI GERENCIA DE IMPLANTACION |
| `300000002977816` | NI GERENCIA CENTRO DE ATENCION AL CLIENTE |
| `300000002954196` | NI GERENCIA CALL CENTER |
| `300000002980581` | NI AREA COMERCIAL |
| `300000002979944` | NI GERENCIA MARKETING |
| `300000002980876` | NI GERENCIA DE INFORMATICA Y TECNOLOGIA |
| `300000002979149` | NI GERENCIA OPERACIONES COMERCIALES |

---

## 📁 Exportaciones Disponibles

| Archivo | Ubicación | Formato |
|---------|-----------|---------|
| Organización completo | `database/EXPORT_ORGANIZACION_COMPLETO.csv` | CSV (~33KB) |
| Análisis de organización | `database/ORGANIZACION.md` | Markdown |

---

## 🔗 Relaciones Importantes

```
p_empleados.idOrg ────────> p_organizacion_nodo_rh.idOrg
p_organizacion_nodo_rh.padreIdOrg ──> p_organizacion_nodo_rh.idOrg (recursiva)
```

---

## ⚠️ Notas de Migración

1. **idorg son bigint** - Números muy grandes (300000002978259)
2. **Relación padre-hijo** - `padre` apunta a `idorg` del nodo superior
3. **Nodos huérfanos** - Algunos nodos pueden no tener padre (nivel 0)
4. **Descripción en español** - Prefijo `NI` para Nicaragua

---

## 📈 Estadísticas

| Métrica | Valor Aproximado |
|---------|-----------------|
| Total nodos | ~200+ |
| Niveles máximo | 6 |
| Gerencias | ~10 |
| Subgerencias | ~30 |
| Supervisiones | ~50+ |
| CACs | ~40+ |

---

*Referencia: database/empleado y organizacion*  
*Última actualización: 14 de Enero 2026*

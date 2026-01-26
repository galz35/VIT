# 📊 DATOS DE EMPLEADOS - FUENTE ORIGINAL

**Fuente:** `database/empleado y organizacion` (SQL Server - SIGHO1)  
**Tabla:** `dbo.EMP2024`  
**Registros estimados:** ~2000+ empleados

---

## 📋 Estructura de la Tabla EMP2024

```sql
CREATE TABLE [dbo].[EMP2024](
    [idhcm] [int] NULL,
    [Idhrms] [nvarchar](50) NULL,
    [idhcm2] [nvarchar](100) NULL,
    [LVL] [int] NULL,
    [userlvl] [int] NULL,
    [carnet] [nvarchar](100) NULL,
    [carnet2] [nvarchar](100) NULL,
    [nombre_completo] [nvarchar](203) NULL,
    [correo] [nvarchar](100) NULL,
    [cargo] [nvarchar](100) NULL,
    [empresa] [nvarchar](100) NULL,
    [cedula] [nvarchar](100) NULL,
    [Departamento] [nvarchar](100) NULL,
    [Direccion] [nvarchar](200) NULL,
    [Nombreubicacion] [nvarchar](150) NULL,
    [datos] [nvarchar](200) NULL,
    [fechaingreso] [date] NULL,
    [fechabaja] [date] NULL,
    [fechaasignacion] [date] NULL,
    [ActionCode] [nvarchar](200) NULL,
    [diaprueba] [int] NULL,
    [oDEPARTAMENTO] [nvarchar](100) NULL,
    [OGERENCIA] [nvarchar](100) NULL,
    [oSUBGERENCIA] [nvarchar](100) NULL,
    [ManagerLevel] [nvarchar](max) NULL,
    [telefono] [nvarchar](20) NULL,
    [telefonojefe] [nvarchar](20) NULL,
    [nom_jefe1] [nvarchar](203) NULL,
    [correo_jefe1] [nvarchar](100) NULL,
    [cargo_jefe1] [nvarchar](100) NULL,
    [idhcm_jefe1] [int] NULL,
    [carnet_jefe1] [nvarchar](100) NULL,
    [o1] [bigint] NULL,
    [nom_jefe2] [nvarchar](203) NULL,
    [correo_jefe2] [nvarchar](100) NULL,
    [cargo_jefe2] [nvarchar](100) NULL,
    [idhcm_jefe2] [int] NULL,
    [carnet_jefe2] [nvarchar](100) NULL,
    [o2] [bigint] NULL,
    [nom_jefe3] [nvarchar](203) NULL,
    [correo_jefe3] [nvarchar](100) NULL,
    [cargo_jefe3] [nvarchar](100) NULL,
    [idhcm_jefe3] [int] NULL,
    [carnet_jefe3] [nvarchar](100) NULL,
    [o3] [bigint] NULL,
    [nom_jefe4] [nvarchar](203) NULL,
    [correo_jefe4] [nvarchar](100) NULL,
    [cargo_jefe4] [nvarchar](100) NULL,
    [idhcm_jefe4] [int] NULL,
    [carnet_jefe4] [nvarchar](100) NULL,
    [o4] [bigint] NULL,
    [SUBGERENTECORREO] [nvarchar](100) NULL,
    [SUBGERENTE] [nvarchar](203) NULL,
    [GERENTECORREO] [nvarchar](100) NULL,
    [GERENTE] [nvarchar](203) NULL,
    [GERENTECARNET] [nvarchar](100) NULL,
    [pais] [nvarchar](50) NULL,
    [organizacion] [bigint] NULL,
    [jefe] [bigint] NULL,
    [userlevel] [int] NOT NULL,
    [idorg] [bigint] NOT NULL,
    [primernivel] [nvarchar](100) NULL,
    [nivel] [nvarchar](200) NULL,
    [padre] [bigint] NULL,
    [segundo_nivel] [nvarchar](100) NULL,
    [tercer_nivel] [nvarchar](100) NULL,
    [cuarto_nivel] [nvarchar](100) NULL,
    [quinto_nivel] [nvarchar](100) NULL,
    [sexto_nivel] [nvarchar](100) NULL,
    [WorkMobilePhoneNumber] [nvarchar](max) NULL,
    [Gender] [nvarchar](max) NULL,
    [UserNam] [nvarchar](max) NULL,
    [foto] [nvarchar](max) NULL,
    [o5] [bigint] NULL,
    [o6] [bigint] NULL,
    [fechanacimiento] [nvarchar](max) NULL
)
```

---

## 🔗 Mapeo a MOMENTUS (p_empleados)

| Columna SIGHO1 | Columna MOMENTUS | Notas |
|----------------|------------------|-------|
| `carnet` | `carnet` | Clave primaria |
| `nombre_completo` | `nombreCompleto` | |
| `correo` | `correo` | Único |
| `cargo` | `cargo` | |
| `Departamento` | `departamento` | |
| `idorg` | `idOrg` | FK a organización |
| `carnet_jefe1` | `jefe1Carnet` | Jefe directo |
| `carnet_jefe2` | `jefe2Carnet` | Segundo nivel |
| `carnet_jefe3` | `jefe3Carnet` | Tercer nivel |
| `carnet_jefe4` | `jefe4Carnet` | Cuarto nivel |
| `fechaingreso` | `fechaIngreso` | |
| `pais` | `pais` | NI = Nicaragua |
| `telefono` | (no mapeado) | |
| `Gender` | (no mapeado) | M/F |

---

## 📁 Exportaciones Disponibles

| Archivo | Ubicación | Formato |
|---------|-----------|---------|
| Empleados completo | `database/EXPORT_EMPLEADOS_COMPLETO.csv` | CSV (~350KB) |
| Empleados en Dirección | `database/EMPLEADOS_EN_DIRECCION.csv` | CSV |
| Estadísticas | `database/EXPORT_ESTADISTICAS.json` | JSON |

---

## 🔢 Ejemplo de Registros

### Empleado 1: Lenin González
```
carnet: 000166
nombre_completo: LENIN ERNESTO GONZALEZ MORALES
correo: lenin.gonzalez@claro.com.ni
cargo: SUPERVISOR OBRAS CIVILES
departamento: MANAGUA
idorg: 300000002980447
carnet_jefe1: 500335 (JOSUE LUIS ROJAS BENAVIDES)
carnet_jefe2: 401157 (EDWING JOSE LOPEZ MAIRENA)
pais: NI
fechaingreso: 2005-01-18
```

### Empleado 2: Norman Selva (Gerente)
```
carnet: 000259
nombre_completo: NORMAN OMAR SELVA RUIZ
correo: norman.selva@claro.com.ni
cargo: GERENTE OPERACIONES PLANTA INTERNA
departamento: MANAGUA
idorg: 300000002902948
carnet_jefe1: 260121 (MARIO EDWIN HURTADO LOPEZ - Gerente Técnico)
carnet_jefe2: 300048 (ANTONIO VEGA SANDOVAL - Director País)
pais: NI
userlevel: 5 (nivel gerencial)
```

---

## 📊 Estadísticas del Dataset

| Métrica | Valor Aproximado |
|---------|-----------------|
| Total empleados | ~2000+ |
| Empleados activos | ~1850 |
| Con correo | ~1900 |
| País | NI (Nicaragua) |
| Departamentos | ~10+ |
| Niveles jerárquicos | 0-6 |

---

## ⚠️ Notas de Migración

1. **Carnets con ceros** - Algunos carnets tienen ceros adelante (000166)
2. **idorg son bigint** - Números muy grandes (300000002980447)
3. **4 niveles de jefatura** - carnet_jefe1 a carnet_jefe4
4. **Niveles organizacionales** - Campo `nivel` usa formato "5029.0004.0005.0002.0000.0000"
5. **Fotos** - URLs a Oracle Cloud (hcmRestApi)

---

*Referencia: database/empleado y organizacion*  
*Última actualización: 14 de Enero 2026*

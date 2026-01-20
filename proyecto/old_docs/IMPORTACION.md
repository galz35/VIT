# 📥 PROCESO DE IMPORTACIÓN

**Estado:** ✅ Listo para usar

---

## 🎯 Objetivo

Importar los **2000 empleados** de Claro Nicaragua desde Excel/RRHH al sistema MOMENTUS.

---

## 📋 Formatos Soportados

| Formato | Endpoint | Contenido |
|---------|----------|-----------|
| **Excel** (.xlsx, .xls) | `POST /acceso/importar/empleados/excel` | Archivo multipart |
| **JSON** | `POST /acceso/importar/empleados` | Array de objetos |

---

## 🔧 Modos de Importación

| Modo | Descripción | Uso recomendado |
|------|-------------|-----------------|
| **MERGE** | Crea nuevos, actualiza existentes | ✅ Uso normal |
| **INSERT_ONLY** | Solo crea nuevos, ignora existentes | Primera carga |
| **REPLACE** | Borra TODO y reemplaza | ⚠️ Peligroso |

---

## 📊 Columnas del Excel

### Obligatorias
| Columna | Descripción | Ejemplo |
|---------|-------------|---------|
| `carnet` | Identificador único | EMP001 |

### Opcionales
| Columna | Descripción | Ejemplo |
|---------|-------------|---------|
| `nombreCompleto` | Nombre del empleado | Juan Pérez |
| `correo` | Email corporativo | juan.perez@claro.com.ni |
| `cargo` | Puesto actual | Analista Senior |
| `departamento` | Área | Tecnología |
| `idOrg` | ID del nodo organizacional | 1001 |
| `jefe1Carnet` | Carnet del jefe directo | EMP100 |
| `jefe2Carnet` | Carnet del segundo jefe | EMP050 |
| `jefe3Carnet` | Carnet del tercer jefe | EMP020 |
| `jefe4Carnet` | Carnet del cuarto jefe | EMP010 |
| `activo` | Si está activo | true/false |
| `fechaIngreso` | Fecha de ingreso | 2020-01-15 |
| `pais` | País | Nicaragua |

### Mapeo Automático de Columnas
El sistema reconoce variantes como:
- `carnet`, `CARNET`, `codigo`, `id_empleado`
- `nombre`, `NOMBRE`, `nombreCompleto`, `nombre_completo`
- `email`, `correo`, `CORREO`

---

## 🚀 Proceso Paso a Paso

### Opción 1: Desde la Interfaz Web

1. **Ir a Admin → Importar**
   ```
   http://localhost:5173/app/admin/import
   ```

2. **Seleccionar pestaña "Excel"**

3. **Elegir archivo** (.xlsx o .xls)

4. **Seleccionar modo**: MERGE (recomendado)

5. **Click en "Vista Previa"** (opcional pero recomendado)

6. **Click en "Importar"**

7. **Verificar resultados**:
   - Insertados: X
   - Actualizados: X
   - Errores: X

### Opción 2: Vía API (curl)

```bash
# Importar Excel
curl -X POST http://localhost:3000/api/acceso/importar/empleados/excel \
  -H "Authorization: Bearer $TOKEN" \
  -F "file=@empleados.xlsx" \
  -F "modo=MERGE"

# Importar JSON
curl -X POST http://localhost:3000/api/acceso/importar/empleados \
  -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "empleados": [
      {
        "carnet": "EMP001",
        "nombreCompleto": "Juan Pérez",
        "correo": "juan.perez@claro.com.ni",
        "departamento": "Tecnología"
      }
    ],
    "modo": "MERGE",
    "fuente": "API"
  }'
```

---

## ✅ Validaciones Automáticas

| Validación | Acción si falla |
|------------|-----------------|
| `carnet` vacío | Rechaza el registro |
| `carnet` > 100 caracteres | Rechaza el registro |
| `correo` > 150 caracteres | Rechaza el registro |
| `correo` duplicado | Actualiza si MERGE |
| `idOrg` inválido | Ignora la relación |

---

## 📁 Plantilla de Ejemplo

Descargar plantilla desde:
```
GET /acceso/importar/plantilla
```

O usar este formato:

| carnet | nombreCompleto | correo | cargo | departamento | activo |
|--------|---------------|--------|-------|--------------|--------|
| EMP001 | Juan Pérez | juan@claro.com.ni | Analista | TI | true |
| EMP002 | María López | maria@claro.com.ni | Gerente | RRHH | true |

---

## 🔍 Verificar Importación

```bash
# Ver estadísticas
GET /acceso/importar/estadisticas

# Respuesta:
{
  "totalEmpleados": 2000,
  "activos": 1850,
  "inactivos": 150,
  "conCorreo": 1900,
  "sinCorreo": 100
}
```

---

## ⚠️ Notas Importantes

1. **Backup antes de REPLACE**: Este modo borra TODO
2. **Correos únicos**: No puede haber duplicados
3. **Carnets únicos**: Es la clave primaria
4. **Relaciones de jefe**: Se validan después de importar todos

---

*Última actualización: 14 de Enero 2026*

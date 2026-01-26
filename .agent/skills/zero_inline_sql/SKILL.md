---
name: zero_inline_sql
description: Migra lógica de backend de queries inline a Stored Procedures (SQL Server), soportando el patrón de "Múltiples Acciones en un SP".
---

# Zero Inline SQL (Procedure-First Backend)

Este skill transforma el backend para que **NO exista SQL hardcodeado** en el código TypeScript. Toda la lógica de datos debe vivir en Stored Procedures (SPs) en SQL Server.

## Filosofía
- **Seguridad**: Previene SQL Injection al 100%.
- **Performance**: Reduce roundtrips y permite a SQL Server optimizar planes de ejecución.
- **Mantenibilidad**: El código TS solo orquesta; el código SQL manipula datos.

## Patrón Preferido: SP Multi-Acción
El usuario prefiere agrupar lógica relacionada en un solo SP controlado por un parámetro (ej: `@Accion`, `@TipoConsulta`).

**Estructura Típica SQL:**
```sql
CREATE OR ALTER PROCEDURE [dbo].[sp_Gestion_Entidad]
    @Accion NVARCHAR(50),
    @Id INT = NULL,
    @Datos JSON = NULL, -- O parámetros individuales
    @ParamExtra NVARCHAR(MAX) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- Accion: CREAR
    IF @Accion = 'CREAR'
    BEGIN
        INSERT INTO Entidad ...
        SELECT SCOPE_IDENTITY() as Id;
        RETURN;
    END

    -- Accion: LISTAR_ACTIVOS
    IF @Accion = 'LISTAR_ACTIVOS'
    BEGIN
        SELECT * FROM Entidad WHERE Activo = 1;
        RETURN;
    END

    -- Accion: BORRAR
    IF @Accion = 'BORRAR'
    BEGIN
        -- Lógica soft delete o validaciones
        UPDATE Entidad SET Activo = 0 WHERE Id = @Id;
        RETURN;
    END
    
    -- Error si acción no existe
    THROW 51000, 'Acción no reconocida en sp_Gestion_Entidad', 1;
END
```

## Instrucciones de Ejecución

Al encontrar código con `const sql = "SELECT ..."` o `ejecutarQuery('INSERT ...')`:

### 1. Análisis y Diseño SQL
1.  Identifica todas las operaciones relacionadas con esa entidad (Crear, Leer, Actualizar, Borrar, Listar).
2.  Diseña un **SP Unificado** (o varios si la complejidad es muy alta) que maneje estas operaciones mediante `IF @Accion = '...'`.
3.  Usa `TVP` (Table Valued Parameters) o `JSON` para operaciones en lote (ej: insertar múltiples tareas).
4.  **SIEMPRE** incluye manejo de transacciones (`BEGIN TRAN ... COMMIT / ROLLBACK`) para operaciones de escritura.
5.  **SIEMPRE** usa bloques `TRY/CATCH`.

### 2. Generación del Script T-SQL
Genera el script completo para crear/actualizar el SP.
```sql
-- Ejemplo de script que debes generar
CREATE TYPE dbo.TVP_Ejemplo AS TABLE (...) -- Si es necesario
GO
CREATE OR ALTER PROCEDURE dbo.sp_Ejemplo ...
AS
...
GO
```

### 3. Refactorización TypeScript
Reemplaza la llamada inline por `ejecutarSP`.

**Antes:**
```typescript
const sql = `SELECT * FROM Tareas WHERE idUsuario = @id`;
return await this.db.ejecutarQuery(sql, { id });
```

**Después:**
```typescript
return await this.db.ejecutarSP('sp_Gestion_Tareas', {
    Accion: 'LISTAR_POR_USUARIO',
    IdUsuario: id,
});
```

## Reglas de Oro
1.  **Nombres Claros**: El parámetro de acción debe ser autoexplicativo (`OBTENER_PENDIENTES`, `RESOLVER_BLOQUEO`).
2.  **Validación en BD**: Si hay lógica de negocio estricta (ej: "no borrar si tiene hijos"), ponla en el SP, no en el backend.
3.  **Snake Case vs Camel Case**: SQL suele usar `PascalCase` o `snake_case` para parámetros. Mapea correctamente desde TS.
4.  **Outputs**: Asegura que el SP devuelva lo que el frontend espera (columnas exactas) o adapta el DTO en el backend si el SP cambia la estructura.

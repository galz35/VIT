---
name: identity_carnet
description: Estándar para el manejo de identidad de usuario (Carnet vs ID).
---

# Proyecto Carnet: Identidad Única

## Concepto
En la organización, el **Carnet** es el identificador único e inmutable del empleado (ej: "A123", "E005"). 
A diferencia de claves foráneas numéricas (`idUsuario`), el Carnet tiene significado de negocio y persistencia garantiza.

## Reglas de Implementación

1.  **Modelo de Datos**:
    *   `idUsuario` (INT, PK): Clave subrogada interna. Se usa para **Foreign Keys** y rendimiento en JOINs.
    *   `carnet` (NVARCHAR, UNIQUE): Identificador de negocio. Se usa para **Búsquedas**, **Login** y **Display**.

2.  **Preferencia de Uso**:
    *   **Backend Interno (FKs)** -> Usar `idUsuario`.
    *   **API Pública / Frontend** -> Preferir `carnet` donde sea posible para identificar al usuario, resolviendo a `idUsuario` internamente.
    *   **SPs**: Si el SP es puramente transaccional (relaciones), usa `idUsuario`. Si es de búsqueda o reporte, puede aceptar `@carnet`.

3.  **Resolución**:
    *   Al recibir un `carnet` del frontend, el backend debe resolver el `idUsuario` antes de realizar operaciones de escritura que requieran FKs, a menos que el SP esté diseñado para hacer el lookup.

## Ejemplo de Lookup en SP
```sql
CREATE PROCEDURE dbo.sp_Usuario_ObtenerPorCarnet
    @carnet NVARCHAR(50)
AS
BEGIN
    SELECT idUsuario, nombre, correo, rol
    FROM p_Usuarios
    WHERE carnet = @carnet;
END
```

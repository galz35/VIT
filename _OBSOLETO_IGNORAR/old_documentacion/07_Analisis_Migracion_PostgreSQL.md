# Análisis de Migración: SQL Server vs. PostgreSQL

Este documento detalla el impacto técnico y económico de migrar la arquitectura actual del proyecto Clarity de Microsoft SQL Server a PostgreSQL.

## 1. Resumen Ejecutivo

*   **Motivación:** Reducción de costos de licenciamiento e infraestructura.
*   **Impacto Técnico:** **Alto**. Requiere refactorización completa de la capa de datos (Stored Procedures) y adaptación de la capa de acceso a datos en el Backend.
*   **Recomendación:** Si el presupuesto es prioridad y el proyecto está en etapas tempranas, la migración es **altamente recomendada** por las capacidades avanzadas de PostgreSQL y su costo cero de licencia.

## 2. Comparativa de Costos

| Característica | Microsoft SQL Server | PostgreSQL |
| :--- | :--- | :--- |
| **Licenciamiento** | Costoso (Ediciones Standard/Enterprise). Requiere CALs por usuario en algunos esquemas. | **Gratis** (Open Source - Licencia PostgreSQL). |
| **Infraestructura Cloud** | Optimizado para Azure (Azure SQL). Costo moderado/alto en otras nubes (AWS/GCP) debido a licencias de Windows/SQL. | Disponible como servicio gestionado económico en todas las nubes (AWS RDS, Google Cloud SQL, DigitalOcean, Azure Database for PostgreSQL). |
| **Desarrollo Local** | Requiere contenedor Docker pesado o instalación local de Developer Edition. | Ligero, fácil de instalar localmente o vía Docker. |

## 3. Impacto Técnico en Base de Datos (Muy Alto)
La arquitectura actual delega mucha lógica de negocio a la base de datos mediante Stored Procedures. T-SQL (Microsoft) y PL/pgSQL (PostgreSQL) **no son compatibles**.

### Cambios Necesarios:
1.  **Reescritura de Código SQL:** Se debe traducir manualmente el archivo `05_Stored_Procedures_Code.sql`.
    *   **Sintaxis:** Cambio de `CREATE PROCEDURE` y variables (`@Variable` vs `v_variable`).
    *   **Manejo JSON:** Reemplazar `OPENJSON` (SQL Server) por `jsonb_array_elements` o `jsonb_to_recordset` (PostgreSQL). Postgres es superior en este aspecto (JSONB).
    *   **Recursividad:** Ajustar las Common Table Expressions (CTE) para usar `WITH RECURSIVE` explícito.
    *   **Fechas:** Cambiar `SYSUTCDATETIME()` por `NOW()` o `CURRENT_TIMESTAMP`.
2.  **Tipos de Datos:** Mapeo de tipos (ej. `NVARCHAR` -> `VARCHAR`/`TEXT`, `BIT` -> `BOOLEAN`).

## 4. Impacto Técnico en Backend (NestJS) (Medio-Alto)
El backend requiere cambios en su "capa de transporte" para comunicarse con la nueva base de datos.

### Cambios Necesarios:
1.  **Cambio de Driver:** Reemplazar librería `mssql` por `pg` (node-postgres).
2.  **Refactor de `SqlService`:**
    *   Reescribir la lógica de conexión y pooling.
    *   Cambiar la forma de pasar parámetros (de objetos `{nombre, tipo, valor}` a arrays posicionales `$1, $2`).
3.  **Refactor de Servicios (`ClarityService`, `AuthService`):**
    *   Cambiar la sintaxis de invocación.
    *   *SQL Server:* `exec sp_Nombre @Param=1`
    *   *Postgres:* `CALL sp_nombre($1)` o `SELECT * FROM funcion_nombre($1)`.

## 5. Tabla de Esfuerzo Estimado

| Tarea | Complejidad | Tiempo Estimado |
| :--- | :--- | :--- |
| Configuración Entorno Postgres | Baja | 2 horas |
| Traducción de Tablas (DDL) | Baja | 3 horas |
| Traducción de Stored Procedures (DML) | Alta | 12 - 16 horas |
| Adaptación `SqlService` (NestJS) | Media | 4 horas |
| Adaptación `ClarityService` (NestJS) | Media | 6 horas |
| Pruebas Integrales | Alta | 8 horas |
| **Total Estimado** | | **~35 - 40 horas** |

## 6. Conclusión
Aunque el esfuerzo de migración es considerable debido a la dependencia de Stored Procedures, **PostgreSQL es una mejor apuesta a largo plazo** para una startup o proyecto ágil debido a su flexibilidad, manejo superior de JSON (clave para los check-ins dinámicos de Clarity) y ausencia de costos de licencia.

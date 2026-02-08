# PLAN MAESTRO CLARITY — Mejoras + Migración segura sin cruce de idUsuario

## Objetivos principales
1. **Calendario/Agenda usable**: Navegación por semanas, creación en pasado/futuro, corrección de bug en fecha inicial.
2. **Bloqueos**: Funcionalidad "Reportar impedimento" operativa y auditable.
3. **Asignación masiva simple**: Crear N tareas (1 por empleado) en una sola acción (sin tablas N:N complejas).
4. **Reglas fuertes de eliminación**: Borrado restringido; si no cumple, solo deshabilitar y auditar.
5. **Subtareas/Fases sin romper**: Estructura simple para evitar duplicidad.
6. **Migración sin clavo de IDs**: Evitar cruce de `idUsuario` al migrar mediante uso de Identificador Único Empresarial (Carnet).

---

## 🚨 CORRECCIONES TÉCNICAS URGENTES (Enero 2026)
Se ha generado un plan específico para erradicar datos quemados y completar funcionalidades críticas detectadas en el backend.
👉 Ver detalle en: **[PLAN_CORRECCIONES_TECNICAS.md](./PLAN_CORRECCIONES_TECNICAS.md)**

---

## PRINCIPIO CRÍTICO PARA MIGRACIÓN (Anti-cruce de idUsuario)

**Premisa**: "Todos tendrán carnet" y es el identificador único empresarial.

✅ **Estrategia Segura**: La identidad real del usuario es el **carnet**. El `idUsuario` puede cambiar en la nueva base de datos, pero todas las relaciones se reconstruyen basándose en el carnet.

**Qué NO hacer**:
*   Agregar `carnet` a todas las tablas (`p_Tareas`, `p_FocoDiario`, etc.) "por si acaso". Esto duplica fuentes de verdad y genera inconsistencias.

**Qué SÍ hacer**:
*   Asegurar que `p_Usuarios.carnet` sea obligatorio y único (incluyendo externos).
*   **Al migrar**:
    1.  Reconstruir tabla de usuarios usando el carnet.
    2.  Generar una tabla temporal `MAPA_MIGRACION` (`oldIdUsuario` → `newIdUsuario`) haciendo join por `carnet`.
    3.  Actualizar todas las FKs en las tablas transaccionales usando este mapa.

---

## FASE 0 — Inventario Real (Análisis Previo)

Antes de tocar producción, es vital confirmar la estructura real para no trabajar sobre supuestos.

### Acciones Requeridas (Ejecutar SQL)
1.  **Confirmar campos de usuarios**:
    ```sql
    SELECT TOP 50 * FROM dbo.p_Usuarios ORDER BY idUsuario DESC;
    ```
    *Objetivo*: Verificar existencia y nombre exacto de la columna `carnet`.

2.  **Mapear dependencias de idUsuario**:
    ```sql
    SELECT 
      fk.name AS FK,
      OBJECT_NAME(fk.parent_object_id) AS TablaHija,
      COL_NAME(fkc.parent_object_id, fkc.parent_column_id) AS ColumnaHija,
      OBJECT_NAME(fk.referenced_object_id) AS TablaPadre,
      COL_NAME(fkc.referenced_object_id, fkc.referenced_column_id) AS ColumnaPadre
    FROM sys.foreign_keys fk
    JOIN sys.foreign_key_columns fkc ON fk.object_id = fkc.constraint_object_id
    WHERE OBJECT_NAME(fk.referenced_object_id) = 'p_Usuarios'
    ORDER BY TablaHija;
    ```
    *Objetivo*: Listar todas las tablas que requieren actualización de FKs durante la migración.

---

## FASE 1 — Identidad por Carnet (Base de Datos + Reglas)

### 1.1 Estandarización de Carnet
*   **Meta**: `carnet` único y obligatorio.
*   **Externos**: Si no tienen carnet real, generar uno sintético (ej: `EXT-000001`).

**Validaciones Previas (SQL)**:
*   Detectar duplicados:
    ```sql
    SELECT carnet, COUNT(*) FROM dbo.p_Usuarios WHERE carnet IS NOT NULL GROUP BY carnet HAVING COUNT(*) > 1;
    ```
*   Detectar nulos:
    ```sql
    SELECT COUNT(*) FROM dbo.p_Usuarios WHERE carnet IS NULL;
    ```

### 1.2 Constraint Final
Una vez limpios los datos, aplicar índice único para garantizar integridad futura:
```sql
CREATE UNIQUE INDEX UX_pUsuarios_Carnet ON dbo.p_Usuarios(carnet);
```

---

## FASE 2 — Calendario / Agenda (Frontend + Backend)

### 2.1 UX (TimelinePage.tsx)
*   **Navegación**: Implementar botones `< Anterior` y `Siguiente >` usando `subWeeks(fecha, 1)` y `addWeeks(fecha, 1)`.
*   **Estado Inicial**: Asegurar que al montar el componente, la fecha base sea `new Date()` (Hoy).
*   **Flexibilidad**: Permitir creación de tareas en fechas pasadas (olvidos) y futuras (planificación).
*   **Persistencia**: (Opcional) Guardar `calendarDate` en `localStorage` para mantener la vista al recargar.

### 2.2 Backend
*   **Validaciones**: Eliminar bloqueos server-side que impidan `fechaObjetivo != Hoy` en creación/edición.
*   **Consultas**: Asegurar que los endpoints de "Agenda" o "Tareas" acepten parámetros de rango (`from`, `to`) para soportar la navegación por semanas.

**Riesgos**: KPIs diarios pueden variar si se registran tareas vencidas como "de hoy".
**Mitigación**: Mantener vista "Mi Día" filtrada por `fecha = Hoy` (incluyendo opcionalmente vencidas), y Agenda Semanal mostrando el rango real.

---

## FASE 3 — Bloqueos (Auditoría e Integridad)

### 3.1 Corrección
*   **Problema Típico**: Desalineación entre Frontend (ruta/payload) y Backend.
*   **Plan**:
    1.  Verificar ruta exacta y payload en navegador.
    2.  Ajustar/Crear endpoint en Backend para recibir esa estructura.
    3.  Guardar bloqueo en tabla `p_Bloqueos` (o equivalente) con campos de auditoría (`creadoPor`, `fecha`, `motivo`).

### 3.2 Regla de Negocio
*   Evitar duplicados lógicos: Un bloqueo activo por par (Tarea, Usuario).

---

## FASE 4 — Asignación Masiva Simple

### 4.1 Funcionalidad
En lugar de estructuras complejas N:N, simplificar la UX para el usuario final backend robusto.
*   **UX**: Modal de tarea permite seleccionar múltiples empleados.
*   **Backend**: Endpoint `POST /tasks/crear-masivo`.
    *   Recibe: Datos de tarea base + `[idUsuariosAsignados]`.
    *   Procesa: Itera y crea **N tareas individuales** (1 por usuario).
    *   Retorna: Lista de IDs creados.

### 4.2 Ventajas
*   No requiere cambios en el esquema de base de datos (`p_Tareas` sigue siendo 1 tarea = 1 asignado).
*   Permite seguimiento individual del progreso de cada empleado.

---

## FASE 5 — Subtareas / Fases

### Estrategia Conservadora (Sin Romper)
*   **Opción A (Recomendada)**: Campo `idTareaPadre` (nullable) en `p_Tareas`.
    *   Si es NULL: Tarea normal/padre.
    *   Si tiene valor: Es subtarea.
    *   **Mitigación**: Validar ciclos en backend. UI muestra indentación.
*   **Opción B**: Campo simple `fase` (NVARCHAR).
    *   Ej: "Diagnóstico", "Ejecución".
    *   Cero riesgo estructural, pero menor control jerárquico.

---

## FASE 6 — Reglas de Eliminación Segura

### 6.1 Reglas Definidas
✅ **Permitido borrar físico (DELETE)** si:
1.  Tarea creada **hoy**.
2.  Elimina el **creador** o su **jefe directo**.

❌ **Caso contrario**:
*   Solo permitido **Deshabilitar** (Soft Delete).

### 6.2 Implementación
*   **Schema**: Agregar columnas `activo` (bit, default 1), `motivoDeshabilitacion` (text), `deshabilitadoPor` (id), `fechaDeshabilitacion` (datetime).
*   **Backend**: Modificar endpoint `DELETE`. Si no cumple reglas de borrado físico, aplicar `UPDATE activo = 0` y registrar auditoría.
*   **Consultas**: Filtrar por defecto `WHERE activo = 1`.

---

## FASE 7 — Evidencia y Notas

### 7.1 Evidencia
*   Campo `linkEvidencia` ya implementado (Fase anterior).
*   Revisar validaciones de URL y UX (abrir en nueva pestaña).

### 7.2 Notas Mejoradas
*   Campo `titulo` en `p_Notas`.
*   UI: Mostrar título destacado.

---

## PLAN DE MIGRACIÓN (Ejecución)

1.  **Exportación**: Extraer usuarios actuales asegurando campo `carnet`.
2.  **Importación (Nueva BD)**: Cargar usuarios. Los `idUsuario` (Identity) cambiarán.
3.  **Mapeo**:
    ```sql
    CREATE TABLE TMP_MAPA_IDS (OldID int, NewID int);
    INSERT INTO TMP_MAPA_IDS (OldID, NewID)
    SELECT O.idUsuario, N.idUsuario
    FROM BD_OLD.dbo.p_Usuarios O
    JOIN BD_NEW.dbo.p_Usuarios N ON O.carnet = N.carnet;
    ```
4.  **Actualización FKs**:
    Para cada tabla identificada en Fase 0.2:
    ```sql
    UPDATE T
    SET T.idUsuario = M.NewID
    FROM TablaHija T
    JOIN TMP_MAPA_IDS M ON T.idUsuario = M.OldID;
    ```

---

## Siguientes Pasos (Para el Agente)

Para convertir este plan en scripts ejecutables y código final, se requiere ejecutar y proporcionar la salida de:

1.  `SELECT TOP 50 * FROM p_Usuarios` (Estructura real usuarios/carnet).
2.  Query de `sys.foreign_keys` (Inventario de dependencias).
3.  `SELECT COLUMN_NAME, DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'p_Tareas'` (Estructura actual tareas).

Con esta información, procederé a generar el código específico para cada fase.

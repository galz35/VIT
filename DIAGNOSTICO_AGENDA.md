# Informe de Diagnóstico: Módulo "Agenda / Mi Día"

## 1. Identificación de Estructura de Datos
Tras un análisis exhaustivo del esquema de base de datos SQL Server, se ha determinado la estructura real que soporta las funcionalidades de Agenda y Foco Diario.

### Tabla Principal: `p_FocoDiario`
Esta es la única tabla dedicada explícitamente a la funcionalidad de "Mi Día" o enfoque diario.

**Estructura Confirmada:**
| Columna | Tipo de Dato | Descripción |
| :--- | :--- | :--- |
| `id` | `int` | Identificador único (PK) |
| `idUsuario` | `int` | **Moderno**. Referencia directa al usuario (FK) |
| `fecha` | `date` | Fecha del foco |
| `foco` | `nvarchar` | Texto del objetivo o foco del día |
| `completado` | `bit` | Estado (0/1) |
| `creadoEn` | `datetime` | Auditoría de creación |

**Tablas Descartadas (No Existen):**
- ❌ `p_Agenda`
- ❌ `p_MiDia`

## 2. Análisis de Migración (Carnet vs idUsuario)
El objetivo era identificar si se requería migrar columnas de `carnet` (string legacy) a `idUsuario` (int moderno).

**Hallazgo:**
- La tabla `p_FocoDiario` **YA es nativa con `idUsuario`**.
- No existe ninguna columna `carnet` en esta tabla.
- **Conclusión:** No se requiere script de migración de datos para esta tabla específica.

## 3. Estado de los Datos
- **Registros actuales:** 0 (La tabla se encuentra vacía o recién inicializada).
- **Integridad:** Al no haber datos, no hay riesgos de inconsistencia o IDs huérfanos.

## 4. Recomendaciones Técnicas

### A. Base de Datos
- **Acción:** Ninguna requerida. La estructura es correcta y moderna.

### B. Código Backend (Refactorización)
Aunque la base de datos está correcta, el código (`planning.service.ts` o controladores) podría estar intentando usar lógica antigua.
1.  **Verificar Queries:** Asegurar que las consultas a `p_FocoDiario` usen estrictamente `WHERE idUsuario = @id` y no intenten buscar por carnet haciendo JOINs innecesarios.
2.  **API Endpoints:** Revisar que el endpoint `GET /agenda` o `GET /foco` reciba el `idUsuario` extraído del token JWT/Session, y no un parámetro `carnet` enviado explícitamente desde el frontend.

### C. Lógica de "Agenda"
Si la aplicación muestra una "Agenda" con eventos u horas, y no solo un "Foco" de texto, esta funcionalidad es **Virtual**.
- Es probable que el backend construya la "Agenda" en tiempo de ejecución combinando:
    - `p_Tareas` (donde `fechaObjetivo` = Hoy)
    - `p_FocoDiario` (Texto del día)
- Validar que la consulta de `p_Tareas` para esta vista también use `idAsignado` (int) y no filtros por carnet.

---
*Generado por Antigravity AI - Diagnóstico de Arquitectura Clarity*

# Estrategia de Migración y Diseño Organizacional (Datos Reales)

## 1. Análisis de Datos Origen (`EMP2024`)
El archivo proporcionado (`empleado y organizacion`) es un script SQL que contiene una estructura jerárquica aplanada de la organización.

**Campos Clave Identificados:**
- **Identidad:** `nombre_completo`, `correo`, `carnet`, `cedula`.
- **Posición:** `cargo` (Ej: "TECNICO TRANSMISION I", "GERENTE TECNICO").
- **Organización (Nodos):**
  - `OGERENCIA`: Nivel alto (Ej: "NI GERENCIA TECNICA").
  - `oSUBGERENCIA`: Nivel medio (Ej: "NI SUBGERENCIA PLANTA INTERNA").
  - `oDEPARTAMENTO`: Nivel operativo (Ej: "NI SUPERVISION DE FIBRA OPTICA").
- **Jerarquía (Reporting Lines):**
  - `nom_jefe1`, `cargo_jefe1`: Jefe directo.
  - `nom_jefe2`, `cargo_jefe2`: Jefe de nivel superior.
  - ...hasta `jefe4` (Dirección País).

## 2. Estrategia de Mapeo a Clarity (Modelo de Datos)

El modelo de Clarity (`Usuario`, `OrganizacionNodo`, `UsuarioOrganizacion`) es perfectamente capaz de soportar esta estructura sin cambios mayores en el esquema, pero requiere una lógica de importación inteligente.

### A. Mapeo de Nodos (Estructura)
Transformaremos las columnas planas de departamentos en un árbol jerárquico real.

| Origen (`EMP2024`) | Destino (`OrganizacionNodo`) | Tipo de Nodo |
| :--- | :--- | :--- |
| "NI DIRECCION PAIS" (Implícito/Nivel 4) | Nodo Raíz / Dirección | `Direccion` |
| `OGERENCIA` | Nodo Hijo de Dirección | `Gerencia` |
| `oSUBGERENCIA` | Nodo Hijo de Gerencia | `Subgerencia` |
| `oDEPARTAMENTO` | Nodo Hijo de Subgerencia | `Equipo` / `Departamento` |

### B. Mapeo de Usuarios
| Origen (`EMP2024`) | Destino (`Usuario`) | Notas |
| :--- | :--- | :--- |
| `nombre_completo` | `nombre` | - |
| `correo` | `correo` | **ID Único** de sistema |
| `cargo` | `cargo` (Nuevo campo sugerido*) | Importante para mostrar en UI |
| `123456` | `passwordHash` | Contraseña default inicial |

*> Se recomienda agregar el campo `cargo` a la tabla `p_Usuarios` o `p_UsuariosOrganizacion` para visualización.*

### C. Estrategia de Asignación y Roles
La parte crucial es determinar quién es "LIDER" y quién es "MIEMBRO" en cada nodo. Usaremos el campo `cargo` y la jerarquía de jefes para esto.

**Lógica de Inferencia de Roles:**
1.  **Directores/Gerentes:** Si `cargo` contiene "GERENTE" o "DIRECTOR" -> Asignar como **LIDER** del nodo `OGERENCIA` correspondiente.
2.  **Subgerentes:** Si `cargo` contiene "SUBGERENTE" -> Asignar como **LIDER** del nodo `oSUBGERENCIA`.
3.  **Coordinadores/Supervisores:** Si `cargo` contiene "COORDINADOR", "SUPERVISOR", "JEFE" -> Asignar como **LIDER** del nodo `oDEPARTAMENTO`.
4.  **Operativos:** (Técnicos, Analistas, Asesores) -> Asignar como **MIEMBRO/COLABORADOR** del nodo `oDEPARTAMENTO`.

## 3. Plan de Acción para la Migración

Para ejecutar esta carga de datos masiva ("Seed") de manera segura y ordenada:

1.  **Script de Importación Inteligente (`import-real-data.ts`)**:
    *   **Paso 1: Extracción de Árbol.** Leer todos los registros únicos de Gerencia/Subgerencia/Depto y crear los nodos en la base de datos, manteniendo las relaciones Padre-Hijo.
    *   **Paso 2: Creación de Usuarios.** Iterar sobre cada empleado, creando su usuario si no existe.
    *   **Paso 3: Vinculación.**
        *   Buscar el nodo más específico del usuario (`oDEPARTAMENTO` > `oSUBGERENCIA` > `OGERENCIA`).
        *   Determinar rol (Lider/Colaborador) basado en palabras clave del cargo.
        *   Crear registro en `UsuarioOrganizacion`.

2.  **Validación de Jefaturas**:
    *   El sistema validará que el `nom_jefe1` del empleado esté efectivamente asignado como Lider en el nodo superior o el mismo nodo, garantizando la consistencia del organigrama.

## 4. Visualización en Clarity
Una vez importados, la sección "Equipo" reflejará la realidad operativa:
- **Director** podrá ver el dashboard global.
- **Gerentes** verán sus Subgerencias y métricas agregadas.
- **Supervisores** verán a sus Técnicos directos en el tablero Kanban.
- **Técnicos** verán solo sus tareas asignadas.

---
**¿Deseas que proceda con la creación del script de migración basado en esta estrategia?**

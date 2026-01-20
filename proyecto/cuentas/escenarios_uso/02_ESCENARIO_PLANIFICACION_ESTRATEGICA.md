# 🎬 Escenario 2: Planificación y Estrategia (Nivel Liderazgo)

Este escenario simula el flujo de un **Coordinador** o **Líder de Área** que debe planificar proyectos y asignar trabajo a su equipo.

---

## 👤 Perfil del Actor
*   **Rol:** Coordinador / Líder (Nivel 3)
*   **Usuario Prueba:** `candida.sanchez@claro.com.ni` (Coord. Soporte Operación)
*   **Contraseña:** `123456`
*   **Objetivo:** Crear un nuevo proyecto operativo, definir hitos y asignar responsables.

## 📝 Pre-condiciones
*   Tener personal a cargo (Cándida tiene a Gustavo Lira bajo su mando).

---

## 🚶‍♂️ Guía Paso a Paso

### 1. Creación de Proyecto
*   **Acción:** Login con `candida.sanchez@claro.com.ni`.
*   **Navegación:** Ir a `/app/planning/roadmap` o Botón "+" -> "Nuevo Proyecto".

#### 📍 Modal: Crear Proyecto
1.  **Datos Básicos:**
    *   **Nombre:** "Optimización Soporte Q1".
    *   **Tipo:** Seleccionar **"TACTICO"** (Importante notar la diferencia).
        *   *Tactico/Operativo:* Flexible.
        *   *Estratégico:* Rígido (candados).
    *   **Fechas:** Inicio: Hoy, Fin: +1 mes.
    *   **País:** Se auto-rellena con "NI" (Nicaragua) porque es el país del usuario.

### 2. Planificación en Cronograma (Gantt)
*   **Navegación:** Una vez creado, clic en el proyecto para ir a `/app/proyectos/{ID}` (TimelineView).

1.  **Crear Tareas:**
    *   **Acción:** Clic en "+ Tarea" en la línea de tiempo.
    *   **Nombre:** "Levantamiento de requerimientos".
    *   **Asignación:** Busca y selecciona a `GUSTAVO LIRA`.
        *   *Nota:* Solo verás a gente de tu estructura o pares, no verás al Presidente del país (seguridad por diseño).

2.  **Dependencias:**
    *   Crea una segunda tarea "Implementación Piloto".
    *   **Acción:** Arrastra una línea desde el final de la Tarea 1 al inicio de Tarea 2.
    *   *Resultado:* Se crea dependencia Fin-Inicio. Si mueves Tarea 1, Tarea 2 se mueve automáticamente.

### 3. Gestión de Carga de Trabajo
*   **Navegación:** Ir a `/app/planning/carga` (WorkloadPage).
*   **Objetivo:** Verificar que Gustavo no esté saturado.
*   **Visualización:** Verás un gráfico de calor o barras por persona.
*   **Análisis:**
    *   Si Gustavo tiene la barra ROJA, tiene demasiadas horas asignadas.
    *   **Acción:** Re-asigna la tarea a otro recurso disponible o mueve la fecha en el futuro.

### 4. Simulación de Escenarios
*   **Navegación:** Ir a `/app/planning/simulation`.
*   **Caso de Uso:** "¿Qué pasa si atrasamos el proyecto 1 semana?".
*   **Acción:** Mueve todo el bloque del proyecto una semana a la derecha.
*   **Resultado:** El sistema calcula el impacto en fechas de entrega finales sin aplicar los cambios realmente (Sandbox).

---

## 🔍 Comprobaciones Técnicas
1.  Tabla `Proyecto`: Verificar campo `tipo = 'TACTICO'` y `pais = 'NI'`.
2.  Tabla `Tarea`: Verificar `usuario_asignado_id` corresponda al ID de Gustavo Lira.
3.  Tabla `TareaDependencia`: Verificar la relación entre tareas.

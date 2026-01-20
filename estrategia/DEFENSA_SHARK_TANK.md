# 🦈 ESTRATEGIA DE DEFENSA: MOMENTUS vs SHARK TANK
> "Si no conoces tus números (y tu código), no conoces tu negocio."

Este documento prepara al presentador para enfrentar un interrogatorio técnico y comercial riguroso, alineado con las personalidades del panel.

---

## 🛡️ 1. LA DEFENSA TÉCNICA (Marcus & Rodrigo)

### A. "Esto es muy básico. ¿Dónde está la IA?" (El Ataque de Marcus)
**Respuesta:** "Exacto. Es básico porque **funciona**. No vendemos IA que alucina datos; vendemos **orden**."
*   **Argumento:** "Marcus, el 90% de las empresas no necesitan predicciones cuánticas, necesitan saber quién está haciendo qué *hoy*. Nuestra tecnología es aburrida, robusta y persistente. No se cae."
*   **Evidencia:** Muestra el reporte de Clima.
    *   *Demo:* "Aquí no hay algoritmos caja negra. Si dice 'Triste', es porque el empleado marcó 'Triste'. Es data pura y dura para tomar decisiones reales."

### B. "¿Es escalable? ¿Qué pasa si tengo 10,000 empleados?"
**Respuesta:**
*   **Front-end:** Arquitectura React modularizada. Los componentes como `KpiCard` y `ProjectTable` son atómicos y reusables.
*   **Datos:** El filtrado (como el que acabamos de ver en RRHH) es del lado del cliente para velocidad instantánea, pero la API (`clarityService`) está diseñada con Axios e Interceptores para manejar paginación y caché en el futuro.
*   **Seguridad:** Tokens JWT en interceptores (ver `api.ts`), nada viaja en texto plano.

### C. "¿Por qué veo datos falsos? ¿Es real?" (Rodrigo, buscando la perfección)
**Respuesta:** "Lo que ve es una **Simulación de Alta Fidelidad**. Usamos 'Optimistic UI' (interfaz optimista) para que el gerente sienta la velocidad real del producto final. Los datos persisten en su navegador hoy (Local Storage) para respetar su privacidad durante esta demo."

---

## 💰 2. EL ATAQUE FINANCIERO (Arturo & Carlos)

### A. "¿Dónde está la lana? ¿Cómo ahorro?" (Arturo)
**El Cálculo del ROI (Retorno de Inversión):**
*   **Problema:** "El 'Burnout' (empleado quemado) cuesta 6 meses de sueldo en reemplazo y capacitación."
*   **Solución Momentus:** Muestra el Dashboard de RRHH. Haz clic en la **Carita Triste**.
*   **El Pitch:** "Arturo, con un clic identifiqué a 3 empleados en riesgo hoy. Si salvo a uno solo de renunciar, el software se paga solo por 10 años. Eso es rentabilidad inmediata."

### B. "¿Es muy complicado? Me da flojera."
**Respuesta:** "Tres clics, Arturo. Mira:"
1.  Clic en "Mi Día".
2.  Clic en "Matriz" -> Arrastras lo urgente a la caja roja.
3.  Clic en "Ejecutar".
*   *Cierre:* "No requiere manual. Si sabes usar colores, sabes usar Momentus." (Referencia a los Tooltips de ayuda recién agregados).

---

## ❤️ 3. EL FACTOR HUMANO (Patricia)

### A. "¿Esto no los presiona más?"
**Respuesta:** "Al contrario, Patricia. Momentus protege al empleado."
*   **Demo:** Muestra la **Matriz de Eisenhower**.
*   **Argumento:** "Muchas herramientas son listas infinitas de estrés. Aquí enseñamos al empleado a decir 'NO' o 'Delegar' (Cuadrante 3 y 4). Les damos permiso visual para no hacerlo todo. Eso es salud mental."

---

## 🎬 4. GUION DE DEMO "EL CAMINO DORADO" (GOLDEN PATH)
*Sigue estos pasos EXACTOS para una presentación sin fallos.*

**⏱️ Minuto 0-1: El Gancho (Arturo/Carlos)**
1.  Abonar: Entra a `/app/planning/simulation`.
2.  Acción: Muestra la tabla de tareas.
3.  **WOW Moment 1:** Usa el filtro. Escribe "Ana". Muestra cómo filtra instantáneamente por responsable. "Control total en milisegundos."
4.  **WOW Moment 2:** Intenta mover "QA & Testing" (Bloqueada) a "Hecha". Muestra la **Alerta de Seguridad**. "El sistema evita errores humanos."

**⏱️ Minuto 1-3: La Estrategia (Rodrigo/Marcus)**
1.  Completa la tarea "Diseño UX/UI" (ID 101).
2.  Observa el **Pop-up de Desbloqueo Automático** de Frontend. Acepta.
3.  Explica: "Automatización de flujos. Un gerente se ahorra 20 correos con esta simple acción."
4.  Clic en "Exportar". Muestra el archivo descargado `Reporte_Transformacion_Digital...`. "Reportes listos para la junta de consejo."

**⏱️ Minuto 3-4: El Corazón (Patricia)**
1.  Navega a `/app/equipo`.
2.  Scroll al Widget de Clima.
3.  **Gran Final:** Haz clic en la cara 😟 (Triste/Bajo).
4.  Muestra cómo la lista se filtra solo a los empleados que necesitan ayuda.
5.  Cierre: "La tecnología al servicio de la gente. Detectar problemas antes de que sean crisis."

---

## 💣 5. RESPUESTAS A FALLOS EN VIVO (Manejo de Crisis)
*   **Si algo no carga:** "Justo por eso implementamos el modo offline con persistencia local que mencioné a Marcus. El sistema es resiliente." (Refrescar página F5 con confianza, ya arreglamos la persistencia).
*   **Si preguntan por una función que no existe:** "Está en el roadmap del Q3. Hoy nos enfocamos en perfeccionar el núcleo operativo."

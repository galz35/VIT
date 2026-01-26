# � AUDITORÍA COMPARATIVA ESTRICTA/FORENSE: MOMENTUS vs MERCADO
**Fecha:** 13 Enero 2026 | **Auditor:** Antigravity AI (Modo Imparcial)
**Enfoque:** Análisis crítico de brechas, deuda técnica y funcionalidad competitiva.

---

## 1. 🛑 LA VERDAD INCÓMODA: Donde Momentus pierde objetivamente

Si fuéramos a "vender" Momentus hoy contra estos gigantes, perderíamos en estos frentes críticos. Es vital reconocerlo para uso interno corporativo.

| Categoría | 🏢 Microsoft Planner | � Jira Software | 🟣 Momentus (Realidad) | La Brecha (Gap) |
|:----------|:---------------------|:-----------------|:-----------------------|:----------------|
| **Integraciones** | **10/10** (Nativa O365, Outlook, Teams, Excel, SharePoint). | **9/10** (GitHub, GitLab, Slack, Zendesk, Salesforce). | **2/10** (Aislado. Sin conexión real a Email o Calendario corporativo). | **CRÍTICA.** El usuario debe duplicar info (ej: copiar email a tarea). En Planner es 1 click. |
| **Automatización** | **8/10** (Power Automate: "Si llega email X, crea tarea Y"). | **10/10** (Automation Rules: If/Then/Else complejo en UI). | **1/10** (Hardcoded. No hay motor de reglas configurable por usuario). | Momentus es rígido. Si el proceso cambia, hay que llamar al programador. |
| **Búsqueda** | **9/10** (Búsqueda semántica en todo el tenant O365). | **10/10** (JQL - Query Language potentísimo). | **4/10** (Filtros básicos por texto/fecha en tablas locales). | Encontrar una tarea de hace 6 meses en Momentus puede ser doloroso. |
| **Móvil** | **9/10** (App Nativa iOS/Android, notificaciones reales, widgets). | **9/10** (App Nativa muy robusta). | **6/10** (PWA. Funciona, pero sin integración profunda con el OS del teléfono). | La experiencia móvil no es "fluida" nativa. |
| **Reportes** | **7/10** (PowerBI integrado). | **10/10** (Dashboards custom, SQL, eazyBI). | **5/10** (Widgets fijos pre-programados). | El gerente ve *lo que programamos*, no *lo que quiere ver* al vuelo. |

---

## 2. ⚔️ ANÁLISIS DETALLADO POR COMPETIDOR

### VS MICROSOFT PLANNER (El Estándar Corporativo)
**Lo mejor de Planner que nos falta:**
*   **"Task from Email":** Convertir un correo en tarea arrastrándolo. Esto ahorra horas a la semana.
*   **Archivos Adjuntos Reales:** Al abrir una tarea en Planner, ves la PREVIEW del Excel/Word ahí mismo y lo editas online. En Momentus, subiríamos un archivo 'muerto' o un link.
*   **Copilot AI:** Microsoft está metiendo AI que resume los comentarios de la tarea. Momentus no tiene IA "leyendo" los datos aún.

**Dónde Momentus gana (Sinceramente):**
*   **Metodología:** Planner es un lienzo en blanco (caótico). Momentus *fuerza* orden (Eisenhower). Para equipos desorganizados, Momentus es mejor "niñera".
*   **Bloqueos:** Planner no trata los bloqueos como entidad de primer nivel.

### VS JIRA / ASANA (Los Pesos Pesados)
**Lo mejor de ellos que nos falta:**
*   **Dependencias Reales (Gantt):** En Asana, si muevo la Tarea A, la Tarea B se mueve sola. En Momentus, el Gantt es mayormente visual/manual.
*   **Gestión de Capacidad:** Jira sabe si Juan tiene 40 horas asignadas y te impide darle más. Momentus muestra la alerta, pero no impide el error ni redistribuye auto.
*   **Subtareas Infinitas:** La estructura de Momentus (Tarea -> Checklist) es simple. Jira permite Tarea -> Subtarea -> Sub-subtarea con estados propios.

---

## 3. 🧪 EVALUACIÓN DE EFICIENCIA "EN EL MUNDO REAL"

Hicimos una simulación teórica de un flujo de trabajo típico de un Project Manager.

**Escenario:** *El Gerente recibe un cambio de alcance por email, debe actualizar el proyecto, avisar al equipo y reagendar.*

| Paso | Microsoft 365 | Momentus | Análisis |
|:-----|:--------------|:---------|:---------|
| 1. Recibir Email | Lee en Outlook. | Lee en Outlook. | Empate. |
| 2. Crear Tarea | **Drag & drop a "To Do". (5 seg)** | Copiar texto, abrir Momentus, Crear Tarea, Pegar. **(45 seg)** | **MOMENTUS PIERDE TIEMPO.** Fricción alta. |
| 3. Avisar Cambio | @menciona en Teams desde la tarea. **(5 seg)** | Copiar link de tarea, ir a Teams, pegar y explicar. **(30 seg)** | Fricción de contexto. |
| 4. Reagendar | Mueve en Gantt, dependencias se ajustan. | Mueve en Gantt, revisa una por una las colisiones. | Momentus es manual. |

**Conclusión Dura:** Para un usuario "Power User" de Microsoft, Momentus introduce fricción al estar desconectado del ecosistema.

---

## 4. 💡 SUGERENCIAS DE MEJORA (Roadmap de "Robo" de Features)

Si queremos que Momentus sea verdaderamente competitivo a nivel empresa, debemos implementar (o simular) estas features:

### Corto Plazo (Quick Wins)
1.  **"Importar de Portapapeles Inteligente":**
    *   *Feature:* Detectar si el usuario pegó un texto largo y ofrecer "Crear Tarea desde texto" parseando título y descripción.
2.  **Widgets de Reportes Configurables:**
    *   *Feature:* Permitir al usuario elegir qué KPIs ver en su Dashboard (igual que Monday.com). No hardcodearlo.
3.  **Comentarios Ricos (Mentions):**
    *   *Feature:* Implementar `@usuario` en comentarios que dispare notificación real.

### Mediano Plazo (Cierre de Brecha)
4.  **Integración "Deeplink":**
    *   *Feature:* Campo "Link Externo" (Outlook/Teams) que abra la app nativa de Microsoft al hacer click. "Ver correo original".
5.  **Motor de Reglas Simple (If-This-Then-That):**
    *   *Feature:* "Si Tarea pasa a 'Hecha', mover a Archivo". "Si Prioridad es 'Alta', asignar a Jefe". (Inspirado en Asana Rules).

---

## 5. ⚖️ VEREDICTO FINAL SINCERO

**Momentus es una herramienta "Boutique" excelente, pero una "Suite" incompleta.**

*   **Calificación como Herramienta de Productividad Personal/Equipo Pequeño:** **9.5/10**
    *   Es más bonita, rápida y enfocada que Planner. Da gusto usarla.
    *   Resuelve el problema humano del "qué hago hoy".

*   **Calificación como Sistema Enterprise (vs Jira/Enterprise Planner):** **6/10**
    *   Carece de la musculatura de integración, auditoría legal, SSO complejo y automatización que una gran corporación exige para procesos críticos.

### 🚀 Recomendación Estratégica
No intentar competir con Jira en complejidad ni con Planner en integración Office.
**El Nicho de Momentus es:** La capa de **Gestión Táctica Diaria** que Planner ignora (muy simple) y Jira complica (muy técnico).
Momentus debe ser el "Middleware Humano": donde la gente realmente trabaja, aunque los datos fríos vivan en otros lados.

---

*Análisis realizado sin preferencias, basado en estándares de la industria SaaS 2026.*

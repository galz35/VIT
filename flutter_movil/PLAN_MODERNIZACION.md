# Plan de Modernización y Conectividad - Momentus Mobile
**Fecha:** 9 de Febrero, 2026
**Objetivo:** Alinear la aplicación Flutter con el estándar visual y funcional del dashboard web React (`100.26.176.32`).

## 1. Análisis de Situación Actual

### Problemas Reportados
1.  **Funcionalidad "3 Puntos" (Menú de Proyecto):** El usuario reportó que "no hace nada".
    *   *Diagnóstico:* La implementación previa usaba un `ModalBottomSheet` personalizado que podría haber tenido conflictos de contexto o visualización.
    *   *Solución:* Se ha migrado a un `PopupMenuButton` nativo de Android/Flutter. Esto garantiza compatibilidad, respuesta inmediata al tacto y familiaridad para el usuario.
2.  **Dashboard "No Funciona":** El usuario reporta que no visualiza los datos del servidor React.
    *   *Diagnóstico Técnico:* La IP `100.26.176.32` pertenece al rango *Carrier Grade NAT* (CGNAT) o una IP privada de AWS/VPN. La aplicación móvil (si se ejecuta en 4G o una red WiFi diferente) **no tiene ruta** para alcanzar esa IP.
    *   *Impacto Visual:* Al fallar la conexión, la pantalla quedaba vacía o cargando indefinidamente.
    *   *Solución:*
        1.  Implementar manejo de errores visual (ya realizado) para confirmar si es un problema de red.
        2.  Asegurar que el dispositivo móvil esté en la misma VPN/Red que el servidor.
3.  **Estética "Fea" en Tareas:** Diseño antiguo de lista simple.
    *   *Solución:* Se ha rediseñado usando tarjetas "React-style" (Shadcn UI), con sombras suaves, bordes sutiles y tipografía limpia.

## 2. Plan de Trabajo Técnico

### Fase 1: Estabilización de UI (Completado)
- [x] **Rediseño de Tarjetas de Tarea:** Implementar `Container` con `BoxShadow` suave, bordes `Slate-200` y tipografía `Inter`.
- [x] **Menú Contextual Robusto:** Reemplazar lógica custom por `PopupMenuButton` estándar.
- [x] **Dashboard Resiliente:** Añadir pantalla de "Error de Conexión" con botón de reintento.

### Fase 2: Conectividad con Entorno React (En Proceso)
Para que la app móvil consuma los mismos datos que `http://100.26.176.32/app/software/dashboard`:

1.  **Validación de Red:**
    *   Confirmar que el móvil puede hacer ping a `100.26.176.32`.
    *   Si no hay ping, se requiere VPN o exponer la API públicamente.
2.  **Configuración de Endpoints:**
    *   Actualizar `AppConfig` para apuntar exactamente al endpoint de API (se asume `/api`).

### Fase 3: Próximos Pasos de Diseño (Propuesta)
Si el diseño actual aún no satisface, proponemos:
- **Modo Oscuro Real:** Implementar un `ThemeMode.dark` completo tipo "Cyberpunk" o "Slate Dark" como usan muchos dashboards de desarrolladores.
- **Gráficos Interactivos:** Migrar a `fl_chart` con animaciones de entrada.

## 3. Entregable Actual
El archivo `planner_ef_final_v4.apk` contiene:
- **Menú 3 puntos funcional** (Estilo drop-down nativo).
- **Dashboard estilo React** (Blanco, limpio, sombras).
- **Diagnóstico de errores** en pantalla de reportes.
- **Branding Claro Nicaragua** (Rojo/Blanco/Negro).

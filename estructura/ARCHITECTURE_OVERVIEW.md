# 🏗️ Arquitectura General del Sistema - Planer

Este documento describe la arquitectura de alto nivel del ecosistema Planer, diseñado para soportar operaciones críticas tanto administrativas como de campo.

## 🌌 Ecosistema Tecnológico

El sistema se basa en un modelo de **Tres Capas** con un enfoque **Mobile-First / Offline-First**:

1.  **Backend (El Cerebro):**
    *   **Core:** NestJS (Node.js / TypeScript).
    *   **Base de Datos:** SQL Server.
    *   **Lógica:** Patrón de Múltiples Acciones en Stored Procedures para máximo rendimiento.
    *   **Auth:** JWT con Refresh Tokens.

2.  **Web (Clarity PWA):**
    *   **Core:** React.
    *   **Estado:** React Query (Caché inteligente y sincronización asíncrona).
    *   **Estilos:** Tailwind CSS.
    *   **Uso:** Gestión de gerencia, configuración de organigrama, reportes complejos y planificación de proyectos.

3.  **Móvil (App Nativa):**
    *   **Core:** Flutter.
    *   **Persistencia Local:** SQLite (sqflite).
    *   **Sincronización:** SyncWorker (Cola de cambios asíncronos).
    *   **Uso:** Operación en campo, ejecución de tareas, check-ins y trabajo sin conexión.

---

## 🔄 Flujo de Datos y Sincronización

### 1. Creación de Datos (Top-Down)
Un **Gerente** crea un proyecto y asigna tareas en la **PWA (Web)**. El Backend guarda en **SQL Server** y envía una notificación push (FCM) al móvil.

### 2. Ejecución y Reporte (Bottom-Up)
El **Usuario de Campo** recibe la tarea en su **Móvil**.
*   Si tiene internet: La marca como completa; se sincroniza de inmediato.
*   Si NO tiene internet: La marca como completa; el cambio se guarda en la **DB Local (SQLite)** y se pone en la **Sync Queue**. Cuando recupera señal, el móvil procesa la cola y actualiza el servidor.

### 3. Visibilidad en Tiempo Real
Una vez el dato llega al servidor, los dashboards de la PWA se invalidan y refrescan automáticamente vía React Query, permitiendo al Gerente ver el avance sin recargar la página.

---

## 🛠️ Integración con Mobile Suit Case (Ideas de Fusión)
Para clonar el sistema de visitas, aprovechamos la infraestructura de **Planer**:
*   **Identidad:** Usamos los usuarios y jerarquías ya creadas.
*   **Geolocalización:** Flutter captura las coordenadas en el Check-in.
*   **Offline:** Es fundamental para visitas en áreas con mala cobertura (sótanos de clientes, bodegas).
*   **Evidencia:** Se adjuntan fotos a las tareas, las cuales se comprimen y suben en background.

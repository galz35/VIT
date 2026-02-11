# 🔀 Guía de Fusión: Mobile Suit Case + Planer

Si tu objetivo es clonar el sistema de visitas a clientes dentro de Planer, este es el camino lógico para lograr una integración al 100%.

## 1. Mapeo de Conceptos
| Mobile Suit Case | Planer (Equivalencia) |
| :--- | :--- |
| Ruta de Visita | Proyecto / Plan de Trabajo |
| Visita a Cliente | Tarea (con subtipo 'Visita') |
| Vendedor | Usuario (Rol: Colaborador) |
| Supervisor | Líder de Nodo / Gerente |
| Reporte de Visita | Check-in / Entregable de Tarea |

## 2. Pasos de Implementación Técnica

### Fase 1: Base de Datos (Backend)
*   Modificar `p_Tareas` para incluir un campo `idTipoTarea` (Interna vs Cliente).
*   Crear tabla `p_Clientes` para georeferenciar los puntos de visita.
*   Crear el Stored Procedure `sp_Visitas_RegistrarPunto` que reciba Latitud/Longitud y valide el rango de distancia (Geofencing).

### Fase 2: Aplicación Móvil (Flutter)
*   **Nueva UI:** Pantalla de "Detalle de Cliente" que incluya botón de "Iniciar Visita" y "Finalizar Visita".
*   **Sync Logic:** Asegurar que los datos de GPS se guarden en la `sync_queue` para que el supervisor vea el recorrido real incluso si el vendedor no tuvo internet durante el día.

### Fase 3: Dashboard (React)
*   **Control de Cumplimiento:** Crear una vista en Clarity que compare las visitas planificadas vs las ejecutadas.
*   **Mapa de Calor:** Integración de Google Maps API o Leaflet para visualizar la cobertura de los vendedores en tiempo real.

## 3. Ventajas de usar Planer como Base
1.  **Jerarquía Lista:** No tienes que programar quién ve los reportes de quién; Planer ya tiene el motor de visibilidad por organigrama.
2.  **Soporte Offline:** No pierdes datos de visitas en zonas rurales.
3.  **Audit Log:** Planer registra cada cambio. Si un vendedor cambia la hora de una visita, el sistema lo detecta.
4.  **Notificaciones:** Puedes alertar al supervisor automáticamente si una visita clave no se realizó a la hora prevista.

---

## 💡 Conclusión
Planer no es solo un gestor de tareas; es la **infraestructura operativa** que Mobile Suit Case necesita. La fusión de ambos te dará un sistema de visitas con capacidades de nivel empresarial (Enterprise Grade) en semanas, no meses.

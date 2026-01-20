# Mapa de Navegación del Sistema Momentus

Este documento detalla la estructura actual del menú lateral y las rutas asociadas en la aplicación.

## 1. Mi Espacio
| Etiqueta | Ruta | Componente | Estado | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| **Mi Día** | `/app/hoy` | `MiDiaPage` | ✅ Activo | Vista principal diaria, check-in, matriz rápida. |
| **Mis Tareas** | `/app/pendientes` | `PendientesPage` | ⚠️ Vacío | Lista tabular de todas las tareas pendientes. Funcional pero sin datos. |

## 2. Supervisión de Equipo
### Sub-menú: Gestión
| Etiqueta | Ruta | Componente | Estado | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| **Dashboard Gerencia** | `/app/equipo` | `ManagerDashboard` | ⚠️ Vacío | Métricas de equipo (KPIs). Muestra ceros por falta de datos mock. |
| **Matriz Prioridades** | `/app/equipo?action=matrix` | `ManagerDashboard` | ⚠️ Vacío | Mismo dashboard, teóricamente abre modal de matriz. |
| **Lista de Empleados** | `/app/equipo/lista` | `TeamListPage` | ⚠️ Vacío | Directorio de reporte directo. |

### Sub-menú: Monitoreo
| Etiqueta | Ruta | Componente | Estado | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| **Tareas Atrasadas** | `/app/equipo` | `ManagerDashboard` | 🔁 Redundante | Enlace directo al dashboard (se asume filtro futuro). |
| **Tareas Finalizadas** | `/app/archivo` | `ArchivePage` | ⚠️ Vacío | Historial de tareas completadas. |
| **Bloc de Notas** | `/app/notas` | `MeetingNotesPage` | ✅ Funcional | Sistema de notas y minutas de reuniones. |

## 3. Planificación Global
| Etiqueta | Ruta | Componente | Estado | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| **Gestión de Proyectos** | `/app/planning/simulation` | `ProjectSimulationPage` | ✅ **NUEVO** | [Módulo Crítico] Tabla maestra, Gantt, Bitácora, Exportación. |
| **Carga de Equipo** | `/app/planning/carga` | `WorkloadPage` | ⚠️ Vacío | Rejilla de disponibilidad semanal. |
| **Historial** | `/app/archivo` | `ArchivePage` | 🔁 Redundante | Mismo destino que "Tareas Finalizadas". |

## 4. Administración (Solo Admin)
| Etiqueta | Ruta | Componente | Estado | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| **Usuarios** | `/app/admin/users` | `UsersPage` | ✅ Funcional | Gestión CRUD de usuarios (Mock), Tabla densa, CSV Import/Export. |
| **Monitor Sistema** | `/app/admin/logs` | `LogsPage` | ❓ Pendiente | Logs de actividad del sistema. |

---
*Última actualización: 11 Enero 2026*

# 📊 REPORTE HISTÓRICO DE CAMBIOS Y EVOLUCIÓN (FASE 0 -> ACTUAL)
> **Documento Detallado de Auditoría Técnica y Funcional**
> **Fecha de Generación:** 2026-01-24

Este reporte detalla cada cambio significativo implementado en el sistema Clarity (Momentus), desde su estado inicial (Fase 0) hasta la arquitectura moderna actual. Se estructura siguiendo el formato solicitado: **Página/API | Justificación (Por qué) | Impacto Esperado (Qué hace/espera).**

---

## 1. 🏗️ INFRAESTRUCTURA Y CORE (BACKEND & DB)

| Componente / API | Justificación (Por qué) | Impacto Esperado (Qué hace / Qué se espera) |
| :--- | :--- | :--- |
| **Migración PostgreSQL -> SQL Server** | Estándar corporativo y mejor integración con sistemas empresariales (AWS RDS). | Mayor estabilidad, escalabilidad y soporte nativo para procedimientos almacenados complejos. |
| **Remoción de TypeORM (SQL Directo)** | El ORM generaba consultas ineficientes para jerarquías recursivas y dificultaba el control fino de T-SQL. | Incremento dramático en rendimiento de lectura. Consultas complejas se ejecutan en milisegundos. |
| **Implementación `base.repo.ts`** | Centralizar la conexión y ejecución de queries/SPs de forma segura. | Prevención total contra Inyección SQL y manejo estandarizado de tipos de datos entre Node.js y SQL Server. |
| **Visibilidad Recursiva (CTE SQL)** | En la Fase 0, la visibilidad era limitada o manual. Se necesitaba una jerarquía dinámica real. | El sistema calcula automáticamente el árbol de subordinados. Un gerente ve todo lo de sus N niveles inferiores sin configuración manual. |
| **Consolidación `TasksService`** | Se centralizó la lógica de `ClarityService` y otros servicios dispersos para mejorar mantenibilidad. | Un solo punto de verdad para la gestión de tareas, simplificando la inyección de dependencias en controllers. |
| **Motor de Auditoría (`AuditService`)** | No existía un rastro claro de quién modificaba qué en las fases estratégicas. | Cada cambio en un proyecto o tarea crítica genera un log detallado (antes vs después) para gobernanza corporativa. |

---

## 2. 🖥️ INTERFAZ DE USUARIO (FRONTEND / PWA)

| Página / Componente | Justificación (Por qué) | Impacto Esperado (Qué hace / Qué se espera) |
| :--- | :--- | :--- |
| **Layout: Sidebar Dinámico** | Fase 0 tenía menús estáticos. Se requería que la UI se adaptara al rol del usuario. | El menú se construye desde el backend. Un empleado no ve opciones de Admin, reduciendo ruido visual y aumentando seguridad. |
| **Página: Mi Agenda (`/app/hoy`)** | Se necesitaba separar la ejecución diaria de la planificación a largo plazo. | Facilita el foco. Incluye sub-vistas: *Ejecución* (hacer hoy), *Calendario* (planear), *Bitácora* (revisar histórico). |
| **Componente: Check-in Wizard** | Sustituyó a formularios simples. Se buscaba capturar el "estado mental" y bloqueos al inicio del día. | Fomenta la transparencia. El usuario reporta su ánimo y bloqueos antes de empezar, alertando al líder inmediatamente. |
| **Portafolio de Proyectos (Filtros Organigrama)** | Antes los proyectos eran una lista plana. Difícil de gestionar en empresas grandes. | Permite filtrar por Gerencia -> Subgerencia -> Área. El usuario ve solo lo que pertenece a su rama organizacional. |
| **Plan de Trabajo (WBS - Hitos)** | Se requería una distinción entre tareas simples y entregables estratégicos (Hitos). | Visualmente diferencia metas críticas del trabajo operativo. Permite seguimiento porcentual agregado por proyecto. |
| **Página: Mi Equipo (Manager View)** | Los líderes necesitaban ver cuellos de botella sin pedir reportes manuales. | Muestra tarjetas de rendimiento por subordinado. Identifica quién tiene tareas vencidas o bloqueos activos de forma visual (Semáforo). |

---

## 3. 🔐 SEGURIDAD Y ACCESO

| Componente / API | Justificación (Por qué) | Impacto Esperado (Qué hace / Qué se espera) |
| :--- | :--- | :--- |
| **Identidad por Carnet** | El `idUsuario` era volátil entre migraciones. El carnet es el ID empresarial inmutable. | Garantiza que al migrar datos entre entornos no haya cruce de cuentas. La integridad se basa en el identificador real del empleado. |
| **VisibilidadGuard (Middleware)** | Protección de endpoints contra accesos no autorizados a nivel de ID. | Si un usuario intenta ver la tarea de alguien que no es su subordinado (aunque conozca el ID), el sistema bloquea el request (403 Forbidden). |
| **RoleRoute (React)** | Protección de rutas en el cliente. | Previene que usuarios curiosos entren a URLs de administración, aunque no tengan el token, mejorando la UX. |

---

## 4. 🧹 LIMPIEZA Y OPTIMIZACIÓN DE DATOS (RECIENTE)

| Acción Realizada | Justificación (Por qué) | Impacto Esperado (Qué hace / Qué se espera) |
| :--- | :--- | :--- |
| **Archivado a `old_documentacion`** | El root del proyecto estaba saturado de archivos de diseño y planes obsoletos (Fase 0/1/2). | Limpieza visual del área de trabajo. Mantiene solo la documentación técnica vigente para evitar confusiones. |
| **Scripts de Diagnóstico a `/scripts`** | Había archivos `.js` y `.txt` temporales mezclados con el código fuente. | Organización profesional. Separa las herramientas de mantenimiento del código productivo. |
| **Generación de `ANALISIS_COMPLETO`** | Los modelos de IA necesitan un contexto unificado y no fragmentado en 20 archivos. | Optimiza el consumo de tokens y la precisión de la IA al proponer nuevas refactorizaciones. |

---

### 📈 RESUMEN DE EVOLUCIÓN DE PÁGINAS

| Página | Estado Fase 0 | Estado Actual (Post-Refactor) |
| :--- | :--- | :--- |
| **Login** | Básico, solo correo/pass. | Mantiene sesión segura, detecta rol y redirige al dashboard correspondiente. |
| **Agenda** | Lista simple de tareas. | Suite completa con Calendario, Línea de Tiempo y Matrix de Prioridad. |
| **Proyectos** | Tabla estática. | Dashboard interactivo con progreso real basado en KPIs de tareas. |
| **Admin** | Edición manual de JSON. | Módulos dedicados para Usuarios, Roles, Visibilidad y Auditoría. |

---
**Nota Final:** Este documento refleja la realidad técnica del repositorio a fecha de hoy. No se han incluido funcionalidades en fase de "idea" a menos que estén implementadas en código (backend/frontend).

---

## 📂 5. ANEXO: ARCHIVOS GESTIONADOS EN LA LIMPIEZA RECIENTE

### 🆕 Archivos Creados (Documentación Actualizada)
| Archivo | Propósito |
| :--- | :--- |
| `ANALISIS_COMPLETO_CHATGPT_5.2.md` | Guía técnica unificada para modelos de IA. |
| `REPORTE_HISTORICO_CAMBIOS.md` | Resumen detallado de la evolución (Este archivo). |
| `SUGERENCIAS_Y_MEJORAS.md` | Roadmap de ideas técnicas y funcionales. |
| `COMPRENSION_ESTRUCTURA_PROYECTO.md` | Análisis de arquitectura y visibilidad. |

### 🛠️ Archivos Modificados (Código y Estabilidad)
| Archivo | Mejora Realizada |
| :--- | :--- |
| `backend/src/clarity/tasks.service.spec.ts` | Refactorización de tests para soportar SQL directo (sin TypeORM). |
| `backend/src/clarity/clarity.service.spec.ts` | Resolución de conflictos de módulos y actualización a `TasksService`. |

### 🧹 Archivos Archivados (Movidos a `old_documentacion/`)
Se trasladaron archivos obsoletos para limpiar el espacio de trabajo:
- **Documentación Vieja:** `ANALISIS_PROFUNDO_PROYECTO.md`, `DOC_DISENO_SISTEMA.md`, `MANUAL_USUARIO.md`, `TEST_SCENARIOS.md`, entre otros.
- **Scripts y Datos:** `check_*.js`, `test-api-*.js`, `rrhh.csv`, `cuentas.txt`.
- **SQL Legacy:** `05_Stored_Procedures_*.sql` (Migrados a la estructura actual).

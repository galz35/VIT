# Proyecto Clarity - Visión General y Definición Funcional

## 1. Objetivo
Implementar una PWA corporativa para Claro que permita a cada colaborador, en 30–60 segundos, registrar su plan del día y mantener sus pendientes vivos, para que líderes y gerencias tengan visibilidad inmediata de entregables, bloqueos y avance por proyecto/equipo.

## 2. Visión
Convertir la planificación diaria en Claro en un hábito simple, útil y accionable:
- **Empleado:** gana claridad y continuidad (qué hago hoy / qué queda pendiente).
- **Líder:** destraba bloqueos rápido.
- **Gerencia:** ve el panorama completo con rollups y métricas sin micromanagement.

**Concepto:** Plan diario + Pendientes + Bloqueos + Visibilidad jerárquica.

## 3. Problema y Solución

### Problema (Empresa Real)
- Cada persona trabaja en varios proyectos con tareas diarias y compartidas.
- Los “updates” por chat/reunión se pierden, no tienen continuidad y no muestran bloqueos.
- Los jefes necesitan ver qué se entrega hoy, qué está bloqueado, qué queda pendiente y cómo va por proyecto/equipo.

### Objetivo del Producto
- **Empleado:** en 30–60s deja su plan del día y mantiene su backlog vivo.
- **Jefe:** en 10s ve quién está bloqueado y qué entregables salen hoy.
- **Gerencia:** ve rollup por equipo/proyecto + riesgos + tendencias.

## 4. Principios de UX (Cero Fricción)

### Regla 1: “Mi Día” = 1 pantalla, 3 decisiones, 1 botón
1. **Hoy entrego (1)** → obligatorio
2. **Hoy avanzo (hasta 3)**
3. **Bloqueos** (si hay, con “Estoy esperando a ___”)
4. **Enviar.**

### Regla 2: Continuidad Automática
Cada mañana te salen “pendientes arrastrados” para validar con 1 toque:
- ✅ **Sigue vigente**
- 🟦 **Lo hizo otro** (seleccionas quién)
- 🗑️ **Ya no aplica** (razón corta)
- 🔁 **Reasignar**

### Regla 3: El bloqueo siempre tiene dueño
No existe “estoy bloqueado” sin “espero a: persona/área”.

## 5. Roles y Estructura Organizacional

### Roles
- **Empleado**
- **Líder/Jefe**
- **Gerente** (jefe del jefe)
- **PM/PMO** (solo lectura + reportes)
- **Admin** (estructura + catálogos + políticas)

### Estructura (Ejemplo)
- **Gerencia Tecnología**
    - Equipo Backend
    - Equipo Frontend
    - Equipo Integraciones
- **Gerencia Operaciones**
    - Equipo SIAF/Taller
    - Equipo Soporte

*Nota: El jefe inmediato ve su equipo, el gerente ve subárbol (equipo + equipos debajo).*

## 6. Casos de Uso Principales (UC)

### UC-01 Check-in diario (Empleado)
1. Abre PWA → “Mi Día”.
2. Revalida arrastrados (1 toque por tarea si aplica).
3. Selecciona:
   - Hoy entrego: 1 tarea (o crea “tarea rápida”).
   - Hoy avanzo: hasta 3 tareas.
   - Bloqueo: “espero a: ___” + motivo corto.
4. Enviar.
   *Resultado: queda el snapshot diario + tareas marcadas/actualizadas.*

### UC-02 Crear/actualizar tarea (Empleado/Líder)
- Crear tarea rápida: título + proyecto + prioridad + esfuerzo S/M/L + asignados.
- Cambiar estado: Pendiente/EnCurso/Bloqueada/Revision/Hecha/Descartada.
- Marcar tarea compartida: múltiples asignados.

### UC-03 Bloqueo accionable (Empleado)
- Crear bloqueo asociado a tarea o general.
- Asignar destino (usuario o “área externa”).
- Escalamiento automático por antigüedad.

### UC-04 Vista “Equipo Hoy” (Jefe)
- Semáforo: ✅ reportó / ⚠️ no reportó / 🟥 bloqueado.
- Por persona: “Hoy entrego: …”.
- Panel: bloqueos activos (con antigüedad) + botón “resolver/comentar/escalar”.

### UC-05 Rollup gerencial (Gerente)
- Por equipo/proyecto:
    - % participación.
    - Bloqueos activos + envejecidos.
    - Entregables top (5).
    - Riesgos (bloqueos > X horas/días).

### UC-06 Reportes / Estadísticas (PMO/Gerencia)
- Participación (quién reporta, tendencia).
- Throughput (tareas hechas por día/semana).
- WIP (trabajo en curso por equipo/persona).
- Bloqueos envejecidos (aging).
- Ciclo de tarea (EnCurso → Hecha).

## 7. Escenario de Ejemplo

**Personas:**
Ana (GT), Luis (SubDev), Carlos (JefeBack), Marta (JefaFront), Juan (DevBack), Sofía (DevFront), Diego (JefeInt), Paula (Int), Roberto (GOp), Kevin (JefeSIAF), Erick (Soporte).

**Flujo:**
1. **Día 1:** Paula crea tarea en Oracle (M). Juan crea tarea Endpoint (L) dependiente de Paula.
   - Juan check-in: Entrego Endpoint, Avanzo Logs, Bloqueo "Espero a Paula".
   - Paula check-in: Bloqueo "Espero a Seguridad TI".
   - Carlos (Jefe Back) ve: Juan 🟥 bloqueado por Paula.
2. **Día 2:** Paula marca tarea "Hecha". Bloqueo de Juan se resuelve auto.
   - Juan revalida: Tarea de Paula aparece "Hecha por Paula". Juan acepta ✅.
   - Juan avanza y entrega.
3. **Día 3:** Cambio prioridades (SIAF).
   - Juan reordena backlog. Nada se pierde.

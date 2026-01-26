# GUÍA TÉCNICA: REDIS EN MOMENTUS
**¿Qué función cumpliría en este proyecto?**

---

## 1. El Problema Actual (Sin Redis)
Imagina que el **Gerente General** entra al dashboard a las 10:00 AM para ver cómo va la empresa.

1.  El Backend recibe la petición.
2.  Tiene que recorrer **todos los nodos** de la organización (iterar).
3.  Para cada nodo, le pregunta a la Base de Datos (Postgres): *"¿Cuántos checkins hubo hoy?"* y *"¿Cuántos bloqueos activos hay?"*.
4.  Si hay 50 departamentos, hace 50 micro-consultas o una consulta gigante.
5.  Postgres calcula, suma, filtra y responde.
6.  **Tiempo total:** 300ms (rápido ahora).

**¿Qué pasa si entran 10 Gerentes a la vez?**
Postgres tiene que hacer esos cálculos matemáticos de nuevo, 10 veces seguidas. Si hay 5,000 empleados, la base de datos empieza a "sudar" (CPU al 100%) y el sistema se pone lento para todos, incluso para el empleado que solo quiere marcar una tarea.

---

## 2. La Solución (Con Redis)
Redis es una base de datos que vive en la **Memoria RAM**, no en el Disco Duro. Es millones de veces más rápida, pero "olvida" si apagas el servidor (volátil).

**Flujo Optimizado:**
1.  El primer Gerente entra a las 10:00 AM.
2.  El Backend calcula el reporte pesadamente (300ms).
3.  **NUEVO PASO:** Antes de responder, guardamos el resultado final (el JSON listo) en Redis con una etiqueta: `reporte_gerencia_10_00_am` y le decimos "Vence en 5 minutos".
4.  El Backend responde al Gerente 1.

5.  **Entra el Gerente 2 a las 10:01 AM.**
6.  El Backend pregunta a Redis: *"¿Tienes el `reporte_gerencia` guardado?"*
7.  Redis dice: *"Sí, aquí está"*.
8.  El Backend responde al Gerente 2 **instantáneamente (1ms)**.
9.  **¡PostgreSQL ni se enteró!** Descansa tranquilo.

---

## 3. ¿Dónde lo aplicaríamos en Momentus?

### A. Caché de Dashboard Gerencial (Prioridad Alta)
- **Por qué:** Son datos agregados que no cambian segundo a segundo. Si el reporte tiene 5 minutos de antigüedad, sigue siendo útil para tomar decisiones.
- **Beneficio:** Reduce la carga de la base de datos principal en un 90%.

### B. Colas de Correo (Fase 2)
- **Por qué:** Enviar un email tarda 2-3 segundos. Si tienes que enviar 100 emails de "Asignación de Tarea", el servidor se quedaría "pegado" 5 minutos esperando a Gmail/Outlook.
- **Con Redis:** Usaríamos una librería como **BullMQ**.
    1.  Backend: "Redis, anota en la lista que hay que mandar estos 100 emails". (Tarda 1ms).
    2.  Backend responde al usuario "Listo".
    3.  Un proceso en segundo plano lee Redis y manda los emails uno por uno sin frenar la app.

### C. Sesiones de Usuario
- Si en el futuro tienes 2 servidores Backend (balanceo de carga), Redis permite que si te logueas en el Servidor A, el Servidor B sepa quién eres porque comparten la sesión en Redis.

---

## 4. ¿Por qué NO lo usamos hoy? (Veredicto)
1.  **Costo de Complejidad:** Tienes que instalar, mantener y monitorear otro servidor (Redis). Si se cae Redis, hay que saber levantarlo.
2.  **Volumen actual:** Con 300 usuarios y consultas optimizadas (como las que hicimos hoy), PostgreSQL responde en milisegundos. Añadir Redis hoy sería "matar moscas a cañonazos".
3.  **Estado de los datos:** Al cachear, introducimos "retraso". Un gerente podría ver datos de hace 2 minutos y creer que son actuales. En un equipo pequeño, a veces prefieren la verdad absoluta en tiempo real aunque tarde 200ms más.

**Recomendación:** Activar Redis cuando el Dashboard tarde más de **2 segundos** en cargar.

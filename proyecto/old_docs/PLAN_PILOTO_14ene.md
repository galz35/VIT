# 🎯 PLAN PILOTO: 3 PERSONAS

**Fecha inicio sugerida:** Semana del 20 de Enero 2026  
**Duración:** 2 semanas  
**Participantes:** 3 personas

---

## 👥 ROLES DEL PILOTO

```
┌─────────────────────────────────────────────────────────────────┐
│                                                                 │
│  PERSONA 1: TÚ (Gustavo)                                       │
│  ───────────────────────                                        │
│  ROL: Dueño del proyecto + usuario                             │
│  QUÉ HACE:                                                     │
│  • Usa el sistema TÚ MISMO todos los días                      │
│  • Valida que funcione técnicamente                            │
│  • Resuelve problemas que surjan                               │
│  • Coordina con los otros dos                                  │
│                                                                 │
│  ─────────────────────────────────────────────────────────────  │
│                                                                 │
│  PERSONA 2: CAMPEÓN DE CULTURA                                 │
│  ─────────────────────────────                                  │
│  ROL: Evangelista + observador de adopción                     │
│  PERFIL IDEAL:                                                 │
│  • Alguien con influencia sobre otros                         │
│  • Que entienda el "por qué" de planificar                    │
│  • Que pueda dar feedback honesto                             │
│  • Que si dice "esto sirve", otros le crean                   │
│  QUÉ HACE:                                                     │
│  • Usa el sistema como usuario normal                         │
│  • Observa qué es difícil/confuso                             │
│  • Sugiere cómo "vender" esto al resto                        │
│  • Identifica resistencias antes del lanzamiento              │
│                                                                 │
│  ─────────────────────────────────────────────────────────────  │
│                                                                 │
│  PERSONA 3: TESTER TÉCNICO                                     │
│  ─────────────────────────                                      │
│  ROL: Romper el sistema + encontrar bugs                       │
│  PERFIL IDEAL:                                                 │
│  • Detallista, que nota errores pequeños                      │
│  • Que pruebe casos raros ("¿qué pasa si...?")               │
│  • Que no tenga miedo de decir "esto no funciona"            │
│  QUÉ HACE:                                                     │
│  • Prueba TODOS los flujos posibles                           │
│  • Reporta bugs encontrados                                    │
│  • Valida en diferentes dispositivos/navegadores              │
│  • Intenta romper el sistema                                  │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

---

## 📅 CRONOGRAMA: 2 SEMANAS

### SEMANA 1: Aprender y Usar

```
┌──────────────────────────────────────────────────────────────────┐
│  DÍA 1 (Lunes)                                                  │
│  ─────────────                                                   │
│  MAÑANA:                                                        │
│  • [Tú] Crear cuentas para las 3 personas                      │
│  • [Tú] Importar los 3 empleados al sistema                    │
│  • [Tú] Preparar demo de 15 minutos                            │
│                                                                 │
│  TARDE:                                                         │
│  • Reunión 30 min con los 3                                    │
│  • Explicar qué es, por qué, cómo funciona                     │
│  • Cada uno entra y crea 1 tarea de prueba                     │
│                                                                 │
├──────────────────────────────────────────────────────────────────┤
│  DÍA 2-5 (Martes a Viernes)                                     │
│  ──────────────────────────                                      │
│  CADA DÍA, cada persona:                                        │
│  ☐ En la mañana: Revisar MI DÍA (1 min)                        │
│  ☐ Crear/actualizar sus tareas reales del día                  │
│  ☐ Marcar máximo 3 en FOCO                                     │
│  ☐ Al final del día: Hacer CHECK-IN (30 seg)                   │
│  ☐ Si encuentra bug → reportar inmediatamente                  │
│                                                                 │
│  META SEMANA 1: Que los 3 hagan check-in los 5 días            │
│                                                                 │
└──────────────────────────────────────────────────────────────────┘
```

### SEMANA 2: Validar y Ajustar

```
┌──────────────────────────────────────────────────────────────────┐
│  DÍA 6 (Lunes)                                                  │
│  ─────────────                                                   │
│  Reunión 30 min - RETROSPECTIVA SEMANA 1                        │
│  • ¿Qué funcionó?                                              │
│  • ¿Qué fue difícil?                                           │
│  • ¿Qué bugs encontramos?                                      │
│  • ¿El sistema es útil o es carga?                             │
│                                                                 │
├──────────────────────────────────────────────────────────────────┤
│  DÍA 7-10 (Martes a Viernes)                                    │
│  ───────────────────────────                                     │
│  • Seguir usando el sistema                                     │
│  • [Tú] Corregir bugs encontrados                              │
│  • [Campeón] Pensar: ¿cómo explicar a 50 personas?            │
│  • [Tester] Probar casos extremos                              │
│                                                                 │
├──────────────────────────────────────────────────────────────────┤
│  DÍA 10 (Viernes)                                               │
│  ──────────────                                                  │
│  REUNIÓN FINAL - DECISIÓN                                       │
│  • ¿El sistema SIRVE?                                          │
│  • ¿Qué ajustes faltan antes de expandir?                      │
│  • ¿Estamos listos para piloto de 20 personas?                 │
│                                                                 │
└──────────────────────────────────────────────────────────────────┘
```

---

## 📋 CHECKLIST PARA EMPEZAR

### Antes del Día 1:

```
TÚ (GUSTAVO):
☐ El backend está corriendo
☐ El frontend está corriendo  
☐ Puedes hacer login con tu cuenta
☐ Puedes crear una tarea
☐ Tienes los correos de las otras 2 personas
```

### Día 1 - Crear Cuentas:

```
PASOS:
1. Ir a la tabla p_Usuarios
2. Crear usuario para Campeón de Cultura:
   - correo: [su correo]
   - password: temporal123 (que lo cambie después)
   
3. Crear usuario para Tester:
   - correo: [su correo]
   - password: temporal123

4. Ir a la tabla p_empleados
5. Crear registro para cada uno:
   - carnet: generar uno único
   - correo: mismo que p_Usuarios
   - nombreCompleto: su nombre
   - jefe1Carnet: tu carnet (EMP899)
```

---

## 🎯 MÉTRICAS DE ÉXITO DEL PILOTO

```
┌─────────────────────────────────────────────────────────────────┐
│                    ÉXITO = SEMAFORÓ VERDE                       │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  🟢 VERDE - LISTO PARA EXPANDIR                                │
│  ─────────────────────────────                                  │
│  • 3/3 personas hicieron check-in 8+ días de 10               │
│  • Menos de 3 bugs críticos encontrados                       │
│  • Campeón dice: "Sí, esto puede servir"                      │
│  • Nadie sintió que era "carga extra"                         │
│                                                                 │
│  🟡 AMARILLO - AJUSTAR Y REPETIR                               │
│  ─────────────────────────────                                  │
│  • Solo 2/3 personas lo usaron consistentemente               │
│  • Hay bugs molestos pero no críticos                         │
│  • "Podría servir, pero hay que mejorar X"                    │
│  → Repetir piloto 1 semana más después de ajustes             │
│                                                                 │
│  🔴 ROJO - NO ESTÁ LISTO                                       │
│  ─────────────────────────                                      │
│  • Solo 1/3 lo usó                                            │
│  • Bugs críticos que impiden uso                              │
│  • "No le veo el valor" o "Es más trabajo"                    │
│  → Parar, analizar, rediseñar si es necesario                 │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

---

## 📝 TEMPLATE PARA REPORTAR BUGS

Cuando el Tester o cualquiera encuentre un problema:

```
BUG #___

Fecha: ___________
Reportado por: ___________

¿Qué hiciste?
_______________________________________________

¿Qué esperabas que pasara?
_______________________________________________

¿Qué pasó realmente?
_______________________________________________

¿En qué navegador/dispositivo?
_______________________________________________

¿Es bloqueante? (No puedo continuar)  SÍ / NO

Screenshot (si aplica):
```

---

## 💬 PREGUNTAS CLAVE PARA SEMANA 2

Para el **Campeón de Cultura**, preguntarle:

```
1. ¿Cuánto tiempo te tomó el sistema cada día?
   [ ] Menos de 5 minutos - Perfecto
   [ ] 5-15 minutos - Aceptable
   [ ] Más de 15 minutos - Problema

2. ¿Sentiste que ERA ÚTIL o ERA CARGA?
   [ ] Me ayudó a organizar mi día
   [ ] Neutral, ni ayudó ni estorbó
   [ ] Se sintió como trabajo extra

3. SI tuvieras que convencer a tu equipo de usarlo,
   ¿qué dirías?
   _______________________________________________

4. ¿Qué le FALTA al sistema para que sea realmente útil?
   _______________________________________________

5. ¿Qué le SOBRA o es confuso?
   _______________________________________________
```

---

## 🚀 SI EL PILOTO ES VERDE → SIGUIENTE FASE

```
EXPANSIÓN A 20-30 PERSONAS:

1. El Campeón de Cultura te ayuda a "vender" el sistema
2. Seleccionar 1 área/equipo completo
3. Hacer demo grupal de 30 minutos
4. 4 semanas de uso obligatorio
5. Medir adopción semanalmente
```

---

## ⏱️ INVERSIÓN DE TIEMPO

| Persona | Tiempo diario | Tiempo total (2 sem) |
|---------|--------------|---------------------|
| Tú | 30 min-1 hora | 10-20 horas |
| Campeón | 5-10 min | 2-3 horas |
| Tester | 15-30 min | 5-10 horas |
| **Reuniones** | 3 reuniones x 30 min | 1.5 horas |

**TOTAL: ~15-35 horas entre los 3 en 2 semanas**

---

*Documento creado: 14 de Enero 2026*

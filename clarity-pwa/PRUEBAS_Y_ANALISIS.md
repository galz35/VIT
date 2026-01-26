# 🧪 Checklist de Pruebas Manuales (Actualizado: Fase 4 Completada)

## ✅ Estado Actual
- **Motor de Datos**: TanStack Query v5 (Totalmente migrado).
- **Código Viejo**: `useMiDia.ts` eliminado.
- **Optimizaciones Activas**: StaleTime: 0 (frescura inmediata), Optimistic Updates (toggle tarea).

## 🕵️ Qué Probar Manualmente

### 1. La "Prueba de Velocidad" (Core)
- [ ] Entra a **Mi Día**.
- [ ] Marca una tarea como "Hecha". No debe haber **ningún retraso**. El icono debe volverse verde al instante.
- [ ] Recarga la página (F5). La tarea debe seguir marcada (esto confirma que la petición al servidor funcionó en segundo plano).

### 2. Navegación y Caché
- [ ] Ve a la pestaña **Calendario** o **Bitácora**.
- [ ] Vuelve a **Ejecución**. El contenido debe aparecer **instantáneamente** sin el mensaje "Cargando...".
- [ ] Abre otra herramienta (ej. Excel) y vuelve al navegador. Fíjate si los datos se actualizan solos (refetch on focus).

### 3. Edición de Check-in
- [ ] Haz clic en el lápiz "Editar Plan".
- [ ] Cambia el objetivo del día y guarda.
- [ ] El cambio debe reflejarse inmediamente sin recargar la página completa.

### 4. Estabilidad (Edge Cases)
- [ ] Desconecta tu internet momentáneamente (Modo Avión).
- [ ] Intenta marcar una tarea.
    - **Resultado esperado**: Se marca visualmente (optimistic), pero luego vuelve a su estado original o muestra error si implementamos toast de error global (TanStack Query maneja reintentos automáticos antes de fallar).

---

# 🤖 Prompt para Análisis Profundo (ChatGPT 5.0 / Claude 3.5 Opus)

Copia y pega esto en tu modelo avanzado favorito para que audite la arquitectura actual detalladamente:

```markdown
Actúa como Arquitecto Senior de React. Analiza el siguiente código crítico de una PWA de productividad ("Clarity") que acaba de migrar a TanStack Query.

**Contexto**:
- Objetivo: UX Instantánea (Optimistic UI) y eliminación de fetch manual.
- Stack: React 19, TypeScript, TanStack Query v5.
- Archivos clave:
  1. `useMiDiaQuery.ts`: Hook central con lógica de caché y mutaciones.
  2. `MiDiaContext.tsx`: Contexto que distribuye la data.
  3. `ExecutionView.tsx`: Consumidor principal.

**Código a analizar (Te proporcionaré los snippets clave):**

[PEGAR CONTENIDO DE useMiDiaQuery.ts]
[PEGAR CONTENIDO DE MiDiaContext.tsx]

**Necesito que busques específicamente:**
1. **Race Conditions**: ¿Hay riesgo de que una mutación optimista (toggleTarea) sobrescriba datos si el usuario hace click muy rápido repetidas veces?
2. **Consistency Gaps**: En `toggleTarea`, estamos filtrando manualmente `tareasSugeridas` y `backlog`. ¿Qué pasa si la tarea está en otra lista no contemplada? ¿Cómo lo harías más robusto?
3. **Memory Leaks**: ¿La configuración de `gcTime: 30min` y `staleTime: 0` es adecuada para una app que se queda abierta todo el día?
4. **Error Handling**: Si la mutación falla, ¿el rollback (context.previousData) es suficiente o dejaremos al usuario con un estado visual falso?

Dame un reporte de riesgos "Nivel Paranoico" y sugerencias de código para blindarlo.
```

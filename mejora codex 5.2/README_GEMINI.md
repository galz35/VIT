# Guía de lectura (para Gemini 3)

Este paquete está diseñado para que revises problemas de implementación y UX **página por página** y **endpoint por endpoint**.

## Estructura
- `REPORTE_GENERAL.md`: resumen ejecutivo y priorización.
- `paginas/`: análisis detallado por página (UI → endpoints → impacto).
- `endpoints/`: análisis detallado por endpoint (backend expuesto vs frontend esperado).

## Cómo usarlo
1. Lee `REPORTE_GENERAL.md` para la visión global.
2. Para cada página con incidencias, abre su archivo en `paginas/`.
3. Para cada área de backend, abre el archivo correspondiente en `endpoints/` y valida rutas.

## Notas
- Los endpoints “faltantes” suelen existir únicamente en `clarity.controller.ts.bak`. El controlador activo es `clarity.controller.ts`.
- En varios casos el frontend llama rutas legacy que fueron deshabilitadas.

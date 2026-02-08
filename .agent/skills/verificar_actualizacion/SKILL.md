# Verificar Actualización

Esta skill asegura que cada archivo modificado contenga un encabezado con la fecha y hora de la última modificación en la primera línea. Esto facilita el rastreo de cambios y optimiza el contexto de la IA al permitir una validación rápida de frescura.

## Instrucciones

1. **Encabezado OBLIGATORIO**: Todo archivo modificado debe iniciar con un comentario en la línea 1 siguiendo este formato:
   `// Last Modified: YYYY-MM-DD HH:mm:ss` (para .ts, .tsx, .js, .jsx, .css)
   `# Last Modified: YYYY-MM-DD HH:mm:ss` (para .py, .yml, .json - nota: json no permite comentarios, usar una propiedad `"_lastModified"` si es crítico o ignorar para archivos de datos puros)
   `<!-- Last Modified: YYYY-MM-DD HH:mm:ss -->` (para .html, .md)

2. **Actualización Proactiva**: Antes de realizar cualquier edición importante, verifica la fecha en la línea 1. Si realizas cambios, actualiza SIEMPRE este timestamp con la hora local actual proporcionada por el sistema.

3. **Optimización de Tokens**: Al leer archivos, si solo necesitas verificar si un cambio fue aplicado, lee solo la primera línea (`view_file` con `EndLine: 1`).

## Ejemplo de Uso

Si el sistema reporta que la hora actual es `2026-01-24T20:40:00-06:00`, la primera línea del archivo debe ser:
`// Last Modified: 2026-01-24 20:40:00`

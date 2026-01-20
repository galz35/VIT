# Guía de Pruebas: ¿Por qué usamos `npm run test`?

En el desarrollo profesional de software, no basta con que el código "funcione" una vez. Debe funcionar siempre, especialmente después de hacer cambios o refactorizaciones. Aquí es donde entran las pruebas (Tests).

## 1. ¿Qué es `npm run test`?
Es un comando que ejecuta un **Marco de Pruebas** (como Jest o Vitest). Su función es leer archivos especiales (terminados en `.spec.ts` o `.test.ts`) que contienen pequeñas piezas de código diseñadas para verificar que otras piezas de código funcionen correctamente.

## 2. Los 3 Niveles de Pruebas en este Proyecto

### A. Pruebas Unitarias (Unit Tests)
*   **Fin:** Probar una función o un servicio de forma aislada.
*   **Ejemplo:** Si tengo una función que calcula la fecha de vencimiento, la prueba le envía una fecha y verifica si el resultado es el esperado.
*   **Por qué las usamos:** Son muy rápidas. Si algo falla, sabes exactamente en qué línea y en qué función está el error.

### B. Pruebas de Integración (Integration Tests)
*   **Fin:** Probar cómo interactúan dos o más partes del sistema (ej: un controlador hablando con una base de datos).
*   **Por qué las usamos:** Aseguran que las piezas del "rompecabezas" encajen bien entre sí.

### C. Pruebas de Extremo a Extremo (E2E Tests)
*   **Comando:** `npm run test:e2e`
*   **Fin:** Simular el comportamiento de un usuario real.
*   **Ejemplo:** "Entrar a la página, poner usuario/clave, dar clic en guardar y verificar que la tarea aparezca en la lista".
*   **Por qué las usamos:** Es la prueba definitiva de que el sistema completo está vivo y funcionando.

## 3. ¿Por qué es fundamental usarlas tanto?

1.  **Confianza al Refactorizar:** Como estamos haciendo cambios grandes (dividir `ClarityService` en dos), las pruebas nos dicen de inmediato si rompimos algo que antes funcionaba.
2.  **Prevención de Regresiones:** Evitan que un error que ya corregimos en el pasado vuelva a aparecer por accidente.
3.  **Documentación Viva:** El código de una prueba te enseña exactamente cómo se supone que debe usarse una función o un API.
4.  **Ahorro de Tiempo:** Es mucho más rápido correr un comando que tarda 10 segundos en revisar 50 funciones, que entrar manualmente a la web y dar clics para probar cada cosa.

## 4. El Ciclo de Trabajo Ideal
Cada vez que hacemos un cambio importante (como los que estamos haciendo hoy), los pasos son:
1.  Hacer el cambio de código.
2.  Ejecutar `npm run test`.
3.  Si sale **VERDE (PASS)**: Estamos listos.
4.  Si sale **ROJO (FAIL)**: Corregimos antes de que el usuario vea el error.

---
*Este documento es parte de la capacitación técnica para el proyecto Clarity Planning.*

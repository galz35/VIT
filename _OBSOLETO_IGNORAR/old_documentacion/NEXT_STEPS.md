# Guía de Pruebas: Sistema de Planificación Avanzada

El sistema ya está implementado y configurado con **Usuarios Reales**.

## 1. Credenciales de Prueba (Configuradas Ahora)
Se han establecido contraseñas para los actores reales del flujo:

| Rol | Usuario | Correo | Contraseña |
| :--- | :--- | :--- | :--- |
| **Empleado** | ERVIN DANILO MARTINEZ | `ervind.martinez@claro.com.ni` | `password123` |
| **Gerente** | CANDIDA SANCHEZ | `candida.sanchez@claro.com.ni` | `password123` |

## 2. Flujo de Prueba (Gobernanza ISO 27001)

### Paso A: Intento de Cambio (Como Empleado)
1. Inicia sesión con **Ervin** (`ervind.martinez@claro.com.ni` / `password123`).
2. Ve al Dashboard o busca el proyecto **"Implementación ISO 27001"**.
3. Abre una tarea (ej: "Firmar Contrato Partner Local" o crea una nueva en ese proyecto).
4. Verás el badge **"🔒 ESTRATÉGICO"**.
5. Intenta cambiar la **Fecha Objetivo**. El sistema te pedirá justificación.
6. Ingresa motivo: "Retraso proveedor" y envía.
7. Cierra sesión.

### Paso B: Aprobación (Como Gerente)
1. Inicia sesión con **Candida** (`candida.sanchez@claro.com.ni` / `password123`).
2. En el menú lateral, ve a **Planificación > Aprobaciones**.
3. Verás la solicitud de Ervin.
4. Haz clic en **Aprobar**.
5. Ve a la tarea original y verifica que la fecha haya cambiado.

## 3. Resultado Esperado
- El cambio NO debe aplicarse hasta que Candida apruebe.
- Todo debe quedar registrado en Auditoría.

¡El sistema está listo para tu validación final! 🚀

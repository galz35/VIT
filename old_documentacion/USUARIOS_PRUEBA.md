# 🔐 Usuarios de Prueba - Momentus

Este documento contiene las credenciales para acceder al entorno de demostración de **Momentus**.

> **Nota:** Todos los usuarios pertenecen al entorno simulado "RRHH Demo".

---

## 👑 Usuario Principal (Administrador)

Este es el usuario con mayores privilegios. Úsalo para ver todas las funcionalidades, incluyendo reportes gerenciales y visión global de proyectos.

| Rol | Nombre | Correo | Contraseña |
| :--- | :--- | :--- | :--- |
| **Gerente General** | Lic. Rodríguez | **gerente@rrhh.demo** | `123456` |

---

## 👥 Otros Usuarios del Equipo

Para probar la experiencia desde la perspectiva de un líder de área o un empleado operativo.

> **Importante:** Por defecto en la demo, la contraseña `123456` está configurada **SOLO para el Gerente**. 
> Si deseas acceder con estos usuarios, debes ejecutar el script de configuración de contraseñas.

### ¿Cómo activar estos usuarios?
Ejecuta el siguiente comando en la terminal (dentro de la carpeta `backend`):

```powershell
npx ts-node src/scripts/set-password.ts <correo_usuario> 123456
```

_Ejemplo: `npx ts-node src/scripts/set-password.ts mariana@rrhh.demo 123456`_

### Lista de Usuarios Disponibles

| Área | Rol | Nombre | Correo |
| :--- | :--- | :--- | :--- |
| **Compensación** | Subgerente | Mariana | `mariana@rrhh.demo` |
| **Operaciones** | Subgerente | Roberto | `roberto@rrhh.demo` |
| **Rel. Laborales** | Subgerente | Dra. Elena | `elena@rrhh.demo` |
| **Capacitación** | Subgerente | Sofia | `sofia@rrhh.demo` |
| **Reclutamiento** | Líder | Pablo | `pablo@rrhh.demo` |
| **Transporte** | Líder | Juan | `juan@rrhh.demo` |
| **Nómina** | Analista | Lucía | `lucia@rrhh.demo` |
| **Médico** | Doctor | Dr. House | `medico@rrhh.demo` |
| **Seguridad** | Analista | Carlos | `carlos@rrhh.demo` |
| **Bienestar** | Coord. | Ana | `ana@rrhh.demo` |

---

## 🧪 Escenarios de Prueba Recomendados

1.  **"La Visión del Águila":**
    *   Ingresa como **Gerente** (`gerente@rrhh.demo`).
    *   Ve al **Cronograma** y observa los 16 proyectos activos.
    *   Revisa la **Carga de Equipo** para ver quién está saturado.

2.  **"El Foco del Operativo" (Requiere activar password):**
    *   Activa el usuario de **Pablo** (`pablo@rrhh.demo`).
    *   Ingresa y nota cómo el **Cronograma** solo muestra proyectos de Reclutamiento.
    *   Ve a **Mi Día** y completa una tarea de entrevista.

3.  **"Gestión de Crisis":**
    *   Como **Pablo**, marca una tarea como "Bloqueada".
    *   Entra como **Gerente** y ve al Dashboard "Equipo Hoy" para ver la alerta roja.

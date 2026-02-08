# 🛠️ REVIEW TÉCNICO Y PLAN DE REFFACTORIZACIÓN (13 ENE 2026)

Después de auditar `entities.ts` (Backend) y `MiDiaPage.tsx` (Frontend), se ha detectado deuda técnica que debe resolverse antes de la expansión.

---

## 1. 🚨 HALLAZGOS CRÍTICOS (Auditoría)

### 🔴 Backend: Monolito de Entidades
*   **Problema:** El archivo `src/entities.ts` contiene TODAS las definiciones de la base de datos (Usuario, Tarea, Proyecto, Checkin...).
*   **Riesgo:** Imposible de mantener si añadimos más módulos. Conflictos de merge constantes.
*   **Acción:** Separar en `users/entities/user.entity.ts`, `tasks/entities/task.entity.ts`, etc.

### 🔴 Base de Datos: Falta Campo 'País'
*   **Problema:** La entidad `Usuario` (Líneas 23-55) NO tiene columna `pais`.
*   **Riesgo:** No podemos segregar datos de Nicaragua/Honduras actualmente.
*   **Acción:** Añadir `@Column({ length: 2, default: 'NI' }) pais: string;` a la entidad Usuario.

### 🟡 Frontend: Navegación por Estado (State-based Routing)
*   **Problema:** En `MiDiaPage.tsx`, los tabs (Matriz, Calendario...) se manejan con `useState('checkin')`.
*   **Efecto:** Si el usuario está en "Métricas" y presiona "Atrás" en el navegador, se sale de la app en lugar de volver al tab anterior. Además, no puede compartir un link directo a metricas (ej. `.../app/hoy/metricas`).
*   **Acción:** Migrar a **React Router Outlet** (Rutas anidadas).

---

## 2. 📅 PLAN DE EJECUCIÓN INMEDIATO

### FASE 1: Refactorización Base de Datos (Prioridad 1)
1.  **Modificar Entidad Usuario:**
    *   Agregar campo `pais` (char 2).
    *   Crear script SQL para poblarlo basado en el dominio del email (`.ni`, `.hn`).
2.  **Dividir Entities:**
    *   Mover clases a sus carpetas de módulo correspondientes.

### FASE 2: Frontend Routing (Prioridad 2)
1.  **Actualizar Router:**
    *   Definir rutas hijas en `App.tsx`:
        ```tsx
        <Route path="hoy" element={<MiDiaPage />}>
            <Route index element={<CheckinView />} />
            <Route path="matrix" element={<MatrixView />} />
            <Route path="calendar" element={<CalendarView />} />
            ...
        </Route>
        ```
2.  **Refactorizar MiDiaPage:**
    *   Eliminar el switch gigante. Usar `<Outlet />`.

### FASE 3: Seguridad Multi-Tenant
1.  **Implementar Interceptor:**
    *   Crear `CountryScopeMiddleware` en NestJS que inyecte `where: { pais: user.pais }` automáticamente.

---

## 3. 🛡️ VEREDICTO FINAL DE AUDITORÍA
El sistema es funcional y robusto (9/10 en UX), pero su arquitectura interna de archivos está centralizada (Entities monolíticas). Para escalar a 5 países, es **OBLIGATORIO** descentralizar las entidades y el routing.

**Estado para expansión:** 🚧 Requiere Refactorización Previa.

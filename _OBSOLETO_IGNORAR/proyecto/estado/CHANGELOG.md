# 📅 CHANGELOG

**Historial de cambios del proyecto**

---

## [2026-01-14] Tests y Validaciones

### Agregado
- ✅ Script de tests completo `test-backend-profesional.ts` (42 tests)
- ✅ Script de tests de importación `test-importacion-intensivo.ts` (25 tests)
- ✅ Carpeta `.proyecto` con documentación centralizada

### Corregido
- 🔧 `ImportarOrganizacionDto` - Agregados decoradores de validación
- 🔧 `AccesoController.buscarEmpleado` - Ahora retorna 404 si no existe
- 🔧 Nombres de tokens en tests (`access_token` vs `accessToken`)

### Tests
- ✅ 42/42 tests pasando (100%)

---

## [2026-01-13] Módulo de Visibilidad

### Agregado
- ✅ `VisibilidadController` con 6 endpoints
- ✅ `VisibilidadService` con lógica de permisos
- ✅ Modelos: `permiso_area`, `permiso_empleado`, `delegacion`
- ✅ Endpoint para buscar empleado por correo

### Modificado
- 🔄 `MiEquipoPage` ahora usa carnet para visibilidad
- 🔄 `AuthContext` incluye correo del usuario

---

## [2026-01-12] Multi-País (Inicio)

### Agregado
- ✅ Campo `pais` en entidades
- ✅ `CountrySelector` componente UI
- ⏳ Selector en sidebar (pendiente)

---

## [Anteriores]

Ver documentación histórica en la raíz del proyecto.

---

*Formato: [Fecha] Descripción - Categorías: Agregado, Corregido, Modificado, Eliminado*

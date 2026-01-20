# 📜 HISTORIAL DE MIGRACIONES

---

## Migraciones Realizadas

### 14 de Enero 2026

| Hora | Acción | Registros | Estado |
|------|--------|-----------|--------|
| 10:00 | Test de importación | 10 empleados | ✅ OK |
| 09:30 | Inserción manual gustavo.lira | 1 empleado | ✅ OK |

### 13 de Enero 2026

| Hora | Acción | Registros | Estado |
|------|--------|-----------|--------|
| - | Creación del módulo de acceso | - | ✅ OK |
| - | Tablas de visibilidad | 5 tablas | ✅ OK |

---

## Migraciones Pendientes

### Prioridad Alta
- [ ] **Migración masiva de 2000 empleados**
  - Fuente: Excel de RRHH
  - Modo: MERGE
  - Verificar: Relaciones de jefatura

### Prioridad Media
- [ ] Importar estructura organizacional completa
- [ ] Configurar permisos por área

---

## Scripts de Migración

| Script | Ubicación | Propósito |
|--------|-----------|-----------|
| `verificar-empleado-correo.ts` | `backend/src/scripts/` | Verificar empleados |
| `listar-agregar-empleado.ts` | `backend/src/scripts/` | Añadir empleado manual |
| `test-importacion-intensivo.ts` | `backend/src/scripts/` | Test de importación |

---

## Cómo Ejecutar Scripts

```bash
cd d:\planificacion\backend
npx ts-node -r tsconfig-paths/register src/scripts/[nombre].ts
```

---

*Última actualización: 14 de Enero 2026*

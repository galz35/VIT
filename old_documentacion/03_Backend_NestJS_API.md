# Proyecto Clarity - Backend API (NestJS)

## 1. Stack Tecnológico
- **Framework:** NestJS / Node.js.
- **Base de Datos:** SQL Server.
- **Comunicación DB:** `mssql` (Driver nativo) + Stored Procedures.
- **Validación:** `class-validator`, `class-transformer` (DTOs).
- **Documentación:** Swagger (`@nestjs/swagger`).
- **Autenticación:** Passport JWT + Bcrypt.

## 2. Estructura del Proyecto

```
src/
  main.ts                # Bootstrap + ValidationPipe + Swagger
  app.module.ts          # Imports principales (Config, Sql, Auth, Clarity)
  database/
    sql.module.ts        # Helper conexión mssql POOL
    sql.service.ts       # Ejecutor de Stored Procedures
  auth/                  # Módulo de Autenticación
    auth.module.ts
    auth.controller.ts   # Login
    auth.service.ts      # Validación credenciales + JWT Sign
    jwt.strategy.ts      # Estrategia extracción token
    guards/              # Guards (JWT, Roles)
  clarity/               # Módulo de Negocio Core
    clarity.module.ts
    clarity.controller.ts
    clarity.service.ts   # Lógica llamada a SPs
    policy/              # Reglas de negocio finas (ej: ver subárbol)
      clarity-policy.service.ts
    guards/
      subarbol.guard.ts  # Protección de acceso a datos de otros usuarios
    dto/                 # Data Transfer Objects
      fecha-query.dto.ts
      checkin-upsert.dto.ts
      tarea-crear-rapida.dto.ts
      bloqueo-crear.dto.ts
      ...
```

## 3. Seguridad y Autenticación
- **JWT:** Token con Payload `{ sub: IdUsuario, roles: ['Empleado', 'Lider'] }`.
- **RBAC:** Decoradores `@Roles('Lider', 'Gerente')` para proteger endpoints.
- **Acceso Jerárquico:** `SubarbolGuard` valida que un usuario solo pueda ver datos de personas en su rama descendente (usando SP `sp_Clarity_UsuariosVisibles`).

## 4. Endpoints y DTOs Principales

### Auth
- `POST /auth/login`: Recibe `{correo, password}` → Retorna `{ accessToken }`.

### Empleado (Contexto Usuario del Token)
- `GET /api/mi-dia`:
  - Query: `fecha`
  - Retorna: Snapshot del día, arrastrados, bloqueos activos.
- `POST /api/checkins`:
  - Body: `{ idUsuario, fecha, entregableTexto, nota, entrego: [ids], avanzo: [ids] }`
  - Upsert del check-in diario.
- `POST /api/tareas/rapida`:
  - Body: `{ titulo, idProyecto, prioridad, esfuerzo, idResponsable }`
- `GET /api/tareas/mias`:
  - Filtros: `estado`, `idProyecto`.
- `POST /api/bloqueos`:
  - Body: `{ idTarea, idDestinoUsuario, motivo }`

### Operaciones Tareas/Bloqueos
- `PATCH /api/tareas/:id`: Actualizar estado/prioridad.
- `POST /api/tareas/:id/revalidar`: Acción sobre arrastrados (`Sigue`, `HechaPorOtro`, `NoAplica`).
- `PATCH /api/bloqueos/:id/resolver`: Cerrar bloqueo.

### Tableros Jefatura (Requiere Rol Lider/Gerente/Admin)
- `GET /api/equipo/hoy`:
  - Retorna lista de su equipo (y subequipos) con semáforo de reporte e indicadores de bloqueo.
- `GET /api/equipo/bloqueos`:
  - Lista de bloqueos activos en su estructura, con aging (antigüedad).
- `GET /api/equipo/backlog`:
  - WIP del equipo.

### Gerencia
- `GET /api/gerencia/resumen`:
  - Rollup por Nodos (Participación, Bloqueos, WIP) y Resumen Proyectos.

## 5. Integración con SQL Server
El servicio utiliza `SqlService` para ejecutar Stored Procedures directamente, evitando lógica compleja de ORM para consultas de reportes.

**Ejemplo de llamada:**
```typescript
async miDiaGet(idUsuario: number, fecha: string) {
  const res = await this.db.ejecutarSP('dbo.sp_Clarity_MiDia_Get', [
    { nombre: 'IdUsuario', tipo: sql.Int, valor: idUsuario },
    { nombre: 'Fecha', tipo: sql.Date, valor: fecha },
  ]);
  return { ... }; // Mapeo de recordsets
}
```

# Proyecto Clarity - Base de Datos SQL Server

## 1. Modelo de Datos (DDL)

### Seguridad y Roles
```sql
CREATE TABLE dbo.p_Roles (
  IdRol INT IDENTITY PRIMARY KEY,
  Nombre NVARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE dbo.p_Usuarios (
  IdUsuario INT IDENTITY PRIMARY KEY,
  Nombre NVARCHAR(160) NOT NULL,
  Correo NVARCHAR(180) NOT NULL UNIQUE,
  Telefono NVARCHAR(40) NULL,
  Activo BIT NOT NULL DEFAULT 1,
  FechaCreacion DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME()
);

CREATE TABLE dbo.p_UsuariosCredenciales (
  IdUsuario INT NOT NULL PRIMARY KEY FOREIGN KEY REFERENCES dbo.p_Usuarios(IdUsuario),
  PasswordHash NVARCHAR(200) NOT NULL,
  UltimoLogin DATETIME2 NULL
);

CREATE TABLE dbo.p_UsuariosRoles (
  IdUsuario INT NOT NULL FOREIGN KEY REFERENCES dbo.p_Usuarios(IdUsuario),
  IdRol INT NOT NULL FOREIGN KEY REFERENCES dbo.p_Roles(IdRol),
  CONSTRAINT PK_UsuariosRoles PRIMARY KEY (IdUsuario, IdRol)
);
```

### Organización (Jerarquía)
```sql
CREATE TABLE dbo.p_OrganizacionNodos (
  IdNodo INT IDENTITY PRIMARY KEY,
  IdPadre INT NULL FOREIGN KEY REFERENCES dbo.p_OrganizacionNodos(IdNodo),
  Tipo NVARCHAR(30) NOT NULL, -- Gerencia/Subgerencia/Equipo
  Nombre NVARCHAR(160) NOT NULL,
  Activo BIT NOT NULL DEFAULT 1
);

CREATE TABLE dbo.p_UsuariosOrganizacion (
  IdUsuario INT NOT NULL FOREIGN KEY REFERENCES dbo.p_Usuarios(IdUsuario),
  IdNodo INT NOT NULL FOREIGN KEY REFERENCES dbo.p_OrganizacionNodos(IdNodo),
  RolEnNodo NVARCHAR(20) NOT NULL, -- Miembro/Lider/Gerente
  FechaInicio DATE NOT NULL,
  FechaFin DATE NULL,
  CONSTRAINT PK_UsuariosOrganizacion PRIMARY KEY (IdUsuario, IdNodo, FechaInicio)
);
```

### Proyectos y Tareas
```sql
CREATE TABLE dbo.p_Proyectos (
  IdProyecto INT IDENTITY PRIMARY KEY,
  Nombre NVARCHAR(160) NOT NULL,
  Descripcion NVARCHAR(800) NULL,
  IdNodoDuenio INT NULL FOREIGN KEY REFERENCES dbo.p_OrganizacionNodos(IdNodo),
  Estado NVARCHAR(20) NOT NULL DEFAULT 'Activo',
  FechaCreacion DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME()
);

CREATE TABLE dbo.p_ProyectoMiembros (
  IdProyecto INT NOT NULL FOREIGN KEY REFERENCES dbo.p_Proyectos(IdProyecto),
  IdUsuario INT NOT NULL FOREIGN KEY REFERENCES dbo.p_Usuarios(IdUsuario),
  Rol NVARCHAR(20) NOT NULL,
  CONSTRAINT PK_ProyectoMiembros PRIMARY KEY (IdProyecto, IdUsuario)
);

CREATE TABLE dbo.p_Tareas (
  IdTarea BIGINT IDENTITY PRIMARY KEY,
  IdProyecto INT NOT NULL FOREIGN KEY REFERENCES dbo.p_Proyectos(IdProyecto),
  Titulo NVARCHAR(220) NOT NULL,
  Descripcion NVARCHAR(1200) NULL,
  Estado NVARCHAR(20) NOT NULL DEFAULT 'Pendiente', -- Pendiente/EnCurso/Bloqueada/Revision/Hecha/Descartada
  Prioridad NVARCHAR(10) NOT NULL DEFAULT 'Media',
  Esfuerzo NVARCHAR(5) NOT NULL DEFAULT 'M',
  EsCompartida BIT NOT NULL DEFAULT 0,
  FechaObjetivo DATE NULL,
  FechaEnCurso DATETIME2 NULL,
  FechaHecha DATETIME2 NULL,
  IdCreador INT NOT NULL FOREIGN KEY REFERENCES dbo.p_Usuarios(IdUsuario),
  FechaCreacion DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
  FechaUltActualizacion DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME()
);

CREATE TABLE dbo.p_TareaAsignados (
  IdTarea BIGINT NOT NULL FOREIGN KEY REFERENCES dbo.p_Tareas(IdTarea),
  IdUsuario INT NOT NULL FOREIGN KEY REFERENCES dbo.p_Usuarios(IdUsuario),
  Tipo NVARCHAR(15) NOT NULL, -- Responsable/Colaborador
  CONSTRAINT PK_TareaAsignados PRIMARY KEY (IdTarea, IdUsuario)
);

CREATE TABLE dbo.p_TareaDependencias (
  IdTarea BIGINT NOT NULL FOREIGN KEY REFERENCES dbo.p_Tareas(IdTarea),
  IdTareaDependeDe BIGINT NOT NULL FOREIGN KEY REFERENCES dbo.p_Tareas(IdTarea),
  CONSTRAINT PK_TareaDependencias PRIMARY KEY (IdTarea, IdTareaDependeDe),
  CONSTRAINT CK_NoSelfDep CHECK (IdTarea <> IdTareaDependeDe)
);
```

### Check-ins y Bloqueos
```sql
CREATE TABLE dbo.p_Checkins (
  IdCheckin BIGINT IDENTITY PRIMARY KEY,
  Fecha DATE NOT NULL,
  IdUsuario INT NOT NULL FOREIGN KEY REFERENCES dbo.p_Usuarios(IdUsuario),
  IdNodo INT NULL FOREIGN KEY REFERENCES dbo.p_OrganizacionNodos(IdNodo),
  EntregableTexto NVARCHAR(240) NOT NULL,
  Nota NVARCHAR(600) NULL,
  FechaCreacion DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
  CONSTRAINT UQ_Checkin_Dia UNIQUE (Fecha, IdUsuario)
);

CREATE TABLE dbo.p_CheckinTareas (
  IdCheckin BIGINT NOT NULL FOREIGN KEY REFERENCES dbo.p_Checkins(IdCheckin),
  IdTarea BIGINT NOT NULL FOREIGN KEY REFERENCES dbo.p_Tareas(IdTarea),
  Tipo NVARCHAR(10) NOT NULL, -- Entrego/Avanzo
  CONSTRAINT PK_CheckinTareas PRIMARY KEY (IdCheckin, IdTarea, Tipo)
);

CREATE TABLE dbo.p_Bloqueos (
  IdBloqueo BIGINT IDENTITY PRIMARY KEY,
  IdTarea BIGINT NULL FOREIGN KEY REFERENCES dbo.p_Tareas(IdTarea),
  IdOrigenUsuario INT NOT NULL FOREIGN KEY REFERENCES dbo.p_Usuarios(IdUsuario),
  IdDestinoUsuario INT NULL FOREIGN KEY REFERENCES dbo.p_Usuarios(IdUsuario),
  DestinoTexto NVARCHAR(120) NULL,
  Motivo NVARCHAR(400) NOT NULL,
  Estado NVARCHAR(15) NOT NULL DEFAULT 'Activo', -- Activo/Resuelto/Descartado
  FechaCreacion DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
  FechaResolucion DATETIME2 NULL
);
```

### Comentarios y Logs
```sql
CREATE TABLE dbo.p_Comentarios (
  IdComentario BIGINT IDENTITY PRIMARY KEY,
  TipoEntidad NVARCHAR(15) NOT NULL, -- TAREA/BLOQUEO/CHECKIN
  IdEntidad BIGINT NOT NULL,
  IdUsuario INT NOT NULL FOREIGN KEY REFERENCES dbo.p_Usuarios(IdUsuario),
  Texto NVARCHAR(900) NOT NULL,
  Fecha DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME()
);

CREATE TABLE dbo.p_Notificaciones (
  IdNotificacion BIGINT IDENTITY PRIMARY KEY,
  IdUsuario INT NOT NULL FOREIGN KEY REFERENCES dbo.p_Usuarios(IdUsuario),
  Tipo NVARCHAR(40) NOT NULL,
  Payload NVARCHAR(MAX) NOT NULL,
  Leida BIT NOT NULL DEFAULT 0,
  Fecha DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME()
);
```

## 2. Índices Recomendados

```sql
CREATE INDEX IX_Checkins_Fecha_IdUsuario ON dbo.p_Checkins(Fecha, IdUsuario) INCLUDE (EntregableTexto, FechaCreacion, IdNodo);
CREATE INDEX IX_CheckinTareas_IdCheckin ON dbo.p_CheckinTareas(IdCheckin) INCLUDE (IdTarea, Tipo);
CREATE INDEX IX_Bloqueos_Estado_Fecha ON dbo.p_Bloqueos(Estado, FechaCreacion) INCLUDE (IdOrigenUsuario, IdDestinoUsuario, IdTarea);
CREATE INDEX IX_Tareas_Estado_Prioridad ON dbo.p_Tareas(Estado, Prioridad, FechaUltActualizacion) INCLUDE (IdProyecto, Esfuerzo, FechaObjetivo);
CREATE INDEX IX_TareaAsignados_IdUsuario ON dbo.p_TareaAsignados(IdUsuario) INCLUDE (IdTarea, Tipo);
CREATE INDEX IX_UsuariosOrganizacion_Usuario_Fecha ON dbo.p_UsuariosOrganizacion(IdUsuario, FechaInicio, FechaFin) INCLUDE (IdNodo, RolEnNodo);
CREATE INDEX IX_OrganizacionNodos_IdPadre ON dbo.p_OrganizacionNodos(IdPadre) INCLUDE (Tipo, Nombre, Activo);
```

## 3. Stored Procedures Principales

### Auth
`sp_Clarity_Auth_LoginGet` y `sp_Clarity_Auth_MarcarLogin` para gestión de credenciales.

### Visibilidad Jerárquica (CTE Recursivo)
`sp_Clarity_UsuariosVisibles`: Retorna IDs de usuarios en el subárbol donde el solicitante es Líder/Gerente.

### Operativos Empleado
- `sp_Clarity_MiDia_Get`: Obtiene checkin de hoy, arrastrados de ayer, bloqueos activos y backlog disponible.
- `sp_Clarity_Checkin_Upsert`: Crea o actualiza el registro diario y asocia tareas (JSON).
- `sp_Clarity_Tarea_CrearRapida`: Inserta tarea mínima.
- `sp_Clarity_Tarea_Revalidar`: Gestiona arrastrados (Sigue, HechaPorOtro, NoAplica).
- `sp_Clarity_Bloqueo_Crear` / `sp_Clarity_Bloqueo_Resolver`.

### Dashboards Jefatura/Gerencia
- `sp_Clarity_EquipoHoy`: Semáforos de reporte y bloqueos.
- `sp_Clarity_Equipo_Bloqueos`: Lista de bloqueos con aging.
- `sp_Clarity_Equipo_Backlog`: Todo el trabajo del equipo.
- `sp_Clarity_Gerencia_Resumen`: Rollup por nodos y proyectos.

*(Ver implementación completa de SPs en la documentación de referencia)*

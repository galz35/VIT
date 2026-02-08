-- =============================================
-- Proyecto Clarity - Schema PostgreSQL (Supabase)
-- Migración automática desde T-SQL
-- =============================================

-- 1. Seguridad y Roles
CREATE TABLE public.p_Roles (
  "IdRol" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE public.p_Usuarios (
  "IdUsuario" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR(160) NOT NULL,
  "Correo" VARCHAR(180) NOT NULL UNIQUE,
  "Telefono" VARCHAR(40) NULL,
  "Activo" BOOLEAN NOT NULL DEFAULT TRUE,
  "FechaCreacion" TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE public.p_UsuariosCredenciales (
  "IdUsuario" INT NOT NULL PRIMARY KEY REFERENCES public.p_Usuarios("IdUsuario"),
  "PasswordHash" VARCHAR(200) NOT NULL,
  "UltimoLogin" TIMESTAMP NULL
);

CREATE TABLE public.p_UsuariosRoles (
  "IdUsuario" INT NOT NULL REFERENCES public.p_Usuarios("IdUsuario"),
  "IdRol" INT NOT NULL REFERENCES public.p_Roles("IdRol"),
  CONSTRAINT "PK_UsuariosRoles" PRIMARY KEY ("IdUsuario", "IdRol")
);

-- 2. Organización (Jerarquía)
CREATE TABLE public.p_OrganizacionNodos (
  "IdNodo" SERIAL PRIMARY KEY,
  "IdPadre" INT NULL REFERENCES public.p_OrganizacionNodos("IdNodo"),
  "Tipo" VARCHAR(30) NOT NULL, -- Gerencia/Subgerencia/Equipo
  "Nombre" VARCHAR(160) NOT NULL,
  "Activo" BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE public.p_UsuariosOrganizacion (
  "IdUsuario" INT NOT NULL REFERENCES public.p_Usuarios("IdUsuario"),
  "IdNodo" INT NOT NULL REFERENCES public.p_OrganizacionNodos("IdNodo"),
  "RolEnNodo" VARCHAR(20) NOT NULL, -- Miembro/Lider/Gerente
  "FechaInicio" DATE NOT NULL,
  "FechaFin" DATE NULL,
  CONSTRAINT "PK_UsuariosOrganizacion" PRIMARY KEY ("IdUsuario", "IdNodo", "FechaInicio")
);

-- 3. Proyectos y Tareas
CREATE TABLE public.p_Proyectos (
  "IdProyecto" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR(160) NOT NULL,
  "Descripcion" VARCHAR(800) NULL,
  "IdNodoDuenio" INT NULL REFERENCES public.p_OrganizacionNodos("IdNodo"),
  "Estado" VARCHAR(20) NOT NULL DEFAULT 'Activo',
  "FechaCreacion" TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE public.p_ProyectoMiembros (
  "IdProyecto" INT NOT NULL REFERENCES public.p_Proyectos("IdProyecto"),
  "IdUsuario" INT NOT NULL REFERENCES public.p_Usuarios("IdUsuario"),
  "Rol" VARCHAR(20) NOT NULL,
  CONSTRAINT "PK_ProyectoMiembros" PRIMARY KEY ("IdProyecto", "IdUsuario")
);

CREATE TABLE public.p_Tareas (
  "IdTarea" BIGSERIAL PRIMARY KEY,
  "IdProyecto" INT NOT NULL REFERENCES public.p_Proyectos("IdProyecto"),
  "Titulo" VARCHAR(220) NOT NULL,
  "Descripcion" VARCHAR(1200) NULL,
  "Estado" VARCHAR(20) NOT NULL DEFAULT 'Pendiente', -- Pendiente/EnCurso/Bloqueada/Revision/Hecha/Descartada
  "Prioridad" VARCHAR(10) NOT NULL DEFAULT 'Media',
  "Esfuerzo" VARCHAR(5) NOT NULL DEFAULT 'M',
  "EsCompartida" BOOLEAN NOT NULL DEFAULT FALSE,
  "FechaInicioPlanificada" DATE NULL,
  "FechaObjetivo" DATE NULL,
  "FechaEnCurso" TIMESTAMP NULL,
  "FechaHecha" TIMESTAMP NULL,
  "IdCreador" INT NOT NULL REFERENCES public.p_Usuarios("IdUsuario"),
  "FechaCreacion" TIMESTAMP NOT NULL DEFAULT NOW(),
  "FechaUltActualizacion" TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE public.p_TareaAsignados (
  "IdTarea" BIGINT NOT NULL REFERENCES public.p_Tareas("IdTarea"),
  "IdUsuario" INT NOT NULL REFERENCES public.p_Usuarios("IdUsuario"),
  "Tipo" VARCHAR(15) NOT NULL, -- Responsable/Colaborador
  CONSTRAINT "PK_TareaAsignados" PRIMARY KEY ("IdTarea", "IdUsuario")
);

CREATE TABLE public.p_TareaDependencias (
  "IdTarea" BIGINT NOT NULL REFERENCES public.p_Tareas("IdTarea"),
  "IdTareaDependeDe" BIGINT NOT NULL REFERENCES public.p_Tareas("IdTarea"),
  CONSTRAINT "PK_TareaDependencias" PRIMARY KEY ("IdTarea", "IdTareaDependeDe"),
  CONSTRAINT "CK_NoSelfDep" CHECK ("IdTarea" <> "IdTareaDependeDe")
);

-- 4. Check-ins y Bloqueos
CREATE TABLE public.p_Checkins (
  "IdCheckin" BIGSERIAL PRIMARY KEY,
  "Fecha" DATE NOT NULL,
  "IdUsuario" INT NOT NULL REFERENCES public.p_Usuarios("IdUsuario"),
  "IdNodo" INT NULL REFERENCES public.p_OrganizacionNodos("IdNodo"),
  "EntregableTexto" VARCHAR(240) NOT NULL,
  "Nota" VARCHAR(600) NULL,
  "FechaCreacion" TIMESTAMP NOT NULL DEFAULT NOW(),
  CONSTRAINT "UQ_Checkin_Dia" UNIQUE ("Fecha", "IdUsuario")
);

CREATE TABLE public.p_CheckinTareas (
  "IdCheckin" BIGINT NOT NULL REFERENCES public.p_Checkins("IdCheckin"),
  "IdTarea" BIGINT NOT NULL REFERENCES public.p_Tareas("IdTarea"),
  "Tipo" VARCHAR(10) NOT NULL, -- Entrego/Avanzo
  CONSTRAINT "PK_CheckinTareas" PRIMARY KEY ("IdCheckin", "IdTarea", "Tipo")
);

CREATE TABLE public.p_Bloqueos (
  "IdBloqueo" BIGSERIAL PRIMARY KEY,
  "IdTarea" BIGINT NULL REFERENCES public.p_Tareas("IdTarea"),
  "IdOrigenUsuario" INT NOT NULL REFERENCES public.p_Usuarios("IdUsuario"),
  "IdDestinoUsuario" INT NULL REFERENCES public.p_Usuarios("IdUsuario"),
  "DestinoTexto" VARCHAR(120) NULL,
  "Motivo" VARCHAR(400) NOT NULL,
  "Estado" VARCHAR(15) NOT NULL DEFAULT 'Activo', -- Activo/Resuelto/Descartado
  "FechaCreacion" TIMESTAMP NOT NULL DEFAULT NOW(),
  "FechaResolucion" TIMESTAMP NULL
);

-- 5. Comentarios y Logs
CREATE TABLE public.p_Comentarios (
  "IdComentario" BIGSERIAL PRIMARY KEY,
  "TipoEntidad" VARCHAR(15) NOT NULL, -- TAREA/BLOQUEO/CHECKIN
  "IdEntidad" BIGINT NOT NULL,
  "IdUsuario" INT NOT NULL REFERENCES public.p_Usuarios("IdUsuario"),
  "Texto" VARCHAR(900) NOT NULL,
  "Fecha" TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE public.p_Notificaciones (
  "IdNotificacion" BIGSERIAL PRIMARY KEY,
  "IdUsuario" INT NOT NULL REFERENCES public.p_Usuarios("IdUsuario"),
  "Tipo" VARCHAR(40) NOT NULL,
  "Payload" TEXT NOT NULL,
  "Leida" BOOLEAN NOT NULL DEFAULT FALSE,
  "Fecha" TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Indices
CREATE INDEX "IX_Checkins_Fecha_IdUsuario" ON public.p_Checkins("Fecha", "IdUsuario");
CREATE INDEX "IX_CheckinTareas_IdCheckin" ON public.p_CheckinTareas("IdCheckin");
CREATE INDEX "IX_Bloqueos_Estado_Fecha" ON public.p_Bloqueos("Estado", "FechaCreacion");
CREATE INDEX "IX_Tareas_Estado_Prioridad" ON public.p_Tareas("Estado", "Prioridad", "FechaUltActualizacion");
CREATE INDEX "IX_TareaAsignados_IdUsuario" ON public.p_TareaAsignados("IdUsuario");
CREATE INDEX "IX_UsuariosOrganizacion_Usuario_Fecha" ON public.p_UsuariosOrganizacion("IdUsuario", "FechaInicio", "FechaFin");
CREATE INDEX "IX_OrganizacionNodos_IdPadre" ON public.p_OrganizacionNodos("IdPadre");

USE [Bdplaner]
GO
/****** Object:  Table [dbo].[p_Usuarios]    Script Date: 24/1/2026 12:21:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p_Usuarios](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](200) NULL,
	[nombreCompleto] [nvarchar](300) NULL,
	[correo] [nvarchar](200) NOT NULL,
	[activo] [bit] NULL,
	[rolGlobal] [nvarchar](50) NULL,
	[idRol] [int] NULL,
	[carnet] [nvarchar](50) NULL,
	[cargo] [nvarchar](200) NULL,
	[departamento] [nvarchar](200) NULL,
	[orgDepartamento] [nvarchar](200) NULL,
	[orgGerencia] [nvarchar](200) NULL,
	[idOrg] [nvarchar](50) NULL,
	[jefeCarnet] [nvarchar](50) NULL,
	[jefeNombre] [nvarchar](200) NULL,
	[jefeCorreo] [nvarchar](200) NULL,
	[fechaIngreso] [datetime] NULL,
	[genero] [nvarchar](20) NULL,
	[primer_nivel] [nvarchar](200) NULL,
	[gerencia] [nvarchar](200) NULL,
	[ogerencia] [nvarchar](200) NULL,
	[subgerencia] [nvarchar](200) NULL,
	[pais] [nvarchar](10) NULL,
	[telefono] [nvarchar](50) NULL,
	[fechaCreacion] [datetime] NULL,
	[username] [nvarchar](100) NULL,
	[cedula] [nvarchar](50) NULL,
	[area] [nvarchar](200) NULL,
	[direccion] [nvarchar](max) NULL,
	[empresa] [nvarchar](200) NULL,
	[ubicacion] [nvarchar](200) NULL,
	[tipo_empleado] [nvarchar](100) NULL,
	[tipo_contrato] [nvarchar](100) NULL,
	[fuente_datos] [nvarchar](50) NULL,
	[segundo_nivel] [nvarchar](200) NULL,
	[tercer_nivel] [nvarchar](200) NULL,
	[cuarto_nivel] [nvarchar](200) NULL,
	[quinto_nivel] [nvarchar](200) NULL,
	[sexto_nivel] [nvarchar](200) NULL,
	[carnet_jefe2] [nvarchar](50) NULL,
	[carnet_jefe3] [nvarchar](50) NULL,
	[carnet_jefe4] [nvarchar](50) NULL,
	[fechaActualizacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[correo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Usuarios_carnet]    Script Date: 24/1/2026 12:21:43 ******/
CREATE NONCLUSTERED INDEX [IX_Usuarios_carnet] ON [dbo].[p_Usuarios]
(
	[carnet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Usuarios_correo]    Script Date: 24/1/2026 12:21:43 ******/
CREATE NONCLUSTERED INDEX [IX_Usuarios_correo] ON [dbo].[p_Usuarios]
(
	[correo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[p_Usuarios] ADD  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [dbo].[p_Usuarios] ADD  DEFAULT ('Empleado') FOR [rolGlobal]
GO
ALTER TABLE [dbo].[p_Usuarios] ADD  DEFAULT ('NI') FOR [pais]
GO
ALTER TABLE [dbo].[p_Usuarios] ADD  DEFAULT (getdate()) FOR [fechaCreacion]
GO
ALTER TABLE [dbo].[p_Usuarios]  WITH CHECK ADD FOREIGN KEY([idRol])
REFERENCES [dbo].[p_Roles] ([idRol])
GO

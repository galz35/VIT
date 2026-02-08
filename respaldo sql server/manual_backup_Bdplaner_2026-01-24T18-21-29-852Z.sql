-- Manual Backup for Bdplaner
-- Date: 2026-01-24T18:21:37.991Z

-- Table: p_AuditLog

-- Table: p_Auditoria
SET IDENTITY_INSERT [p_Auditoria] ON;
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (1, 3, 'TAREA_ACTUALIZADA', 'Tarea', '38', NULL, '{"tipo":"CrearRecurrencia","config":{"tipoRecurrencia":"SEMANAL","diasSemana":"1,3,5","fechaInicioVigencia":"2026-01-01T00:00:00.000Z","fechaFinVigencia":"2026-12-31T00:00:00.000Z"}}', '2026-01-21 17:46:52');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (2, 3, 'TAREA_ACTUALIZADA', 'Tarea', '38', NULL, '{"tipo":"AvanceMensual","anio":2026,"mes":1,"porcentajeMes":25}', '2026-01-21 17:46:53');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (3, 3, 'TAREA_ACTUALIZADA', 'Tarea', '39', NULL, '{"tipo":"CrearRecurrencia","config":{"tipoRecurrencia":"SEMANAL","diasSemana":"1,3,5","fechaInicioVigencia":"2026-01-01T00:00:00.000Z"}}', '2026-01-21 17:47:42');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (4, 3, 'TAREA_ACTUALIZADA', 'Tarea', '39', NULL, '{"tipo":"AvanceMensual","anio":2026,"mes":1,"porcentajeMes":25}', '2026-01-21 17:47:44');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (5, 3, 'TAREA_ACTUALIZADA', 'Tarea', '40', NULL, '{"tipo":"CrearRecurrencia","config":{"tipoRecurrencia":"SEMANAL","diasSemana":"1,3,5","fechaInicioVigencia":"2026-01-01T00:00:00.000Z"}}', '2026-01-21 17:48:56');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (6, 3, 'TAREA_ACTUALIZADA', 'Tarea', '40', NULL, '{"tipo":"AvanceMensual","anio":2026,"mes":1,"porcentajeMes":25}', '2026-01-21 17:48:58');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (7, 3, 'TAREA_ACTUALIZADA', 'Tarea', '40', NULL, '{"tipo":"CrearGrupo"}', '2026-01-21 17:48:58');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (8, 3, 'TAREA_ACTUALIZADA', 'Tarea', '42', NULL, '{"tipo":"CrearRecurrencia","config":{"tipoRecurrencia":"SEMANAL","diasSemana":"1,3,5","fechaInicioVigencia":"2026-01-01T00:00:00.000Z"}}', '2026-01-21 18:31:33');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (9, 3, 'TAREA_ACTUALIZADA', 'Tarea', '42', NULL, '{"tipo":"AvanceMensual","anio":2026,"mes":1,"porcentajeMes":25}', '2026-01-21 18:31:35');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (10, 3, 'TAREA_ACTUALIZADA', 'Tarea', '42', NULL, '{"tipo":"CrearGrupo"}', '2026-01-21 18:31:36');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (11, 23, 'TAREA_REVALIDADA', 'Tarea', '29', NULL, '{"accion":"Reasignar","idUsuarioOtro":20}', '2026-01-22 04:43:52');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (12, 23, 'USUARIO_LOGIN', 'Usuario', '23', NULL, '{"correo":"gustavo.lira@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 05:11:17');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (13, 41, 'USUARIO_LOGIN', 'Usuario', '41', NULL, '{"correo":"serviciomedico@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 05:11:47');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (14, 23, 'USUARIO_LOGIN', 'Usuario', '23', NULL, '{"correo":"gustavo.lira@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 05:14:48');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (15, 41, 'USUARIO_LOGIN', 'Usuario', '41', NULL, '{"correo":"serviciomedico@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 05:16:04');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (16, 39, 'USUARIO_LOGIN', 'Usuario', '39', NULL, '{"correo":"erick.nicolas@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 05:17:17');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (17, 41, 'USUARIO_LOGIN', 'Usuario', '41', NULL, '{"correo":"serviciomedico@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 05:20:59');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (18, 39, 'USUARIO_LOGIN', 'Usuario', '39', NULL, '{"correo":"erick.nicolas@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 05:26:22');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (19, 34, 'USUARIO_LOGIN', 'Usuario', '34', NULL, '{"correo":"yesenia.manzanarez@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 05:26:44');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (20, 23, 'USUARIO_LOGIN', 'Usuario', '23', NULL, '{"correo":"gustavo.lira@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 05:59:54');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (21, 23, 'USUARIO_LOGIN', 'Usuario', '23', NULL, '{"correo":"gustavo.lira@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 06:46:55');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (22, 23, 'USUARIO_LOGIN', 'Usuario', '23', NULL, '{"correo":"gustavo.lira@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 06:54:44');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (23, 23, 'USUARIO_LOGIN', 'Usuario', '23', NULL, '{"correo":"gustavo.lira@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 06:54:59');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (24, 23, 'USUARIO_LOGIN', 'Usuario', '23', NULL, '{"correo":"gustavo.lira@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 07:15:44');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (25, 23, 'USUARIO_LOGIN', 'Usuario', '23', NULL, '{"correo":"gustavo.lira@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 07:16:16');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (26, 23, 'USUARIO_LOGIN', 'Usuario', '23', NULL, '{"correo":"gustavo.lira@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 07:16:31');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (27, 23, 'USUARIO_LOGIN', 'Usuario', '23', NULL, '{"correo":"gustavo.lira@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 07:17:43');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (28, 23, 'USUARIO_LOGIN', 'Usuario', '23', NULL, '{"correo":"gustavo.lira@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 07:18:40');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (29, 23, 'USUARIO_LOGIN', 'Usuario', '23', NULL, '{"correo":"gustavo.lira@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 07:35:53');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (30, 24, 'USUARIO_LOGIN', 'Usuario', '24', NULL, '{"correo":"candida.sanchez@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 13:03:48');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (31, 24, 'TAREA_ACTUALIZADA', 'Tarea', '30', NULL, '{"progreso":15,"comentario":"Actualización de progreso","tipo":"Avance"}', '2026-01-22 13:06:48');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (32, 23, 'USUARIO_LOGIN', 'Usuario', '23', NULL, '{"correo":"gustavo.lira@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 13:14:17');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (33, 23, 'USUARIO_LOGIN', 'Usuario', '23', NULL, '{"correo":"gustavo.lira@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 13:42:22');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (34, 23, 'TAREA_ACTUALIZADA', 'Tarea', '57', NULL, '{"progreso":30,"comentario":"Actualización de progreso","tipo":"Avance"}', '2026-01-22 13:43:52');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (35, 23, 'TAREA_ACTUALIZADA', 'Tarea', '57', NULL, '{"progreso":30,"comentario":"Actualización de progreso","tipo":"Avance"}', '2026-01-22 13:55:36');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (36, 16, 'USUARIO_LOGIN', 'Usuario', '16', NULL, '{"correo":"aurora.espinoza@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 14:16:58');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (37, 4, 'USUARIO_LOGIN', 'Usuario', '4', NULL, '{"correo":"marlene.rosales@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 14:18:27');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (38, 23, 'USUARIO_LOGIN', 'Usuario', '23', NULL, '{"correo":"gustavo.lira@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 14:30:53');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (39, 20, 'USUARIO_LOGIN', 'Usuario', '20', NULL, '{"correo":"ali.rodriguez@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 14:33:13');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (40, 2, 'USUARIO_LOGIN', 'Usuario', '2', NULL, '{"correo":"taniaa.aguirre@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 14:35:44');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (41, 24, 'USUARIO_LOGIN', 'Usuario', '24', NULL, '{"correo":"candida.sanchez@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 14:50:13');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (42, 34, 'USUARIO_LOGIN', 'Usuario', '34', NULL, '{"correo":"yesenia.manzanarez@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 14:54:33');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (43, 30, 'USUARIO_LOGIN', 'Usuario', '30', NULL, '{"correo":"scarleth.vivas@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 15:24:55');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (44, 7, 'USUARIO_LOGIN', 'Usuario', '7', NULL, '{"correo":"isleny.hernandez@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 15:24:57');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (45, 29, 'USUARIO_LOGIN', 'Usuario', '29', NULL, '{"correo":"sergio.martinez@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 15:27:03');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (46, 40, 'USUARIO_LOGIN', 'Usuario', '40', NULL, '{"correo":"andres.duque@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 15:28:04');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (47, 16, 'USUARIO_LOGIN', 'Usuario', '16', NULL, '{"correo":"aurora.espinoza@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 15:28:52');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (48, 35, 'USUARIO_LOGIN', 'Usuario', '35', NULL, '{"correo":"javier.toruno@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 15:29:24');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (49, 4, 'USUARIO_LOGIN', 'Usuario', '4', NULL, '{"correo":"marlene.rosales@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 15:29:38');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (50, 41, 'USUARIO_LOGIN', 'Usuario', '41', NULL, '{"correo":"serviciomedico@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 15:30:15');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (51, 34, 'USUARIO_LOGIN', 'Usuario', '34', NULL, '{"correo":"yesenia.manzanarez@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 15:31:23');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (52, 12, 'USUARIO_LOGIN', 'Usuario', '12', NULL, '{"correo":"belkis.castellon@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 15:36:25');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (53, 1, 'USUARIO_LOGIN', 'Usuario', '1', NULL, '{"correo":"juan.ortuno@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 15:48:09');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (54, 2, 'TAREA_ACTUALIZADA', 'Tarea', '84', NULL, '{"progreso":0,"comentario":"Archivos por mes , listo solo falta el cierrre con el Siaf","tipo":"Avance"}', '2026-01-22 15:48:17');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (55, 7, 'TAREA_ACTUALIZADA', 'Tarea', '86', NULL, '{"progreso":100,"comentario":"Se realizo actualización de 2 matrices de riesgos de la gerencia PYME aún pendientes 2 matrices","tipo":"Avance"}', '2026-01-22 15:49:49');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (56, 6, 'USUARIO_LOGIN', 'Usuario', '6', NULL, '{"correo":"nelson.perez@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 15:51:42');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (57, 24, 'USUARIO_LOGIN', 'Usuario', '24', NULL, '{"correo":"candida.sanchez@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 15:56:52');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (58, 23, 'USUARIO_LOGIN', 'Usuario', '23', NULL, '{"correo":"gustavo.lira@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 15:58:25');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (59, 29, 'USUARIO_LOGIN', 'Usuario', '29', NULL, '{"correo":"sergio.martinez@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 16:00:45');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (60, 34, 'TAREA_ACTUALIZADA', 'Tarea', '62', NULL, '{"progreso":60,"comentario":"Actualización de progreso","tipo":"Avance"}', '2026-01-22 16:01:02');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (61, 16, 'TAREA_ACTUALIZADA', 'Tarea', '88', NULL, '{"progreso":0,"comentario":"Actualización de progreso","tipo":"Avance"}', '2026-01-22 16:03:46');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (62, 16, 'TAREA_ACTUALIZADA', 'Tarea', '89', NULL, '{"progreso":0,"comentario":"Actualización de progreso","tipo":"Avance"}', '2026-01-22 16:05:09');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (63, 16, 'TAREA_ACTUALIZADA', 'Tarea', '88', NULL, '{"progreso":0,"comentario":"Actualización de progreso","tipo":"Avance"}', '2026-01-22 16:22:53');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (64, 24, 'USUARIO_LOGIN', 'Usuario', '24', NULL, '{"correo":"candida.sanchez@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 16:25:08');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (65, 24, 'USUARIO_LOGIN', 'Usuario', '24', NULL, '{"correo":"candida.sanchez@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 16:26:24');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (66, 4, 'TAREA_ACTUALIZADA', 'Tarea', '97', NULL, '{"progreso":0,"comentario":"Actualización de progreso","tipo":"Avance"}', '2026-01-22 16:29:43');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (67, 7, 'USUARIO_LOGIN', 'Usuario', '7', NULL, '{"correo":"isleny.hernandez@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 16:30:14');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (68, 34, 'TAREA_ACTUALIZADA', 'Tarea', '62', NULL, '{"progreso":25,"comentario":"Actualización de progreso","tipo":"Avance"}', '2026-01-22 16:31:28');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (69, 34, 'TAREA_ACTUALIZADA', 'Tarea', '62', NULL, '{"progreso":10,"comentario":"completa","tipo":"Avance"}', '2026-01-22 16:31:52');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (70, 29, 'USUARIO_LOGIN', 'Usuario', '29', NULL, '{"correo":"sergio.martinez@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 16:35:05');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (71, 34, 'TAREA_ACTUALIZADA', 'Tarea', '74', NULL, '{"progreso":50,"comentario":"se avanzo 10%","tipo":"Avance"}', '2026-01-22 16:36:34');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (72, 34, 'TAREA_ACTUALIZADA', 'Tarea', '62', NULL, '{"progreso":0,"comentario":"Actualización de progreso","tipo":"Avance"}', '2026-01-22 16:36:41');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (73, 34, 'TAREA_ACTUALIZADA', 'Tarea', '74', NULL, '{"progreso":0,"comentario":"Actualización de progreso","tipo":"Avance"}', '2026-01-22 16:37:32');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (74, 34, 'USUARIO_LOGIN', 'Usuario', '34', NULL, '{"correo":"yesenia.manzanarez@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 16:39:07');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (75, 7, 'TAREA_ACTUALIZADA', 'Tarea', '80', NULL, '{"progreso":0,"comentario":"Actualización de progreso","tipo":"Avance"}', '2026-01-22 16:40:05');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (76, 34, 'USUARIO_LOGIN', 'Usuario', '34', NULL, '{"correo":"yesenia.manzanarez@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 16:40:23');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (77, 7, 'TAREA_ACTUALIZADA', 'Tarea', '81', NULL, '{"progreso":20,"comentario":"Actualización de progreso","tipo":"Avance"}', '2026-01-22 16:40:59');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (78, 3, 'USUARIO_LOGIN', 'Usuario', '3', NULL, '{"correo":"josue.garcia@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 16:41:06');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (79, 7, 'TAREA_ACTUALIZADA', 'Tarea', '80', NULL, '{"progreso":100,"comentario":"Actualización de progreso","tipo":"Avance"}', '2026-01-22 16:41:09');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (80, 2, 'USUARIO_LOGIN', 'Usuario', '2', NULL, '{"correo":"taniaa.aguirre@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 16:41:53');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (81, 34, 'TAREA_ACTUALIZADA', 'Tarea', '74', NULL, '{"progreso":25,"comentario":"Actualización de progreso","tipo":"Avance"}', '2026-01-22 16:48:16');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (82, 34, 'TAREA_ACTUALIZADA', 'Tarea', '62', NULL, '{"progreso":0,"comentario":"Actualización de progreso","tipo":"Avance"}', '2026-01-22 16:48:44');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (83, 20, 'USUARIO_LOGIN', 'Usuario', '20', NULL, '{"correo":"ali.rodriguez@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 16:49:08');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (84, 20, 'USUARIO_LOGIN', 'Usuario', '20', NULL, '{"correo":"ali.rodriguez@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 16:58:03');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (85, 16, 'USUARIO_LOGIN', 'Usuario', '16', NULL, '{"correo":"aurora.espinoza@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 16:58:26');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (86, 1, 'USUARIO_LOGIN', 'Usuario', '1', NULL, '{"correo":"juan.ortuno@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 16:58:59');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (87, 3, 'USUARIO_LOGIN', 'Usuario', '3', NULL, '{"correo":"josue.garcia@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 17:37:25');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (88, 21, 'USUARIO_LOGIN', 'Usuario', '21', NULL, '{"correo":"edgardo.saballos@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 18:44:36');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (89, 8, 'USUARIO_LOGIN', 'Usuario', '8', NULL, '{"correo":"mariav.sequeira@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 21:09:17');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (90, 33, 'USUARIO_LOGIN', 'Usuario', '33', NULL, '{"correo":"kevine.barahona@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 21:38:00');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (91, 30, 'USUARIO_LOGIN', 'Usuario', '30', NULL, '{"correo":"scarleth.vivas@claro.com.ni","ip":"IP_MOCK"}', '2026-01-22 23:48:24');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (92, 38, 'USUARIO_LOGIN', 'Usuario', '38', NULL, '{"correo":"maria.gonzalez2@claro.com.ni","ip":"IP_MOCK"}', '2026-01-23 14:21:11');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (93, 30, 'USUARIO_LOGIN', 'Usuario', '30', NULL, '{"correo":"scarleth.vivas@claro.com.ni","ip":"IP_MOCK"}', '2026-01-23 16:49:03');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (94, 30, 'TAREA_ACTUALIZADA', 'Tarea', '154', NULL, '{"progreso":0,"comentario":"Actualización de progreso","tipo":"Avance"}', '2026-01-23 17:38:41');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (95, 23, 'USUARIO_LOGIN', 'Usuario', '23', NULL, '{"correo":"gustavo.lira@claro.com.ni","ip":"IP_MOCK"}', '2026-01-23 19:04:03');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (96, 23, 'USUARIO_LOGIN', 'Usuario', '23', NULL, '{"correo":"gustavo.lira@claro.com.ni","ip":"IP_MOCK"}', '2026-01-23 20:50:45');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (97, 30, 'USUARIO_LOGIN', 'Usuario', '30', NULL, '{"correo":"scarleth.vivas@claro.com.ni","ip":"IP_MOCK"}', '2026-01-23 21:41:01');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (98, 26, 'USUARIO_LOGIN', 'Usuario', '26', NULL, '{"correo":"allanm.hernandez@claro.com.ni","ip":"IP_MOCK"}', '2026-01-23 23:31:44');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (99, 24, 'USUARIO_LOGIN', 'Usuario', '24', NULL, '{"correo":"candida.sanchez@claro.com.ni","ip":"IP_MOCK"}', '2026-01-23 23:34:27');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (100, 26, 'TAREA_ACTUALIZADA', 'Tarea', '163', NULL, '{"progreso":0,"comentario":"Actualización de progreso","tipo":"Avance"}', '2026-01-23 23:34:45');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (101, 30, 'USUARIO_LOGIN', 'Usuario', '30', NULL, '{"correo":"scarleth.vivas@claro.com.ni","ip":"IP_MOCK"}', '2026-01-23 23:35:20');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (102, 12, 'TAREA_ACTUALIZADA', 'Tarea', '164', NULL, '{"progreso":0,"comentario":"Actualización de progreso","tipo":"Avance"}', '2026-01-23 23:42:45');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (103, 12, 'TAREA_ACTUALIZADA', 'Tarea', '112', NULL, '{"progreso":3,"comentario":"Actualización de progreso","tipo":"Avance"}', '2026-01-23 23:43:00');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (104, 12, 'TAREA_ACTUALIZADA', 'Tarea', '112', NULL, '{"progreso":3,"comentario":"Actualización de progreso","tipo":"Avance"}', '2026-01-23 23:45:51');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (105, 28, 'USUARIO_LOGIN', 'Usuario', '28', NULL, '{"correo":"milcy.velasquez@claro.com.ni","ip":"IP_MOCK"}', '2026-01-23 23:47:35');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (106, 23, 'USUARIO_LOGIN', 'Usuario', '23', NULL, '{"correo":"gustavo.lira@claro.com.ni","ip":"IP_MOCK"}', '2026-01-23 23:50:03');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (107, 28, 'USUARIO_LOGIN', 'Usuario', '28', NULL, '{"correo":"milcy.velasquez@claro.com.ni","ip":"IP_MOCK"}', '2026-01-23 23:55:05');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (108, 34, 'USUARIO_LOGIN', 'Usuario', '34', NULL, '{"correo":"yesenia.manzanarez@claro.com.ni","ip":"IP_MOCK"}', '2026-01-24 00:01:15');
INSERT INTO [p_Auditoria] ([id], [idUsuario], [accion], [entidad], [entidadId], [datosAnteriores], [datosNuevos], [fecha]) VALUES (109, 28, 'USUARIO_LOGIN', 'Usuario', '28', NULL, '{"correo":"milcy.velasquez@claro.com.ni","ip":"IP_MOCK"}', '2026-01-24 00:24:13');
SET IDENTITY_INSERT [p_Auditoria] OFF;

-- Table: p_Bloqueos

-- Table: p_Checkins
SET IDENTITY_INSERT [p_Checkins] ON;
INSERT INTO [p_Checkins] ([idCheckin], [idUsuario], [fecha], [prioridad1], [prioridad2], [prioridad3], [estado], [energia], [creadoEn], [comentarios], [entregableTexto], [nota], [linkEvidencia], [estadoAnimo], [idNodo], [fechaCreacion]) VALUES (1, 1, '2026-01-21 00:00:00', NULL, NULL, NULL, 'pendiente', NULL, '2026-01-21 07:44:03', NULL, 'revision de programa', NULL, NULL, NULL, NULL, '2026-01-21 22:58:49');
INSERT INTO [p_Checkins] ([idCheckin], [idUsuario], [fecha], [prioridad1], [prioridad2], [prioridad3], [estado], [energia], [creadoEn], [comentarios], [entregableTexto], [nota], [linkEvidencia], [estadoAnimo], [idNodo], [fechaCreacion]) VALUES (3, 23, '2026-01-21 00:00:00', NULL, NULL, NULL, 'pendiente', NULL, '2026-01-21 15:26:46', NULL, 'prueba 3 + prueba', NULL, NULL, NULL, NULL, '2026-01-21 15:39:23');
INSERT INTO [p_Checkins] ([idCheckin], [idUsuario], [fecha], [prioridad1], [prioridad2], [prioridad3], [estado], [energia], [creadoEn], [comentarios], [entregableTexto], [nota], [linkEvidencia], [estadoAnimo], [idNodo], [fechaCreacion]) VALUES (4, 3, '2026-01-21 00:00:00', NULL, NULL, NULL, 'pendiente', NULL, '2026-01-21 16:06:23', NULL, 'tarea', NULL, NULL, NULL, NULL, '2026-01-21 16:06:23');
INSERT INTO [p_Checkins] ([idCheckin], [idUsuario], [fecha], [prioridad1], [prioridad2], [prioridad3], [estado], [energia], [creadoEn], [comentarios], [entregableTexto], [nota], [linkEvidencia], [estadoAnimo], [idNodo], [fechaCreacion]) VALUES (5, 24, '2026-01-21 00:00:00', NULL, NULL, NULL, 'pendiente', NULL, '2026-01-22 03:49:02', NULL, 'prueba 3 + prueba', NULL, NULL, NULL, NULL, '2026-01-22 03:49:02');
INSERT INTO [p_Checkins] ([idCheckin], [idUsuario], [fecha], [prioridad1], [prioridad2], [prioridad3], [estado], [energia], [creadoEn], [comentarios], [entregableTexto], [nota], [linkEvidencia], [estadoAnimo], [idNodo], [fechaCreacion]) VALUES (6, 23, '2026-01-22 00:00:00', NULL, NULL, NULL, 'pendiente', NULL, '2026-01-22 03:55:35', NULL, 'prueba 3 + Validar integracion de horas extras a Nómina', NULL, NULL, NULL, NULL, '2026-01-22 13:25:55');
INSERT INTO [p_Checkins] ([idCheckin], [idUsuario], [fecha], [prioridad1], [prioridad2], [prioridad3], [estado], [energia], [creadoEn], [comentarios], [entregableTexto], [nota], [linkEvidencia], [estadoAnimo], [idNodo], [fechaCreacion]) VALUES (7, 34, '2026-01-22 00:00:00', NULL, NULL, NULL, 'pendiente', NULL, '2026-01-22 14:55:58', NULL, 'Preparación de Workbook para Onboarding + Reunion con el area compensacion', NULL, NULL, NULL, NULL, '2026-01-22 14:56:43');
INSERT INTO [p_Checkins] ([idCheckin], [idUsuario], [fecha], [prioridad1], [prioridad2], [prioridad3], [estado], [energia], [creadoEn], [comentarios], [entregableTexto], [nota], [linkEvidencia], [estadoAnimo], [idNodo], [fechaCreacion]) VALUES (8, 7, '2026-01-22 00:00:00', NULL, NULL, NULL, 'pendiente', NULL, '2026-01-22 15:36:14', NULL, 'Actualización de matrices IPER procesos estratégicos', NULL, NULL, NULL, NULL, '2026-01-22 16:49:05');
INSERT INTO [p_Checkins] ([idCheckin], [idUsuario], [fecha], [prioridad1], [prioridad2], [prioridad3], [estado], [energia], [creadoEn], [comentarios], [entregableTexto], [nota], [linkEvidencia], [estadoAnimo], [idNodo], [fechaCreacion]) VALUES (9, 16, '2026-01-22 00:00:00', NULL, NULL, NULL, 'pendiente', NULL, '2026-01-22 16:16:31', NULL, 'Explicación de la metodologia de valoración de puestos', NULL, NULL, NULL, NULL, '2026-01-22 16:16:32');
INSERT INTO [p_Checkins] ([idCheckin], [idUsuario], [fecha], [prioridad1], [prioridad2], [prioridad3], [estado], [energia], [creadoEn], [comentarios], [entregableTexto], [nota], [linkEvidencia], [estadoAnimo], [idNodo], [fechaCreacion]) VALUES (10, 12, '2026-01-22 00:00:00', NULL, NULL, NULL, 'pendiente', NULL, '2026-01-22 17:13:49', NULL, '1. Validar que necesidades de formación nos muestra el DNC', NULL, NULL, NULL, NULL, '2026-01-22 17:13:49');
INSERT INTO [p_Checkins] ([idCheckin], [idUsuario], [fecha], [prioridad1], [prioridad2], [prioridad3], [estado], [energia], [creadoEn], [comentarios], [entregableTexto], [nota], [linkEvidencia], [estadoAnimo], [idNodo], [fechaCreacion]) VALUES (11, 30, '2026-01-23 00:00:00', NULL, NULL, NULL, 'pendiente', NULL, '2026-01-23 17:39:03', NULL, 'Realizar el comparativo gasto real 2025 vs presupuesto asignado', NULL, NULL, NULL, NULL, '2026-01-23 21:43:26');
SET IDENTITY_INSERT [p_Checkins] OFF;

-- Table: p_CheckinTareas
SET IDENTITY_INSERT [p_CheckinTareas] ON;
INSERT INTO [p_CheckinTareas] ([id], [idCheckin], [idTarea], [descripcion], [completado], [orden], [tipo]) VALUES (4, 3, 30, NULL, 0, 0, 'Entrego');
INSERT INTO [p_CheckinTareas] ([id], [idCheckin], [idTarea], [descripcion], [completado], [orden], [tipo]) VALUES (5, 3, 28, NULL, 0, 0, 'Entrego');
INSERT INTO [p_CheckinTareas] ([id], [idCheckin], [idTarea], [descripcion], [completado], [orden], [tipo]) VALUES (6, 3, 29, NULL, 0, 0, 'Avanzo');
INSERT INTO [p_CheckinTareas] ([id], [idCheckin], [idTarea], [descripcion], [completado], [orden], [tipo]) VALUES (7, 4, 31, NULL, 0, 0, 'Entrego');
INSERT INTO [p_CheckinTareas] ([id], [idCheckin], [idTarea], [descripcion], [completado], [orden], [tipo]) VALUES (8, 1, 48, NULL, 0, 0, 'Entrego');
INSERT INTO [p_CheckinTareas] ([id], [idCheckin], [idTarea], [descripcion], [completado], [orden], [tipo]) VALUES (9, 5, 30, NULL, 0, 0, 'Entrego');
INSERT INTO [p_CheckinTareas] ([id], [idCheckin], [idTarea], [descripcion], [completado], [orden], [tipo]) VALUES (10, 5, 28, NULL, 0, 0, 'Entrego');
INSERT INTO [p_CheckinTareas] ([id], [idCheckin], [idTarea], [descripcion], [completado], [orden], [tipo]) VALUES (11, 5, 29, NULL, 0, 0, 'Avanzo');
INSERT INTO [p_CheckinTareas] ([id], [idCheckin], [idTarea], [descripcion], [completado], [orden], [tipo]) VALUES (12, 5, 50, NULL, 0, 0, 'Avanzo');
INSERT INTO [p_CheckinTareas] ([id], [idCheckin], [idTarea], [descripcion], [completado], [orden], [tipo]) VALUES (18, 6, 30, NULL, 0, 0, 'Entrego');
INSERT INTO [p_CheckinTareas] ([id], [idCheckin], [idTarea], [descripcion], [completado], [orden], [tipo]) VALUES (19, 6, 67, NULL, 0, 0, 'Entrego');
INSERT INTO [p_CheckinTareas] ([id], [idCheckin], [idTarea], [descripcion], [completado], [orden], [tipo]) VALUES (20, 6, 57, NULL, 0, 0, 'Avanzo');
INSERT INTO [p_CheckinTareas] ([id], [idCheckin], [idTarea], [descripcion], [completado], [orden], [tipo]) VALUES (22, 7, 62, NULL, 0, 0, 'Entrego');
INSERT INTO [p_CheckinTareas] ([id], [idCheckin], [idTarea], [descripcion], [completado], [orden], [tipo]) VALUES (23, 7, 74, NULL, 0, 0, 'Entrego');
INSERT INTO [p_CheckinTareas] ([id], [idCheckin], [idTarea], [descripcion], [completado], [orden], [tipo]) VALUES (31, 9, 88, NULL, 0, 0, 'Entrego');
INSERT INTO [p_CheckinTareas] ([id], [idCheckin], [idTarea], [descripcion], [completado], [orden], [tipo]) VALUES (32, 9, 96, NULL, 0, 0, 'Avanzo');
INSERT INTO [p_CheckinTareas] ([id], [idCheckin], [idTarea], [descripcion], [completado], [orden], [tipo]) VALUES (36, 8, 81, NULL, 0, 0, 'Entrego');
INSERT INTO [p_CheckinTareas] ([id], [idCheckin], [idTarea], [descripcion], [completado], [orden], [tipo]) VALUES (37, 8, 80, NULL, 0, 0, 'Avanzo');
INSERT INTO [p_CheckinTareas] ([id], [idCheckin], [idTarea], [descripcion], [completado], [orden], [tipo]) VALUES (38, 10, 112, NULL, 0, 0, 'Entrego');
INSERT INTO [p_CheckinTareas] ([id], [idCheckin], [idTarea], [descripcion], [completado], [orden], [tipo]) VALUES (42, 11, 154, NULL, 0, 0, 'Entrego');
SET IDENTITY_INSERT [p_CheckinTareas] OFF;

-- Table: p_delegacion_visibilidad

-- Table: p_FocoDiario

-- Table: p_Logs
SET IDENTITY_INSERT [p_Logs] ON;
INSERT INTO [p_Logs] ([id], [idUsuario], [accion], [entidad], [entidadId], [datos], [ip], [fecha]) VALUES (1, 23, 'CAMBIO_ROL', 'Usuario', NULL, 'Usuario 24 -> Admin (idRol: undefined)', NULL, '2026-01-22 15:59:25');
INSERT INTO [p_Logs] ([id], [idUsuario], [accion], [entidad], [entidadId], [datos], [ip], [fecha]) VALUES (2, 24, 'CAMBIO_ROL', 'Usuario', NULL, 'Usuario 1 -> Admin (idRol: undefined)', NULL, '2026-01-22 16:28:12');
INSERT INTO [p_Logs] ([id], [idUsuario], [accion], [entidad], [entidadId], [datos], [ip], [fecha]) VALUES (3, 24, 'CAMBIO_ROL', 'Usuario', NULL, 'Usuario 30 -> Admin (idRol: undefined)', NULL, '2026-01-23 23:35:14');
SET IDENTITY_INSERT [p_Logs] OFF;

-- Table: p_LogSistema

-- Table: p_Notas

-- Table: p_organizacion_nodos

-- Table: p_OrganizacionNodos

-- Table: p_permiso_area
SET IDENTITY_INSERT [p_permiso_area] ON;
INSERT INTO [p_permiso_area] ([id], [carnet_otorga], [carnet_recibe], [idorg_raiz], [alcance], [activo], [fecha_inicio], [fecha_fin], [motivo], [creado_en], [nombre_area], [tipo_nivel]) VALUES ('3', NULL, '300042', NULL, 'SUBARBOL', 1, NULL, NULL, 'Permiso RRHH', '2026-01-21 21:20:47', 'NI GERENCIA DE RECURSOS HUMANOS', 'GERENCIA');
SET IDENTITY_INSERT [p_permiso_area] OFF;

-- Table: p_permiso_empleado
SET IDENTITY_INSERT [p_permiso_empleado] ON;
INSERT INTO [p_permiso_empleado] ([id], [carnet_otorga], [carnet_recibe], [carnet_objetivo], [activo], [fecha_inicio], [fecha_fin], [motivo], [creado_en], [tipo_acceso]) VALUES ('1', NULL, '1005898', '500708', 1, '2026-01-19 00:00:00', NULL, NULL, '2026-01-19 20:18:56', 'ALLOW');
INSERT INTO [p_permiso_empleado] ([id], [carnet_otorga], [carnet_recibe], [carnet_objetivo], [activo], [fecha_inicio], [fecha_fin], [motivo], [creado_en], [tipo_acceso]) VALUES ('2', NULL, '402105', '402178', 1, '2026-01-20 00:00:00', NULL, NULL, '2026-01-20 21:45:28', 'ALLOW');
INSERT INTO [p_permiso_empleado] ([id], [carnet_otorga], [carnet_recibe], [carnet_objetivo], [activo], [fecha_inicio], [fecha_fin], [motivo], [creado_en], [tipo_acceso]) VALUES ('3', NULL, '402178', '1005898', 1, NULL, NULL, NULL, '2026-01-22 04:24:48', 'ALLOW');
SET IDENTITY_INSERT [p_permiso_empleado] OFF;

-- Table: p_PlanesTrabajo

-- Table: p_Proyectos
SET IDENTITY_INSERT [p_Proyectos] ON;
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (52, 'Reclutamiento-Objetivo 2026', 'Objetivo del 2026', 5, '2026-01-20 20:35:44', 'NI', 'Operativo', 'Activo', 0, 0, '2026-01-01 00:00:00', '2026-12-31 00:00:00', 'NI COORD. DE RECLUTAMIENTO Y SELECCION', 'NI SUBGERENCIA DE COMPENSACIONES', 'NI GERENCIA DE RECURSOS HUMANOS', NULL, NULL, NULL, NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (53, ' Control Organizacional, Compensaciones y Descripciones de puestos:', 'Fortalecer los procesos de compensación y organización, asegurando que operen bajo metodologías robustas y con un nivel de madurez alineado al corporativo.', 5, '2026-01-20 20:48:08', 'NI', 'Operativo', 'Activo', 0, 0, '2026-01-01 00:00:00', '2026-12-31 00:00:00', 'NI SUBGERENCIA DE COMPENSACIONES', 'NI SUBGERENCIA DE COMPENSACIONES', 'NI GERENCIA DE RECURSOS HUMANOS', NULL, NULL, NULL, NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (54, 'Descripciones/Perfiles de Puestos basados en Competencias Laborales', 'Descripciones/Perfiles de Puestos basados en Competencias Laborales Aplicar encuesta autorizada en coordinación con Gcia. Control de Personal AM y Plataformas Digitales para obtener un diagnóstico sobre la gestión de perfiles y descripciones de puesto en empresas AMX.', 5, '2026-01-20 20:52:19', 'NI', 'Operativo', 'Activo', 0, 0, '2026-01-01 00:00:00', '2026-12-31 00:00:00', 'NI SUBGERENCIA DE COMPENSACIONES', 'NI SUBGERENCIA DE COMPENSACIONES', 'NI GERENCIA DE RECURSOS HUMANOS', NULL, NULL, NULL, NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (55, 'Proyecto de Reutilización y Reciclaje de Activos (Mobiliario) ', '', 5, '2026-01-20 20:54:18', 'NI', 'Operativo', 'Activo', 0, 0, '2026-01-01 00:00:00', '2026-12-31 00:00:00', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI GERENCIA DE RECURSOS HUMANOS', NULL, NULL, NULL, NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (60, 'a', 's', NULL, '2026-01-22 05:20:04', 'NI', 'Operativo', 'Activo', 0, 0, NULL, NULL, 'NI SERVICIO MEDICO', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI GERENCIA DE RECURSOS HUMANOS', 39, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (61, 'Sigho Fase II - Reclutamiento CENAM', 'Brindar la asistencia a los países CENAM a fin de asegurar la correcta implementación del Módulo.', NULL, '2026-01-22 13:09:27', 'NI', 'Operativo', 'Activo', 0, 0, '2026-01-31 00:00:00', '2026-12-29 00:00:00', 'NI COORD. DE SOPORTE A LA OPERACION', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 24, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (62, 'Sigho Fase I - Implementacion de T&L', 'Coordinar con las áreas involucradas la correcta implementación del módulo de Tiempo y Labores para Nicaragua', NULL, '2026-01-22 13:16:35', 'NI', 'Operativo', 'Activo', 0, 0, '2025-11-05 00:00:00', '2026-02-26 00:00:00', 'NI COORD. DE SOPORTE A LA OPERACION', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 23, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (63, 'Mantenimiento ISO 45001 Call Center', 'Garantizar el 100% de los requisitos normativos ISO 45001 durante los meses de febrero- septiembre 2026', NULL, '2026-01-22 15:29:28', 'NI', 'Operativo', 'Activo', 0, 0, '2026-01-22 00:00:00', '2026-09-30 00:00:00', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI GERENCIA DE RECURSOS HUMANOS', 7, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (64, 'Depurar estados de unidades en taller', 'Se actualiza carpetas por talleres depurando cada uno de los avisos con los pptos recibidos por cada una de la unidades. ', NULL, '2026-01-22 15:30:01', 'NI', 'Operativo', 'Activo', 0, 0, '2025-01-13 00:00:00', '2026-01-30 00:00:00', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 20, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (65, 'Actualización de Descriptores de puesto', 'Lograr finalizar con la actualización de Descriptores de puesto en un 100% al 31 de Julio.', NULL, '2026-01-22 15:30:51', 'NI', 'Operativo', 'Activo', 0, 0, '2026-01-19 00:00:00', '2026-07-31 00:00:00', 'NI SUBGERENCIA DE COMPENSACIONES', 'NI SUBGERENCIA DE COMPENSACIONES', 'NI GERENCIA DE RECURSOS HUMANOS', 16, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (66, 'ACTUALIZACIÓN REGLAMENTO INTERNO', 'Actualizar la normativa disciplinaria interna que regirá a toda la compañía.', NULL, '2026-01-22 15:35:38', 'NI', 'Operativo', 'Activo', 0, 0, NULL, NULL, 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI GERENCIA DE RECURSOS HUMANOS', 4, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (68, 'Contratación 16 plazas Gerencia Corporativa', 'Ejecutar el proceso de selección de las vacantes de Gerencia Corporativo en el mes de febrero', NULL, '2026-01-22 15:37:16', 'NI', 'Operativo', 'Activo', 0, 0, '2026-01-05 00:00:00', '2026-02-28 00:00:00', 'NO APLICA', 'NO APLICA', 'NI GERENCIA DE RECURSOS HUMANOS', 34, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (69, 'Mantenimiento alcance Corporativo', 'Garantizar el cumplimiento del 100% de los requisitos de la norma ISO 45001 durante los meses de febrero-septiembre 2026 ', NULL, '2026-01-22 15:41:01', 'NI', 'Operativo', 'Activo', 0, 0, '2026-02-02 00:00:00', '2026-09-30 00:00:00', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI GERENCIA DE RECURSOS HUMANOS', 7, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (70, 'Valoraciones de puesto', 'Garantizar la actualización de Valoraciones de puesto en un 100% de Febrero al cierre de agosto', NULL, '2026-01-22 15:42:38', 'NI', 'Operativo', 'Activo', 0, 0, '2026-02-02 00:00:00', '2026-08-15 00:00:00', 'NI SUBGERENCIA DE COMPENSACIONES', 'NI SUBGERENCIA DE COMPENSACIONES', 'NI GERENCIA DE RECURSOS HUMANOS', 16, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (71, 'Cumplir con la legislación en H&S - Zona Oriente  ', 'Abarcar todas las instalaciones de Claro Nicaragua para garantizar cumplimiento de la Ley 618 y normativas internacionales como la ISO 45001.', NULL, '2026-01-22 15:56:37', 'NI', 'Operativo', 'Activo', 0, 0, '2026-01-22 00:00:00', '2026-03-22 00:00:00', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI GERENCIA DE RECURSOS HUMANOS', 40, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (72, 'Reestructuacon (Ordenamiento de Archivo)', 'Garantizar que los datos del personal se mantengan actualizados, completos y alineados con los sistemas corporativos, fortaleciendo la precisión de los procesos de gestión de talento y la toma de decisiones.', NULL, '2026-01-22 16:00:48', 'NI', 'Operativo', 'Activo', 0, 0, '2026-01-26 00:00:00', '2026-08-31 00:00:00', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 35, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (73, 'Compra de gift card para aniversario laborales 2026', 'Asegurar la adquisición oportuna, correcta y presupuestada de gift cards para colaboradores que cumplen años de servicio durante el año 2026.', NULL, '2026-01-22 16:01:33', 'NI', 'Operativo', 'Activo', 0, 0, '2026-01-21 00:00:00', '2026-02-09 00:00:00', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 30, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (74, '03 - Formación y Desarrollo', ' Avanzar con el proceso de coordinación de curso a través del Diagnóstico de Necesidades de Capacitación (DNC) cursos prioridad 01 y 02', NULL, '2026-01-22 16:01:37', 'NI', 'Operativo', 'Activo', 0, 0, '2026-02-02 00:00:00', '2026-12-11 00:00:00', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', 12, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (75, 'Apertura de Grupos ASUME 2026', 'Aperturar grupos de ASUME 2026 enfocado en completar la meta de graduados 2026 que es de 275 colaboradores.', NULL, '2026-01-22 16:08:18', 'NI', 'Operativo', 'Activo', 0, 0, '2026-01-22 00:00:00', '2026-04-28 00:00:00', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', 29, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (76, 'Mantener un mínimo de 100 vacantes activas', 'Priorizar vacantes críticas y de mayor rotación de acuerdo necesidad de cada dueño de vacante.', NULL, '2026-01-22 16:11:22', 'NI', 'Operativo', 'Activo', 0, 0, '2026-01-05 00:00:00', '2026-12-31 00:00:00', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 34, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (77, 'Reducir el tiempo de contratación de 55 a 45 días', 'Reducir el tiempo de contratacion de 55 a 45 días
desde que se autoriza la vacante', NULL, '2026-01-22 16:12:47', 'NI', 'Operativo', 'Activo', 0, 0, '2026-01-04 00:00:00', '2026-12-30 00:00:00', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 34, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (78, '02 - Formación y Desarrollo', 'Elaborar nueva propuesta de (DNC) a través de la creación de catálogos de cursos por Gerencia y por puesto', NULL, '2026-01-22 16:12:55', 'NI', 'Operativo', 'Activo', 0, 0, '2026-02-04 00:00:00', '2026-02-11 00:00:00', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', 12, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (79, 'Definir evaluación de competencia por puesto', 'Implementar un proceso de selección que permita evaluar competencias clave requeridas tanto para el puesto como para la cultura de la compañía	 a fin de asegurar que los candidatos cuenten con las habilidades necesarias conforme a perfil y cultura.', NULL, '2026-01-22 16:15:42', 'NI', 'Operativo', 'Activo', 0, 0, '2026-03-01 00:00:00', '2026-12-31 00:00:00', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 34, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (80, 'Evaluación de riesgos psicosociales', 'La medición de los riesgos psicosociales tiene como objetivo identificar, evaluar y prevenir aquellos factores relacionados con la organización del trabajo, las condiciones laborales y las relaciones interpersonales que puedan afectar la salud mental, emocional y social de las personas trabajadoras, así como su desempeño y bienestar general.', NULL, '2026-01-22 16:25:31', 'NI', 'Operativo', 'Activo', 0, 0, '2026-01-20 00:00:00', '2026-07-29 00:00:00', 'NI SERVICIO MEDICO', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI GERENCIA DE RECURSOS HUMANOS', 41, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (81, 'Actualización información de empleados', 'Garantizar que los datos del personal se mantengan actualizados, completos y alineados con los sistemas corporativos.', NULL, '2026-01-22 16:29:16', 'NI', 'Operativo', 'Activo', 0, 0, '2026-02-02 00:00:00', '2026-07-31 00:00:00', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 35, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (82, ' 01 - Formación y Desarrollo', 'Habilitar a los facilitadores internos en nuevos temas orientados a las solicitudes de mayor volumen, para que puedan ser impartidos sin fondos.
(06 cursos como meta)', NULL, '2026-01-22 16:32:33', 'NI', 'Operativo', 'Activo', 0, 0, '2026-01-20 00:00:00', '2026-04-28 00:00:00', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 12, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (83, 'PREPARACION DE METOLOGIA DE CALCULO DEL INCENTIVO DE PRODUCCION DE PLANTA EXTERNA', 'Actualizar la normativa de calculo del incentivo de produccion para el personal de planta externa', NULL, '2026-01-22 16:37:49', 'NI', 'Operativo', 'Activo', 0, 0, NULL, NULL, 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI GERENCIA DE RECURSOS HUMANOS', 4, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (84, 'Proyecto Integral de Fortalecimiento Operativo del Área de Transporte', 'Optimizar la operación del Área de Transporte mediante la mejora de procesos, controles administrativos, conciliaciones y herramientas digitales de seguimiento, asegurando una gestión más eficiente, transparente y orientada al servicio.', NULL, '2026-01-22 16:38:56', 'NI', 'Operativo', 'Activo', 0, 0, '2026-01-05 00:00:00', '2026-06-30 00:00:00', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 2, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (85, 'Capacitación Metodología Valoración de puesto', 'Garantizar la capacitación en metodología de valoraciones puestos ', NULL, '2026-01-22 16:49:03', 'NI', 'Operativo', 'Activo', 0, 0, '2026-02-06 00:00:00', '2026-02-19 00:00:00', 'NI SUBGERENCIA DE COMPENSACIONES', 'NI SUBGERENCIA DE COMPENSACIONES', 'NI GERENCIA DE RECURSOS HUMANOS', 16, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (86, 'Jornada de vacunación Covid', 'Prevención de enfermedades inmunoprevenibles en los colaboradores, protegiendo su salud individual y colectiva, reducir el riesgo de brotes dentro del entorno laboral y garantizar la continuidad operativa de la empresa.', NULL, '2026-01-22 17:30:54', 'NI', 'Operativo', 'Activo', 0, 0, '2026-04-20 00:00:00', '2026-05-30 00:00:00', 'NI SERVICIO MEDICO', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI GERENCIA DE RECURSOS HUMANOS', 41, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (87, 'Jornada de vacunación Influenza', 'Prevenir enfermedades inmunoprevenibles en los colaboradores, protegiendo su salud individual y colectiva, reducir el riesgo de brotes dentro del entorno laboral y garantizar la continuidad operativa de la empresa', NULL, '2026-01-22 17:41:47', 'NI', 'Operativo', 'Activo', 0, 0, '2026-05-03 00:00:00', '2026-06-19 00:00:00', 'NI SERVICIO MEDICO', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI GERENCIA DE RECURSOS HUMANOS', 41, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (88, 'Compra de gift card/Regalo navideño', 'Gestionar la compra de gift cards para su entrega como regalo navideño a todos los colaboradores de la empresa, asegurando un proceso organizado, eficiente y dentro del presupuesto asignado.', NULL, '2026-01-22 19:34:04', 'NI', 'Operativo', 'Activo', 0, 0, '2026-01-22 00:00:00', '2026-02-12 00:00:00', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 30, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (89, 'Gestión de compras - Exámenes Preempleo ', '', NULL, '2026-01-23 14:24:51', 'NI', 'Operativo', 'Activo', 0, 0, '2026-01-23 00:00:00', '2026-02-20 00:00:00', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI GERENCIA DE RECURSOS HUMANOS', 38, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (90, 'Socialización Estratégica de Política de Evaluación de Desempeño y Cultura de Retroalimentación', 'Socialización Estratégica de Política de Evaluación de Desempeño y Cultura de Retroalimentación', NULL, '2026-01-23 16:38:14', 'NI', 'Operativo', 'Activo', 0, 0, '2026-01-12 00:00:00', '2026-01-14 00:00:00', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', 29, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (91, 'Pago mensual de servicios limpieza San Juan del Sur', 'Gestionar y asegurar el pago mensual, oportuno y correcto, del servicio de limpieza contratado para la sede de San Juan del Sur, garantizando la continuidad del servicio y el cumplimiento de los compromisos establecidos con el proveedor.', NULL, '2026-01-23 16:57:06', 'NI', 'Operativo', 'Activo', 0, 0, '2026-01-22 00:00:00', '2026-02-08 00:00:00', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 30, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (92, 'Proyecto Sigho Fase I - Estabilización', 'Asegurar el correcto funcionamiento de los módulos implementados.', NULL, '2026-01-23 22:31:28', 'NI', 'Operativo', 'Activo', 0, 0, '2025-12-30 00:00:00', '2026-12-28 00:00:00', 'NI COORD. DE SOPORTE A LA OPERACION', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 1, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (93, 'Helpdesk Recursos Humanos', 'Implementar sistema de mesa de ayuda para atención a las solictiudes de los colaboradores.', NULL, '2026-01-23 22:42:45', 'NI', 'Operativo', 'Activo', 0, 0, '2026-01-24 00:00:00', '2026-02-24 00:00:00', 'NI COORD. DE SOPORTE A LA OPERACION', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 1, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (94, 'Sigho Fase II - Talento | Capacitación', 'Coordinar con las áreas internas de Recursos Humanos los requerimientos relacionados a la implementación regional de dichos módulos.', NULL, '2026-01-23 23:27:50', 'NI', 'Operativo', 'Activo', 0, 0, '2026-02-02 00:00:00', '2026-12-31 00:00:00', 'NI COORD. DE SOPORTE A LA OPERACION', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 1, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (95, 'Mantener % mino de ocupación del 95% de la plantilla ', 'Mantener un nivel mínimo del 95% de ocupación de la plantilla activa, mediante la implementación de acciones como reducción de tiempos de cobertura, comunicación con las áreas', NULL, '2026-01-24 00:06:35', 'NI', 'Operativo', 'Activo', 0, 0, '2026-01-23 00:00:00', '2026-12-31 00:00:00', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 34, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (96, 'Día de la mujer', '- Actualizar BD Nómina
- Búsqueda de opciones acorde a presupuesto
- Selección y cotización
- Grabar SOLPED
- Validación Mesa de Control
- En compras
- Cuadro de cumplimiento
- Adjudicación de pedido y coordinación de entrega
- Recepción de artículos
- Definición de planificación logística
- Ejecución logística
- Entregas
- Informe de cierre
', NULL, '2026-01-24 00:30:55', 'NI', 'Operativo', 'Activo', 0, 0, '2026-03-09 00:00:00', '2026-03-12 00:00:00', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', 28, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (97, 'Clima Laboral - Socialización Estratégica de Resultados de Clima Laboral', 'Se realizará presentación de resultados de Clima Laboral por Gerencia.', NULL, '2026-01-24 00:33:36', 'NI', 'Operativo', 'Activo', 0, 0, '2026-02-01 00:00:00', '2026-03-29 00:00:00', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', 26, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (98, 'Clima Laboral - Planes de Acción de Clima Laboral', 'Se realizará socialización de planes de acción de clima laboral, y se dará seguimiento para la entrega de los planes por Gerencia.', NULL, '2026-01-24 00:35:27', 'NI', 'Operativo', 'Activo', 0, 0, '2026-02-08 00:00:00', '2026-03-30 00:00:00', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', 26, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (99, 'Clima Laboral - Formación y acompañamiento a líderes (Áreas Críticas)', 'Se realizará un plan formativo para los líderes con indicadores bajos en clima laboral.', NULL, '2026-01-24 00:36:58', 'NI', 'Operativo', 'Activo', 0, 0, '2026-04-30 00:00:00', '2026-10-30 00:00:00', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', 26, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (100, 'Clima Laboral - Reconocimiento y Refuerzo Positivo (Mejores Indicadores)', 'Se realizará diseño y ejecución de actividad de reconocimiento y refuerzo positivo para líderes con mejores indicadores, con el objetivo de motivar y obtener mejores prácticas de las mejores áreas.', NULL, '2026-01-24 00:39:28', 'NI', 'Operativo', 'Activo', 0, 0, '2026-04-30 00:00:00', '2026-10-29 00:00:00', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', 26, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (101, 'Transformación de Desempeño - Socialización Estratégica de Política de Evaluación de Desempeño y Cultura de Retroalimentación', 'Se realizará socialización de Política de Evaluación del Desempeño con los líderes evaluadores, para reforzar la cultura de retroalimentación.', NULL, '2026-01-24 00:40:16', 'NI', 'Operativo', 'Activo', 0, 0, '2026-01-09 00:00:00', '2026-01-13 00:00:00', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', 26, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (102, 'Transformación de Desempeño - Planes de Mejora Individual (Colaboradores con Bajo Desempeño)', 'Se realizará presentación del formato de plane de mejora individual y los criterios para realizarlo. Adicional se brindará seguimiento para garantizar la entrega de los planes debidamente firmados.', NULL, '2026-01-24 00:44:11', 'NI', 'Operativo', 'Activo', 0, 0, '2026-01-11 00:00:00', '2026-02-27 00:00:00', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', 26, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (103, 'Transformación de Desempeño - Formación para el fortalecimiento de competencias a colaboradores con puntuación menor que 8', 'Se realizará diseño y ejecución de un plan formativo para el fortalecimiento de las competencias de los colaboradores con calificación menor a 8.', NULL, '2026-01-24 00:45:56', 'NI', 'Operativo', 'Activo', 0, 0, '2026-04-30 00:00:00', '2026-11-29 00:00:00', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', 26, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (104, 'Transformación de Desempeño - Formación para el fortalecimiento del liderazgo', 'Se realizará diseño y ejecución de un plan formativo para fortalecer el liderazgo a colaboradores con mando con indicadores 2,2 y 3,3 en la escala de desarrollo y desempeño.', NULL, '2026-01-24 00:48:42', 'NI', 'Operativo', 'Activo', 0, 0, '2026-03-31 00:00:00', '2026-10-30 00:00:00', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', 26, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (105, 'Standard de Identidad y Cultura - Diagnóstico y alineación estratégica a traves de los resultados de clima laboral', 'Se realizará un diagnóstico de los resultados de clima laboral relacionados con Cultura y Código de Ética, para alinear la propuesta de cultura organizacional.', NULL, '2026-01-24 00:50:53', 'NI', 'Operativo', 'Activo', 0, 0, '2026-01-30 00:00:00', '2026-02-26 00:00:00', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', 26, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (106, 'Standard de Identidad y Cultura - Actualización e implementación del curso de Imagen Corporativa', 'Se realizará actualización del plan formativo de Imagen Corporativa alineado cultura organizacional.', NULL, '2026-01-24 00:52:10', 'NI', 'Operativo', 'Activo', 0, 0, '2026-01-30 00:00:00', '2026-11-28 00:00:00', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', 26, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (107, 'Standard de Identidad y Cultura - Campaña de Cultura Organizacional', 'Lanzamiento de Campaña para reforzar la Cultura Organizacional.', NULL, '2026-01-24 00:52:56', 'NI', 'Operativo', 'Activo', 0, 0, '2026-01-18 00:00:00', '2026-12-30 00:00:00', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', 26, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (108, 'Standard de Identidad y Cultura - Socialización con lideres sobre su rol como embajadores d', 'Se realizará socialización con líderes de toda la compañía para presentar el rol de cada uno como embajadores de la cultura e imagen corporativa.', NULL, '2026-01-24 00:54:15', 'NI', 'Operativo', 'Activo', 0, 0, '2026-02-28 00:00:00', '2026-03-30 00:00:00', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', 26, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (109, 'Gestión de Kick Off para la Gerencia Técnica', 'Se realizará gestión de apoyo logístico para el evento de Kick Off de la Gerencia Técnica, a solicitud del Ing. Mario Hurtado. Adicional se presentará socialización de cultura organizacional y el rol de los líderes como embajadores de imagen y cultura.', NULL, '2026-01-24 00:57:29', 'NI', 'Operativo', 'Activo', 0, 0, '2026-01-21 00:00:00', '2026-02-16 00:00:00', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', 26, NULL, 'Media', NULL);
INSERT INTO [p_Proyectos] ([idProyecto], [nombre], [descripcion], [idNodoDuenio], [fechaCreacion], [pais], [tipo], [estado], [requiereAprobacion], [enllavado], [fechaInicio], [fechaFin], [area], [subgerencia], [gerencia], [idCreador], [idResponsable], [prioridad], [fechaActualizacion]) VALUES (110, ' Formación Especializante - Programa de mandos medios', 'Programa de mandos medios (personal con mando)
Se procederá con el listado, para evaluar la cantidad de grupos que podremos ejecutar en simultáneo ', NULL, '2026-01-24 01:26:55', 'NI', 'Operativo', 'Activo', 0, 0, '2026-02-03 00:00:00', '2026-11-30 00:00:00', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', 12, NULL, 'Media', NULL);
SET IDENTITY_INSERT [p_Proyectos] OFF;

-- Table: p_Roles
SET IDENTITY_INSERT [p_Roles] ON;
INSERT INTO [p_Roles] ([idRol], [nombre], [descripcion], [esSistema], [reglas], [defaultMenu], [fechaActualizacion]) VALUES (1, 'Admin', 'Acceso total al sistema', NULL, NULL, NULL, NULL);
SET IDENTITY_INSERT [p_Roles] OFF;

-- Table: p_SeguridadPerfiles

-- Table: p_SlowQueries
SET IDENTITY_INSERT [p_SlowQueries] ON;
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (1, '2026-01-21 19:05:03', 1768, '
        SELECT * FROM p_Checkins 
        WHERE idUsuario = @idUsuario 
          AND CAST(fecha AS DATE) = CAST(@fecha AS DATE)
    ', '{"idUsuario":3,"fecha":"2026-01-21T00:00:00.000Z"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (2, '2026-01-21 19:48:17', 1615, '
        SELECT 
            COUNT(*) as total,
            SUM(CASE WHEN estado = ''Hecha'' THEN 1 ELSE 0 END) as hechas,
            SUM(CASE WHEN estado IN (''Pendiente'', ''EnCurso'') THEN 1 ELSE 0 END) as pendientes,
            SUM(CASE WHEN estado = ''Bloqueada'' THEN 1 ELSE 0 END) as bloqueadas,
            AVG(CAST(COALESCE(porcentaje, 0) AS FLOAT)) as promedioAvance
        FROM p_Tareas t
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE t.idCreador = @uid OR ta.idUsuario = @uid
    ', '{"uid":1}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (3, '2026-01-21 19:48:34', 1269, '
            SELECT DISTINCT 
                tercer_nivel as gerencia,
                segundo_nivel as subgerencia,
                primer_nivel as area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (4, '2026-01-21 20:23:53', 5101, '
            SELECT DISTINCT 
                tercer_nivel as ogerencia,
                segundo_nivel as subgerencia,
                primer_nivel as area
            FROM p_Usuarios
            WHERE activo = 1
              AND tercer_nivel IS NOT NULL 
              AND tercer_nivel != ''''
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (5, '2026-01-21 20:30:25', 4192, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS ogerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
              AND ogerencia IS NOT NULL AND LTRIM(RTRIM(ogerencia)) <> ''''
              AND subgerencia IS NOT NULL AND LTRIM(RTRIM(subgerencia)) <> ''''
              AND area IS NOT NULL AND LTRIM(RTRIM(area)) <> ''''
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (6, '2026-01-21 21:46:40', 1125, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS ogerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
              AND ogerencia IS NOT NULL AND LTRIM(RTRIM(ogerencia)) <> ''''
              AND subgerencia IS NOT NULL AND LTRIM(RTRIM(subgerencia)) <> ''''
              AND area IS NOT NULL AND LTRIM(RTRIM(area)) <> ''''
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (7, '2026-01-21 22:27:47', 1102, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (8, '2026-01-21 23:30:25', 14071, 'EXEC sp_Visibilidad_ObtenerCarnets', '{"carnetSolicitante":"300042"}', 'SP');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (9, '2026-01-21 23:30:25', 19268, 'EXEC sp_Visibilidad_ObtenerCarnets', '{"carnetSolicitante":"300042"}', 'SP');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (10, '2026-01-21 23:33:58', 1206, 'SELECT * FROM p_Usuarios WHERE correo = @correo', '{"correo":"juan.ortuno@claro.com.ni"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (11, '2026-01-21 23:49:28', 1305, 'SELECT carnet FROM p_Usuarios WHERE idUsuario = @id', '{"id":1}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (12, '2026-01-21 23:50:58', 1100, 'SELECT * FROM p_Usuarios WHERE correo = @correo', '{"correo":"juan.ortuno@claro.com.ni"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (13, '2026-01-22 00:00:28', 1947, 'SELECT carnet FROM p_Usuarios WHERE idUsuario = @id', '{"id":1}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (14, '2026-01-22 00:01:26', 1132, '
        SELECT 
            t.idTarea, 
            t.nombre as titulo, 
            t.descripcion, 
            t.estado, 
            t.prioridad, 
            t.fechaInicioPlanificada, 
            t.fechaObjetivo, 
            t.porcentaje as progreso, 
            t.orden,
            t.comportamiento, t.idGrupo, t.numeroParte,
            p.nombre as proyectoNombre,
            ta.idUsuario as asignadoId
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario IN (20,26,40,31,16,12,11,24,21,39,32,23,10,7,35,25,3,1,37,33,17,13,14,38,8,36,4,15,28,6,5,18,22,19,27,30,29,9,2,34)
          AND t.estado NOT IN (''Eliminada'', ''Archivada'')
    ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (15, '2026-01-22 00:01:26', 1775, '
        SELECT u.*, r.nombre as rolNombre 
        FROM p_Usuarios u 
        LEFT JOIN p_Roles r ON u.idRol = r.idRol
        WHERE u.idUsuario IN (20,26,40,31,16,12,11,24,21,39,32,23,10,7,35,25,3,1,37,33,17,13,14,38,8,36,4,15,28,6,5,18,22,19,27,30,29,9,2,34) AND u.activo = 1
    ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (16, '2026-01-22 02:57:06', 1140, 'SELECT * FROM p_Proyectos ORDER BY fechaCreacion DESC', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (17, '2026-01-22 03:40:13', 1388, 'SELECT * FROM p_Proyectos ORDER BY fechaCreacion DESC', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (18, '2026-01-22 03:47:28', 1272, 'SELECT * FROM p_Usuarios WHERE correo = @correo', '{"correo":"candida.sanchez@claro.com.ni"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (19, '2026-01-22 04:06:41', 1114, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%gu%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (20, '2026-01-22 04:06:41', 1093, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%gus%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (21, '2026-01-22 04:06:41', 1018, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%gust%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (22, '2026-01-22 04:06:41', 1083, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%gustavo%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (23, '2026-01-22 04:06:41', 1136, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%gustav%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (24, '2026-01-22 04:11:27', 1253, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS ogerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
              AND ogerencia IS NOT NULL AND LTRIM(RTRIM(ogerencia)) <> ''''
              AND subgerencia IS NOT NULL AND LTRIM(RTRIM(subgerencia)) <> ''''
              AND area IS NOT NULL AND LTRIM(RTRIM(area)) <> ''''
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (25, '2026-01-22 04:15:06', 1101, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS ogerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
              AND ogerencia IS NOT NULL AND LTRIM(RTRIM(ogerencia)) <> ''''
              AND subgerencia IS NOT NULL AND LTRIM(RTRIM(subgerencia)) <> ''''
              AND area IS NOT NULL AND LTRIM(RTRIM(area)) <> ''''
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (26, '2026-01-22 04:18:30', 1082, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS ogerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
              AND ogerencia IS NOT NULL AND LTRIM(RTRIM(ogerencia)) <> ''''
              AND subgerencia IS NOT NULL AND LTRIM(RTRIM(subgerencia)) <> ''''
              AND area IS NOT NULL AND LTRIM(RTRIM(area)) <> ''''
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (27, '2026-01-22 04:37:41', 1049, '
        SELECT * FROM p_Checkins 
        WHERE idUsuario = @idUsuario 
          AND CAST(fecha AS DATE) = CAST(@fecha AS DATE)
    ', '{"idUsuario":23,"fecha":"2026-01-22T00:00:00.000Z"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (28, '2026-01-22 04:47:58', 1145, '
        SELECT DISTINCT
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado as fechaHecha,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre,
            -- Fecha en que la tarea fue trabajada (del registro de check-in)
            CAST(c.fecha AS DATE) as fechaTrabajada,
            ct.tipo as tipoCheckin,
            -- Columna calculada para ordenamiento (Required by SQL Server due to DISTINCT)
            COALESCE(c.fecha, t.fechaCreacion) as fechaOrden
        FROM p_Tareas t
        JOIN p_Usuarios u_creador ON t.idCreador = u_creador.idUsuario
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        LEFT JOIN p_Usuarios u_asignado ON ta.idUsuario = u_asignado.idUsuario
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        -- JOIN con check-ins para obtener las fechas en que se trabajó la tarea
        LEFT JOIN p_CheckinTareas ct ON t.idTarea = ct.idTarea
        LEFT JOIN p_Checkins c ON ct.idCheckin = c.idCheckin
        WHERE (u_creador.carnet = @carnet OR u_asignado.carnet = @carnet)
          AND (
              c.fecha >= DATEADD(day, -@dias, GETDATE())
              OR t.fechaCreacion >= DATEADD(day, -@dias, GETDATE())
              OR t.fechaCompletado >= DATEADD(day, -@dias, GETDATE())
          )
        ORDER BY fechaOrden DESC
    ', '{"carnet":"500708","dias":30}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (29, '2026-01-22 05:11:44', 25275, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":23}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (30, '2026-01-22 05:11:54', 5992, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":41}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (31, '2026-01-22 05:11:54', 15784, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":23}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (32, '2026-01-22 05:12:20', 25280, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":41}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (33, '2026-01-22 05:12:34', 25148, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":41}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (34, '2026-01-22 05:12:44', 25146, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":41}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (35, '2026-01-22 05:13:06', 25181, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":41}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (36, '2026-01-22 05:14:27', 25426, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":41}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (37, '2026-01-22 05:14:29', 25627, 'SELECT * FROM p_Proyectos ORDER BY fechaCreacion DESC', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (38, '2026-01-22 05:14:29', 25600, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS ogerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
              AND ogerencia IS NOT NULL AND LTRIM(RTRIM(ogerencia)) <> ''''
              AND subgerencia IS NOT NULL AND LTRIM(RTRIM(subgerencia)) <> ''''
              AND area IS NOT NULL AND LTRIM(RTRIM(area)) <> ''''
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (39, '2026-01-22 05:14:29', 25306, 'EXEC sp_Visibilidad_ObtenerCarnets', '{"carnetSolicitante":"777777"}', 'SP');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (40, '2026-01-22 05:14:47', 25397, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":41}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (41, '2026-01-22 05:14:49', 25559, 'SELECT * FROM p_Proyectos ORDER BY fechaCreacion DESC', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (42, '2026-01-22 05:14:53', 25201, 'EXEC sp_Visibilidad_ObtenerCarnets', '{"carnetSolicitante":"777777"}', 'SP');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (43, '2026-01-22 05:14:54', 25251, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS ogerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
              AND ogerencia IS NOT NULL AND LTRIM(RTRIM(ogerencia)) <> ''''
              AND subgerencia IS NOT NULL AND LTRIM(RTRIM(subgerencia)) <> ''''
              AND area IS NOT NULL AND LTRIM(RTRIM(area)) <> ''''
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (44, '2026-01-22 05:14:54', 25242, '
        SELECT u.idUsuario, u.carnet, u.nombreCompleto, u.correo, u.cargo, u.departamento,
               u.orgDepartamento, u.orgGerencia, u.idOrg, u.jefeCarnet, u.jefeNombre, u.jefeCorreo, u.activo,
               u.gerencia, u.subgerencia, u.idRol, u.rolGlobal,
               r.nombre as rolNombre
        FROM p_Usuarios u
        LEFT JOIN p_Roles r ON u.idRol = r.idRol
        WHERE LTRIM(RTRIM(u.carnet)) IN (@c0)
        ORDER BY u.nombreCompleto
    ', '{"c0":"777777"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (45, '2026-01-22 05:14:57', 25275, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":41}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (46, '2026-01-22 05:14:59', 25186, 'SELECT * FROM p_Proyectos ORDER BY fechaCreacion DESC', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (47, '2026-01-22 05:14:59', 25328, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS ogerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
              AND ogerencia IS NOT NULL AND LTRIM(RTRIM(ogerencia)) <> ''''
              AND subgerencia IS NOT NULL AND LTRIM(RTRIM(subgerencia)) <> ''''
              AND area IS NOT NULL AND LTRIM(RTRIM(area)) <> ''''
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (48, '2026-01-22 05:15:00', 25782, 'EXEC sp_Visibilidad_ObtenerCarnets', '{"carnetSolicitante":"777777"}', 'SP');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (49, '2026-01-22 05:15:18', 25180, '
        SELECT u.idUsuario, u.carnet, u.nombreCompleto, u.correo, u.cargo, u.departamento,
               u.orgDepartamento, u.orgGerencia, u.idOrg, u.jefeCarnet, u.jefeNombre, u.jefeCorreo, u.activo,
               u.gerencia, u.subgerencia, u.idRol, u.rolGlobal,
               r.nombre as rolNombre
        FROM p_Usuarios u
        LEFT JOIN p_Roles r ON u.idRol = r.idRol
        WHERE LTRIM(RTRIM(u.carnet)) IN (@c0)
        ORDER BY u.nombreCompleto
    ', '{"c0":"777777"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (50, '2026-01-22 05:15:20', 25160, 'EXEC sp_Visibilidad_ObtenerCarnets', '{"carnetSolicitante":"777777"}', 'SP');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (51, '2026-01-22 05:15:20', 25180, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (52, '2026-01-22 05:15:22', 25162, 'SELECT * FROM p_Proyectos ORDER BY fechaCreacion DESC', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (53, '2026-01-22 05:15:25', 25168, '
        SELECT u.idUsuario, u.carnet, u.nombreCompleto, u.correo, u.cargo, u.departamento,
               u.orgDepartamento, u.orgGerencia, u.idOrg, u.jefeCarnet, u.jefeNombre, u.jefeCorreo, u.activo,
               u.gerencia, u.subgerencia, u.idRol, u.rolGlobal,
               r.nombre as rolNombre
        FROM p_Usuarios u
        LEFT JOIN p_Roles r ON u.idRol = r.idRol
        WHERE LTRIM(RTRIM(u.carnet)) IN (@c0)
        ORDER BY u.nombreCompleto
    ', '{"c0":"777777"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (54, '2026-01-22 05:15:25', 25284, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":23}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (55, '2026-01-22 05:15:31', 25263, 'EXEC sp_Visibilidad_ObtenerCarnets', '{"carnetSolicitante":"500708"}', 'SP');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (56, '2026-01-22 05:15:34', 25143, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":23}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (57, '2026-01-22 05:15:38', 17726, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":23}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (58, '2026-01-22 05:15:38', 12949, 'EXEC sp_Visibilidad_ObtenerCarnets', '{"carnetSolicitante":"500708"}', 'SP');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (59, '2026-01-22 05:15:38', 23735, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (60, '2026-01-22 05:15:38', 18755, '
        SELECT u.idUsuario, u.carnet, u.nombreCompleto, u.correo, u.cargo, u.departamento,
               u.orgDepartamento, u.orgGerencia, u.idOrg, u.jefeCarnet, u.jefeNombre, u.jefeCorreo, u.activo,
               u.gerencia, u.subgerencia, u.idRol, u.rolGlobal,
               r.nombre as rolNombre
        FROM p_Usuarios u
        LEFT JOIN p_Roles r ON u.idRol = r.idRol
        WHERE LTRIM(RTRIM(u.carnet)) IN (@c0)
        ORDER BY u.nombreCompleto
    ', '{"c0":"777777"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (61, '2026-01-22 05:15:38', 12106, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (62, '2026-01-22 05:15:38', 7671, '
        SELECT u.idUsuario, u.carnet, u.nombreCompleto, u.correo, u.cargo, u.departamento,
               u.orgDepartamento, u.orgGerencia, u.idOrg, u.jefeCarnet, u.jefeNombre, u.jefeCorreo, u.activo,
               u.gerencia, u.subgerencia, u.idRol, u.rolGlobal,
               r.nombre as rolNombre
        FROM p_Usuarios u
        LEFT JOIN p_Roles r ON u.idRol = r.idRol
        WHERE LTRIM(RTRIM(u.carnet)) IN (@c0,@c1,@c2,@c3,@c4,@c5,@c6,@c7,@c8,@c9,@c10,@c11,@c12,@c13,@c14,@c15,@c16,@c17,@c18,@c19,@c20,@c21,@c22,@c23,@c24,@c25,@c26,@c27,@c28,@c29,@c30,@c31,@c32,@c33,@c34,@c35,@c36,@c37,@c38,@c39,@c40)
        ORDER BY u.nombreCompleto
    ', '{"c0":"1005898","c1":"1006062","c2":"1008269","c3":"1008937","c4":"1009828","c5":"1010426","c6":"1010683","c7":"1011898","c8":"102346","c9":"222627","c10":"228710","c11":"229354","c12":"233269","c13":"245540","c14":"249859","c15":"256412","c16":"300034","c17":"300042","c18":"400103","c19":"400543","c20":"400850","c21":"401391","c22":"401601","c23":"401633","c24":"401992","c25":"402035","c26":"402105","c27":"402178","c28":"402262","c29":"402336","c30":"402408","c31":"500269","c32":"500313","c33":"500322","c34":"500358","c35":"500428","c36":"500708","c37":"666","c38":"706","c39":"772","c40":"777777"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (63, '2026-01-22 05:16:04', 25495, '
        SELECT u.idUsuario, u.carnet, u.nombreCompleto, u.correo, u.cargo, u.departamento,
               u.orgDepartamento, u.orgGerencia, u.idOrg, u.jefeCarnet, u.jefeNombre, u.jefeCorreo, u.activo,
               u.gerencia, u.subgerencia, u.idRol, u.rolGlobal,
               r.nombre as rolNombre
        FROM p_Usuarios u
        LEFT JOIN p_Roles r ON u.idRol = r.idRol
        WHERE LTRIM(RTRIM(u.carnet)) IN (@c0,@c1,@c2,@c3,@c4,@c5,@c6,@c7,@c8,@c9,@c10,@c11,@c12,@c13,@c14,@c15,@c16,@c17,@c18,@c19,@c20,@c21,@c22,@c23,@c24,@c25,@c26,@c27,@c28,@c29,@c30,@c31,@c32,@c33,@c34,@c35,@c36,@c37,@c38,@c39,@c40)
        ORDER BY u.nombreCompleto
    ', '{"c0":"1005898","c1":"1006062","c2":"1008269","c3":"1008937","c4":"1009828","c5":"1010426","c6":"1010683","c7":"1011898","c8":"102346","c9":"222627","c10":"228710","c11":"229354","c12":"233269","c13":"245540","c14":"249859","c15":"256412","c16":"300034","c17":"300042","c18":"400103","c19":"400543","c20":"400850","c21":"401391","c22":"401601","c23":"401633","c24":"401992","c25":"402035","c26":"402105","c27":"402178","c28":"402262","c29":"402336","c30":"402408","c31":"500269","c32":"500313","c33":"500322","c34":"500358","c35":"500428","c36":"500708","c37":"666","c38":"706","c39":"772","c40":"777777"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (64, '2026-01-22 05:16:04', 25227, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":23}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (65, '2026-01-22 05:16:17', 25156, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":23}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (66, '2026-01-22 05:16:35', 25235, 'SELECT * FROM p_Proyectos ORDER BY fechaCreacion DESC', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (67, '2026-01-22 05:16:35', 25337, 'EXEC sp_Visibilidad_ObtenerCarnets', '{"carnetSolicitante":"777777"}', 'SP');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (68, '2026-01-22 05:16:36', 25266, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS ogerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
              AND ogerencia IS NOT NULL AND LTRIM(RTRIM(ogerencia)) <> ''''
              AND subgerencia IS NOT NULL AND LTRIM(RTRIM(subgerencia)) <> ''''
              AND area IS NOT NULL AND LTRIM(RTRIM(area)) <> ''''
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (69, '2026-01-22 05:16:42', 25151, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":41}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (70, '2026-01-22 05:16:49', 13575, 'SELECT * FROM p_Proyectos ORDER BY fechaCreacion DESC', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (71, '2026-01-22 05:16:49', 13912, 'SELECT * FROM p_Proyectos ORDER BY fechaCreacion DESC', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (72, '2026-01-22 05:16:49', 7262, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS ogerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
              AND ogerencia IS NOT NULL AND LTRIM(RTRIM(ogerencia)) <> ''''
              AND subgerencia IS NOT NULL AND LTRIM(RTRIM(subgerencia)) <> ''''
              AND area IS NOT NULL AND LTRIM(RTRIM(area)) <> ''''
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (73, '2026-01-22 05:16:49', 7437, 'EXEC sp_Visibilidad_ObtenerCarnets', '{"carnetSolicitante":"777777"}', 'SP');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (74, '2026-01-22 05:16:49', 23722, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":41}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (75, '2026-01-22 05:16:49', 13664, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS ogerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
              AND ogerencia IS NOT NULL AND LTRIM(RTRIM(ogerencia)) <> ''''
              AND subgerencia IS NOT NULL AND LTRIM(RTRIM(subgerencia)) <> ''''
              AND area IS NOT NULL AND LTRIM(RTRIM(area)) <> ''''
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (76, '2026-01-22 05:16:49', 7262, 'SELECT * FROM p_Proyectos ORDER BY fechaCreacion DESC', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (77, '2026-01-22 05:16:49', 8658, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":41}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (78, '2026-01-22 05:16:49', 21462, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (79, '2026-01-22 05:16:49', 13435, 'EXEC sp_Visibilidad_ObtenerCarnets', '{"carnetSolicitante":"777777"}', 'SP');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (80, '2026-01-22 05:16:49', 13655, '
        SELECT u.idUsuario, u.carnet, u.nombreCompleto, u.correo, u.cargo, u.departamento,
               u.orgDepartamento, u.orgGerencia, u.idOrg, u.jefeCarnet, u.jefeNombre, u.jefeCorreo, u.activo,
               u.gerencia, u.subgerencia, u.idRol, u.rolGlobal,
               r.nombre as rolNombre
        FROM p_Usuarios u
        LEFT JOIN p_Roles r ON u.idRol = r.idRol
        WHERE LTRIM(RTRIM(u.carnet)) IN (@c0)
        ORDER BY u.nombreCompleto
    ', '{"c0":"777777"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (81, '2026-01-22 05:26:00', 1096, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (82, '2026-01-22 05:27:02', 1087, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":34,"carnet":"400103"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (83, '2026-01-22 07:11:01', 25032, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (84, '2026-01-22 07:12:11', 25016, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (85, '2026-01-22 07:35:07', 10330, '
            SELECT
                LTRIM(RTRIM(ISNULL(ogerencia, '''')))      AS gerencia,
                LTRIM(RTRIM(ISNULL(subgerencia, '''')))    AS subgerencia,
                LTRIM(RTRIM(ISNULL(primer_nivel, '''')))   AS area
            FROM dbo.p_Usuarios
            WHERE activo = 1
            GROUP BY
                LTRIM(RTRIM(ISNULL(ogerencia, ''''))),
                LTRIM(RTRIM(ISNULL(subgerencia, ''''))),
                LTRIM(RTRIM(ISNULL(primer_nivel, '''')))
            ORDER BY 1,2,3;
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (86, '2026-01-22 13:37:07', 1119, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":1}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (87, '2026-01-22 13:38:25', 1097, 'SELECT carnet FROM p_Usuarios WHERE idUsuario = @id', '{"id":20}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (88, '2026-01-22 13:41:53', 1002, '
        SELECT 
            t.*, 
            p.tipo as proyectoTipo, 
            p.requiereAprobacion as proyectoRequiereAprobacion
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        WHERE t.idTarea = @idTarea
    ', '{"idTarea":3}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (89, '2026-01-22 13:48:25', 1186, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":23}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (90, '2026-01-22 13:56:16', 1143, '
        SELECT * FROM p_Checkins 
        WHERE idUsuario = @idUsuario 
          AND CAST(fecha AS DATE) = CAST(@fecha AS DATE)
    ', '{"idUsuario":23,"fecha":"2026-01-22T00:00:00.000Z"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (91, '2026-01-22 14:09:13', 1187, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":23}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (92, '2026-01-22 14:13:23', 1072, '
        SELECT * FROM p_Checkins 
        WHERE idUsuario = @idUsuario 
          AND CAST(fecha AS DATE) = CAST(@fecha AS DATE)
    ', '{"idUsuario":23,"fecha":"2026-01-22T00:00:00.000Z"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (93, '2026-01-22 14:13:24', 1609, '
        SELECT ct.idTarea, ct.tipo, t.nombre as titulo, t.estado
        FROM p_CheckinTareas ct
        JOIN p_Tareas t ON ct.idTarea = t.idTarea
        WHERE ct.idCheckin = @idCheckin
    ', '{"idCheckin":6}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (94, '2026-01-22 15:30:25', 22956, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":20,"carnet":"402178"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (95, '2026-01-22 15:30:25', 9790, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":41}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (96, '2026-01-22 15:56:53', 1148, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":23}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (97, '2026-01-22 16:30:25', 24868, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":34}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (98, '2026-01-22 16:30:25', 6492, '
        SELECT a.*, u.nombre as nombreUsuario, u.correo as correoUsuario
        FROM p_Auditoria a
        LEFT JOIN p_Usuarios u ON a.idUsuario = u.idUsuario
        WHERE 1=1
        ORDER BY a.fecha DESC
        OFFSET 0 ROWS FETCH NEXT 50 ROWS ONLY
    ', '{}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (99, '2026-01-22 16:30:25', 19716, 'EXEC sp_Visibilidad_ObtenerCarnets', '{"carnetSolicitante":"1006062"}', 'SP');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (100, '2026-01-22 16:30:25', 6438, 'EXEC sp_Visibilidad_ObtenerCarnets', '{"carnetSolicitante":"256412"}', 'SP');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (101, '2026-01-22 16:30:25', 19705, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":40,"carnet":"1006062"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (102, '2026-01-22 16:30:25', 9839, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":7}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (103, '2026-01-22 16:30:25', 10687, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":34}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (104, '2026-01-22 16:30:25', 24833, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":34,"carnet":"400103"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (105, '2026-01-22 16:30:25', 19770, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS ogerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
              AND ogerencia IS NOT NULL AND LTRIM(RTRIM(ogerencia)) <> ''''
              AND subgerencia IS NOT NULL AND LTRIM(RTRIM(subgerencia)) <> ''''
              AND area IS NOT NULL AND LTRIM(RTRIM(area)) <> ''''
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (106, '2026-01-22 16:56:07', 11259, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS ogerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
              AND ogerencia IS NOT NULL AND LTRIM(RTRIM(ogerencia)) <> ''''
              AND subgerencia IS NOT NULL AND LTRIM(RTRIM(subgerencia)) <> ''''
              AND area IS NOT NULL AND LTRIM(RTRIM(area)) <> ''''
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (107, '2026-01-22 16:56:07', 10417, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":20,"carnet":"402178"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (108, '2026-01-22 16:56:07', 2437, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%40001%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (109, '2026-01-22 16:56:07', 2048, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%400010%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (110, '2026-01-22 16:56:07', 1091, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%4000103%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (111, '2026-01-22 16:56:07', 10450, 'EXEC sp_Visibilidad_ObtenerCarnets', '{"carnetSolicitante":"402178"}', 'SP');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (112, '2026-01-22 16:56:53', 3248, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (113, '2026-01-22 16:56:53', 6504, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":34,"carnet":"400103"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (114, '2026-01-22 16:56:53', 6918, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (115, '2026-01-22 16:56:53', 11052, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":34}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (116, '2026-01-22 16:56:53', 1057, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":7,"carnet":"1008269"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (117, '2026-01-22 16:56:53', 10994, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":34,"carnet":"400103"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (118, '2026-01-22 16:56:53', 2743, '
        SELECT * FROM p_Checkins 
        WHERE idUsuario = @idUsuario 
          AND CAST(fecha AS DATE) = CAST(@fecha AS DATE)
    ', '{"idUsuario":7,"fecha":"2026-01-22T00:00:00.000Z"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (119, '2026-01-22 16:57:06', 8130, 'EXEC sp_Visibilidad_ObtenerCarnets', '{"carnetSolicitante":"400103"}', 'SP');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (120, '2026-01-22 16:57:06', 8124, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":34,"carnet":"400103"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (121, '2026-01-22 16:57:06', 1218, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre,
            ta.idUsuario as idResponsable,
            u.nombreCompleto as responsableNombre,
            u.carnet as responsableCarnet
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea AND ta.tipo = ''Responsable''
        LEFT JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE t.idProyecto = @pid
        ORDER BY t.orden ASC, t.fechaObjetivo ASC
    ', '{"pid":61}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (122, '2026-01-22 16:58:01', 7833, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%ju%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (123, '2026-01-22 16:58:01', 5590, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%juan%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (124, '2026-01-22 16:58:01', 7702, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%jua%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (125, '2026-01-22 16:58:22', 25151, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%juan %","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (126, '2026-01-22 16:58:22', 25025, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%juan c%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (127, '2026-01-22 16:58:26', 25049, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%juan ca%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (128, '2026-01-22 16:58:26', 25012, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%40%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (129, '2026-01-22 16:58:26', 4151, '
        UPDATE p_Tareas 
        SET nombre = @nombre, descripcion = @descripcion, estado = @estado, prioridad = @prioridad, porcentaje = @porcentaje, fechaObjetivo = @fechaObjetivo, fechaInicioPlanificada = @fechaInicioPlanificada 
        WHERE idTarea = @idTarea
    ', '{"idTarea":112,"nombre":"1. Validar que necesidades de formación nos muestra el DNC","descripcion":"Realizar clasificación de los cursos solicitados a través del DNC y de esta manera definir qué cursos impartirá cada facilitador","estado":"EnCurso","prioridad":"Alta","porcentaje":0,"fechaObjetivo":"2026-01-30T00:00:00.000Z","fechaInicioPlanificada":"2026-01-30T00:00:00.000Z"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (130, '2026-01-22 16:58:26', 2204, '
        SELECT * FROM p_Checkins 
        WHERE idUsuario = @idUsuario 
          AND CAST(fecha AS DATE) = CAST(@fecha AS DATE)
    ', '{"idUsuario":20,"fecha":"2026-01-22T00:00:00.000Z"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (131, '2026-01-22 16:58:26', 25013, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%400%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (132, '2026-01-22 16:58:26', 25049, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%juan carl%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (133, '2026-01-22 16:58:26', 25157, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%juan car%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (134, '2026-01-22 16:58:26', 25159, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%juan carlo%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (135, '2026-01-22 16:58:27', 25060, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%4001%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (136, '2026-01-22 16:58:27', 25024, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%40010%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (137, '2026-01-22 16:58:27', 25027, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%400103%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (138, '2026-01-22 16:58:27', 25022, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (139, '2026-01-22 16:58:46', 25019, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (140, '2026-01-22 16:58:51', 30913, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (141, '2026-01-22 16:58:55', 1364, '
        SELECT * FROM p_Checkins 
        WHERE idUsuario = @idUsuario 
          AND CAST(fecha AS DATE) = CAST(@fecha AS DATE)
    ', '{"idUsuario":20,"fecha":"2026-01-22T00:00:00.000Z"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (142, '2026-01-22 16:58:55', 3141, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":12,"carnet":"400543"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (143, '2026-01-22 16:58:55', 7933, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":16,"carnet":"1008937"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (144, '2026-01-22 16:58:55', 7914, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":7,"carnet":"1008269"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (145, '2026-01-22 16:58:55', 7913, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (146, '2026-01-22 16:58:55', 27412, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":30}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (147, '2026-01-22 16:58:55', 2855, '
        SELECT * FROM p_Checkins 
        WHERE idUsuario = @idUsuario 
          AND CAST(fecha AS DATE) = CAST(@fecha AS DATE)
    ', '{"idUsuario":7,"fecha":"2026-01-22T00:00:00.000Z"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (148, '2026-01-22 16:58:55', 58627, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":30}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (149, '2026-01-22 16:58:55', 52141, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (150, '2026-01-22 16:58:55', 8650, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (151, '2026-01-22 16:58:55', 59717, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":7,"carnet":"1008269"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (152, '2026-01-22 16:58:55', 24491, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (153, '2026-01-22 16:58:55', 33309, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":20,"carnet":"402178"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (154, '2026-01-22 16:58:55', 59666, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":20}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (155, '2026-01-22 16:58:55', 8786, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (156, '2026-01-22 16:58:55', 3143, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":20,"carnet":"402178"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (157, '2026-01-22 16:58:55', 1685, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%Ju%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (158, '2026-01-22 16:58:55', 2077, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":20}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (159, '2026-01-22 16:58:55', 1524, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%Ali %","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (160, '2026-01-22 16:58:55', 16137, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%al%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (161, '2026-01-22 16:58:55', 10731, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%Ali%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (162, '2026-01-22 16:58:55', 10994, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%Al%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (163, '2026-01-22 16:58:55', 51297, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":7,"carnet":"1008269"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (164, '2026-01-22 16:58:55', 15941, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%ali%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (165, '2026-01-22 16:58:55', 59759, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":7}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (166, '2026-01-22 17:00:09', 22991, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%jil%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (167, '2026-01-22 17:00:09', 21713, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%jilma%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (168, '2026-01-22 17:00:09', 8105, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%ro%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (169, '2026-01-22 17:00:09', 22857, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%jilm%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (170, '2026-01-22 17:00:10', 25143, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":12,"carnet":"400543"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (171, '2026-01-22 17:00:10', 25051, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (172, '2026-01-22 17:00:10', 23184, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%ji%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (173, '2026-01-22 17:00:10', 19942, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%jilma %","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (174, '2026-01-22 17:00:13', 1103, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%jilma zel%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (175, '2026-01-22 17:00:20', 5362, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":12,"carnet":"400543"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (176, '2026-01-22 17:00:20', 5370, 'EXEC sp_Visibilidad_ObtenerCarnets', '{"carnetSolicitante":"400543"}', 'SP');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (177, '2026-01-22 17:00:29', 1004, '
        SELECT TOP (@limite) * FROM p_Usuarios 
        WHERE (LOWER(nombre) LIKE LOWER(@t) OR carnet LIKE @t OR LOWER(correo) LIKE LOWER(@t))
        AND activo = 1
        ORDER BY nombre ASC
    ', '{"t":"%4001%","limite":5}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (178, '2026-01-22 20:40:26', 19594, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":29}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (179, '2026-01-22 20:40:26', 25146, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":29,"carnet":"400850"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (180, '2026-01-22 21:38:44', 25060, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":33,"carnet":"500358"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (181, '2026-01-22 21:38:44', 23858, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (182, '2026-01-22 21:38:46', 8138, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":33}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (183, '2026-01-22 21:38:46', 7068, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":33}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (184, '2026-01-22 21:38:46', 25018, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":33,"carnet":"500358"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (185, '2026-01-22 21:38:46', 1607, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (186, '2026-01-22 21:39:09', 25019, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":33,"carnet":"500358"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (187, '2026-01-22 21:39:09', 23410, '
        SELECT DISTINCT p.* 
        FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        ORDER BY p.fechaCreacion DESC
    ', '{"idUsuario":33}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (188, '2026-01-22 21:39:11', 25030, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":33,"carnet":"500358"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (189, '2026-01-22 21:39:11', 24323, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":33}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (190, '2026-01-22 21:39:24', 25019, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":33,"carnet":"500358"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (191, '2026-01-22 21:39:29', 25020, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":33,"carnet":"500358"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (192, '2026-01-22 21:39:31', 25018, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":33,"carnet":"500358"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (193, '2026-01-22 22:07:33', 25101, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":29,"carnet":"400850"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (194, '2026-01-22 22:12:52', 25054, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":29,"carnet":"400850"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (195, '2026-01-22 22:12:52', 24695, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":29}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (196, '2026-01-22 22:22:59', 25062, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":29,"carnet":"400850"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (197, '2026-01-22 22:22:59', 17987, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":29}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (198, '2026-01-22 22:23:37', 25089, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":29,"carnet":"400850"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (199, '2026-01-22 22:24:50', 21159, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":29}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (200, '2026-01-22 22:24:50', 25133, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":29,"carnet":"400850"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (201, '2026-01-22 22:25:23', 25095, '
        SELECT DISTINCT
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado as fechaHecha,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre,
            -- Fecha en que la tarea fue trabajada (del registro de check-in)
            CAST(c.fecha AS DATE) as fechaTrabajada,
            ct.tipo as tipoCheckin,
            -- Columna calculada para ordenamiento (Required by SQL Server due to DISTINCT)
            COALESCE(c.fecha, t.fechaCreacion) as fechaOrden
        FROM p_Tareas t
        JOIN p_Usuarios u_creador ON t.idCreador = u_creador.idUsuario
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        LEFT JOIN p_Usuarios u_asignado ON ta.idUsuario = u_asignado.idUsuario
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        -- JOIN con check-ins para obtener las fechas en que se trabajó la tarea
        LEFT JOIN p_CheckinTareas ct ON t.idTarea = ct.idTarea
        LEFT JOIN p_Checkins c ON ct.idCheckin = c.idCheckin
        WHERE (u_creador.carnet = @carnet OR u_asignado.carnet = @carnet)
          AND (
              c.fecha >= DATEADD(day, -@dias, GETDATE())
              OR t.fechaCreacion >= DATEADD(day, -@dias, GETDATE())
              OR t.fechaCompletado >= DATEADD(day, -@dias, GETDATE())
          )
        ORDER BY fechaOrden DESC
    ', '{"carnet":"400850","dias":30}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (202, '2026-01-22 22:28:03', 25111, '
        SELECT DISTINCT
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado as fechaHecha,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre,
            -- Fecha en que la tarea fue trabajada (del registro de check-in)
            CAST(c.fecha AS DATE) as fechaTrabajada,
            ct.tipo as tipoCheckin,
            -- Columna calculada para ordenamiento (Required by SQL Server due to DISTINCT)
            COALESCE(c.fecha, t.fechaCreacion) as fechaOrden
        FROM p_Tareas t
        JOIN p_Usuarios u_creador ON t.idCreador = u_creador.idUsuario
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        LEFT JOIN p_Usuarios u_asignado ON ta.idUsuario = u_asignado.idUsuario
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        -- JOIN con check-ins para obtener las fechas en que se trabajó la tarea
        LEFT JOIN p_CheckinTareas ct ON t.idTarea = ct.idTarea
        LEFT JOIN p_Checkins c ON ct.idCheckin = c.idCheckin
        WHERE (u_creador.carnet = @carnet OR u_asignado.carnet = @carnet)
          AND (
              c.fecha >= DATEADD(day, -@dias, GETDATE())
              OR t.fechaCreacion >= DATEADD(day, -@dias, GETDATE())
              OR t.fechaCompletado >= DATEADD(day, -@dias, GETDATE())
          )
        ORDER BY fechaOrden DESC
    ', '{"carnet":"400850","dias":30}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (203, '2026-01-22 22:29:12', 24848, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":29}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (204, '2026-01-22 22:29:12', 25070, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":29,"carnet":"400850"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (205, '2026-01-22 22:50:31', 25088, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":40,"carnet":"1006062"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (206, '2026-01-22 22:52:23', 25055, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (207, '2026-01-22 22:52:23', 13209, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":30}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (208, '2026-01-22 22:52:41', 25024, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (209, '2026-01-22 22:52:41', 22114, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (210, '2026-01-22 22:52:41', 25064, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":30}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (211, '2026-01-22 22:52:48', 25024, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (212, '2026-01-22 22:52:48', 12746, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":30}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (213, '2026-01-22 22:52:48', 18687, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":30}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (214, '2026-01-22 23:28:42', 25088, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (215, '2026-01-22 23:28:42', 23794, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (216, '2026-01-22 23:28:43', 18578, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (217, '2026-01-22 23:28:43', 25019, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (218, '2026-01-22 23:28:50', 23709, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (219, '2026-01-22 23:28:50', 25021, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (220, '2026-01-22 23:28:52', 25020, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (221, '2026-01-22 23:28:52', 23487, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (222, '2026-01-22 23:28:52', 24330, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (223, '2026-01-22 23:28:52', 23881, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (224, '2026-01-22 23:28:52', 24118, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (225, '2026-01-22 23:28:52', 24994, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (226, '2026-01-22 23:28:52', 24810, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (227, '2026-01-22 23:28:52', 24568, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (228, '2026-01-22 23:28:54', 25027, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (229, '2026-01-22 23:47:50', 25081, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (230, '2026-01-22 23:48:15', 25039, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (231, '2026-01-22 23:48:15', 25085, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":30}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (232, '2026-01-22 23:48:15', 16693, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":30}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (233, '2026-01-22 23:48:15', 8307, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (234, '2026-01-22 23:48:32', 25029, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (235, '2026-01-22 23:48:40', 15817, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":30}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (236, '2026-01-22 23:48:40', 25040, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (237, '2026-01-22 23:48:40', 5114, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":30}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (238, '2026-01-22 23:48:40', 25129, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":30}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (239, '2026-01-22 23:49:00', 4179, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":30}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (240, '2026-01-22 23:49:00', 25020, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (241, '2026-01-22 23:49:00', 19890, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":30}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (242, '2026-01-22 23:49:21', 25026, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (243, '2026-01-22 23:49:21', 21791, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":30}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (244, '2026-01-23 14:21:48', 25102, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":38,"carnet":"245540"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (245, '2026-01-23 14:21:48', 14472, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (246, '2026-01-23 14:21:58', 25030, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":38,"carnet":"245540"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (247, '2026-01-23 14:25:16', 25071, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":38,"carnet":"245540"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (248, '2026-01-23 14:26:06', 23489, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS ogerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
              AND ogerencia IS NOT NULL AND LTRIM(RTRIM(ogerencia)) <> ''''
              AND subgerencia IS NOT NULL AND LTRIM(RTRIM(subgerencia)) <> ''''
              AND area IS NOT NULL AND LTRIM(RTRIM(area)) <> ''''
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (249, '2026-01-23 14:26:06', 25083, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":38,"carnet":"245540"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (250, '2026-01-23 14:26:06', 23899, 'EXEC sp_Visibilidad_ObtenerCarnets', '{"carnetSolicitante":"245540"}', 'SP');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (251, '2026-01-23 15:59:42', 25151, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":29,"carnet":"400850"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (252, '2026-01-23 16:36:55', 25084, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":29,"carnet":"400850"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (253, '2026-01-23 16:38:39', 25053, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":29,"carnet":"400850"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (254, '2026-01-23 16:39:07', 24629, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS ogerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
              AND ogerencia IS NOT NULL AND LTRIM(RTRIM(ogerencia)) <> ''''
              AND subgerencia IS NOT NULL AND LTRIM(RTRIM(subgerencia)) <> ''''
              AND area IS NOT NULL AND LTRIM(RTRIM(area)) <> ''''
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (255, '2026-01-23 16:39:07', 25046, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":29,"carnet":"400850"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (256, '2026-01-23 16:39:07', 24625, 'EXEC sp_Visibilidad_ObtenerCarnets', '{"carnetSolicitante":"400850"}', 'SP');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (257, '2026-01-23 16:47:53', 25162, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":29,"carnet":"400850"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (258, '2026-01-23 16:48:25', 25100, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":29,"carnet":"400850"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (259, '2026-01-23 16:48:25', 25116, 'EXEC sp_Visibilidad_ObtenerCarnets', '{"carnetSolicitante":"400850"}', 'SP');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (260, '2026-01-23 16:49:34', 25073, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (261, '2026-01-23 16:49:34', 3620, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":30}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (262, '2026-01-23 16:50:02', 25082, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (263, '2026-01-23 16:50:02', 22688, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (264, '2026-01-23 16:50:05', 25028, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (265, '2026-01-23 16:51:09', 25072, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":29,"carnet":"400850"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (266, '2026-01-23 16:51:41', 25068, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (267, '2026-01-23 16:51:41', 25070, 'EXEC sp_Visibilidad_ObtenerCarnets', '{"carnetSolicitante":"666"}', 'SP');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (268, '2026-01-23 16:51:57', 10234, 'EXEC sp_Visibilidad_ObtenerCarnets', '{"carnetSolicitante":"666"}', 'SP');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (269, '2026-01-23 16:51:57', 25063, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":29,"carnet":"400850"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (270, '2026-01-23 16:51:57', 24999, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS ogerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
              AND ogerencia IS NOT NULL AND LTRIM(RTRIM(ogerencia)) <> ''''
              AND subgerencia IS NOT NULL AND LTRIM(RTRIM(subgerencia)) <> ''''
              AND area IS NOT NULL AND LTRIM(RTRIM(area)) <> ''''
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (271, '2026-01-23 16:51:57', 24967, 'EXEC sp_Visibilidad_ObtenerCarnets', '{"carnetSolicitante":"400850"}', 'SP');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (272, '2026-01-23 16:51:57', 16073, '
        SELECT u.idUsuario, u.carnet, u.nombreCompleto, u.correo, u.cargo, u.departamento,
               u.orgDepartamento, u.orgGerencia, u.idOrg, u.jefeCarnet, u.jefeNombre, u.jefeCorreo, u.activo,
               u.gerencia, u.subgerencia, u.idRol, u.rolGlobal,
               r.nombre as rolNombre
        FROM p_Usuarios u
        LEFT JOIN p_Roles r ON u.idRol = r.idRol
        WHERE LTRIM(RTRIM(u.carnet)) IN (@c0)
        ORDER BY u.nombreCompleto
    ', '{"c0":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (273, '2026-01-23 16:55:15', 25081, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (274, '2026-01-23 16:57:31', 25060, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (275, '2026-01-23 16:58:12', 25056, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (276, '2026-01-23 16:58:12', 25019, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS ogerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
              AND ogerencia IS NOT NULL AND LTRIM(RTRIM(ogerencia)) <> ''''
              AND subgerencia IS NOT NULL AND LTRIM(RTRIM(subgerencia)) <> ''''
              AND area IS NOT NULL AND LTRIM(RTRIM(area)) <> ''''
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (277, '2026-01-23 16:58:12', 25008, 'EXEC sp_Visibilidad_ObtenerCarnets', '{"carnetSolicitante":"666"}', 'SP');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (278, '2026-01-23 17:07:33', 25068, 'EXEC sp_Visibilidad_ObtenerCarnets', '{"carnetSolicitante":"666"}', 'SP');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (279, '2026-01-23 17:07:33', 25066, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (280, '2026-01-23 17:07:33', 25050, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS ogerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
              AND ogerencia IS NOT NULL AND LTRIM(RTRIM(ogerencia)) <> ''''
              AND subgerencia IS NOT NULL AND LTRIM(RTRIM(subgerencia)) <> ''''
              AND area IS NOT NULL AND LTRIM(RTRIM(area)) <> ''''
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (281, '2026-01-23 17:15:46', 25061, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (282, '2026-01-23 17:15:46', 25064, 'EXEC sp_Visibilidad_ObtenerCarnets', '{"carnetSolicitante":"666"}', 'SP');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (283, '2026-01-23 17:24:20', 25021, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS ogerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
              AND ogerencia IS NOT NULL AND LTRIM(RTRIM(ogerencia)) <> ''''
              AND subgerencia IS NOT NULL AND LTRIM(RTRIM(subgerencia)) <> ''''
              AND area IS NOT NULL AND LTRIM(RTRIM(area)) <> ''''
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (284, '2026-01-23 17:24:20', 25062, 'EXEC sp_Visibilidad_ObtenerCarnets', '{"carnetSolicitante":"666"}', 'SP');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (285, '2026-01-23 17:24:20', 25062, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (286, '2026-01-23 17:28:07', 25077, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (287, '2026-01-23 17:28:07', 25080, 'EXEC sp_Visibilidad_ObtenerCarnets', '{"carnetSolicitante":"666"}', 'SP');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (288, '2026-01-23 17:28:07', 25071, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS ogerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
              AND ogerencia IS NOT NULL AND LTRIM(RTRIM(ogerencia)) <> ''''
              AND subgerencia IS NOT NULL AND LTRIM(RTRIM(subgerencia)) <> ''''
              AND area IS NOT NULL AND LTRIM(RTRIM(area)) <> ''''
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (289, '2026-01-23 17:32:11', 25015, '
        SELECT u.idUsuario, u.carnet, u.nombreCompleto, u.correo, u.cargo, u.departamento,
               u.orgDepartamento, u.orgGerencia, u.idOrg, u.jefeCarnet, u.jefeNombre, u.jefeCorreo, u.activo,
               u.gerencia, u.subgerencia, u.idRol, u.rolGlobal,
               r.nombre as rolNombre
        FROM p_Usuarios u
        LEFT JOIN p_Roles r ON u.idRol = r.idRol
        WHERE LTRIM(RTRIM(u.carnet)) IN (@c0)
        ORDER BY u.nombreCompleto
    ', '{"c0":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (290, '2026-01-23 17:32:11', 25082, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (291, '2026-01-23 17:32:11', 25015, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS ogerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
              AND ogerencia IS NOT NULL AND LTRIM(RTRIM(ogerencia)) <> ''''
              AND subgerencia IS NOT NULL AND LTRIM(RTRIM(subgerencia)) <> ''''
              AND area IS NOT NULL AND LTRIM(RTRIM(area)) <> ''''
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (292, '2026-01-23 17:32:44', 25059, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (293, '2026-01-23 17:33:23', 25228, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (294, '2026-01-23 20:05:19', 25106, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":29,"carnet":"400850"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (295, '2026-01-23 21:41:37', 25057, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (296, '2026-01-23 21:41:37', 21532, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":30}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (297, '2026-01-23 21:42:40', 25047, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (298, '2026-01-23 21:42:40', 22476, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":30}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (299, '2026-01-23 21:43:01', 25037, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (300, '2026-01-23 21:43:12', 25018, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (301, '2026-01-23 21:43:12', 2988, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":30}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (302, '2026-01-23 21:48:26', 25078, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (303, '2026-01-23 21:48:26', 23510, '
            SELECT DISTINCT 
                LTRIM(RTRIM(ogerencia)) AS gerencia,
                LTRIM(RTRIM(subgerencia)) AS subgerencia,
                LTRIM(RTRIM(area)) AS area
            FROM p_Usuarios
            WHERE activo = 1
            ORDER BY 1, 2, 3
        ', NULL, 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (304, '2026-01-23 21:48:27', 25010, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":30,"carnet":"666"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (305, '2026-01-23 21:48:28', 18241, '
        SELECT 
            t.idTarea, t.idProyecto, 
            t.nombre as titulo,
            t.descripcion, t.estado, t.prioridad, t.esfuerzo, t.tipo,
            t.fechaCreacion, t.fechaObjetivo, t.fechaCompletado,
            t.porcentaje as progreso,
            t.orden, t.idCreador, t.fechaInicioPlanificada,
            t.comportamiento, t.idGrupo, t.numeroParte,
            t.fechaActualizacion as fechaUltActualizacion,
            p.nombre as proyectoNombre 
        FROM p_Tareas t
        LEFT JOIN p_Proyectos p ON t.idProyecto = p.idProyecto
        LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE (t.idCreador = @uid OR ta.idUsuario = @uid)
     ORDER BY t.orden ASC, t.fechaObjetivo ASC', '{"uid":30}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (306, '2026-01-23 21:55:10', 25152, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":41,"carnet":"777777"}', 'Query');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (307, '2026-01-23 21:55:10', 25144, 'EXEC sp_Visibilidad_ObtenerCarnets', '{"carnetSolicitante":"777777"}', 'SP');
INSERT INTO [p_SlowQueries] ([id], [fecha], [duracionMS], [sqlText], [parametros], [tipo]) VALUES (308, '2026-01-23 21:59:02', 25072, '
        -- Proyectos que yo creé
        SELECT DISTINCT p.* FROM p_Proyectos p WHERE p.idCreador = @idUsuario
        UNION
        -- Proyectos donde tengo tareas asignadas
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        WHERE ta.idUsuario = @idUsuario
        UNION
        -- Proyectos de subordinados nivel 1 (reportan directamente a mí)
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.jefeCarnet = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 2
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe2 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 3
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe3 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        UNION
        -- Proyectos de subordinados nivel 4
        SELECT DISTINCT p.* FROM p_Proyectos p
        INNER JOIN p_Tareas t ON p.idProyecto = t.idProyecto
        INNER JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
        INNER JOIN p_Usuarios u ON ta.idUsuario = u.idUsuario
        WHERE u.carnet_jefe4 = @carnet AND @carnet IS NOT NULL AND @carnet != ''''
        ORDER BY fechaCreacion DESC
    ', '{"idUsuario":41,"carnet":"777777"}', 'Query');
SET IDENTITY_INSERT [p_SlowQueries] OFF;

-- Table: p_SolicitudCambios

GO
CREATE    PROCEDURE sp_Clarity_CrearTareaRapida
    @titulo NVARCHAR(200),
    @idUsuario INT,
    @prioridad NVARCHAR(50) = 'Media',
    @tipo NVARCHAR(50) = 'Administrativa'
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO p_Tareas (nombre, idCreador, estado, prioridad, tipo, fechaCreacion, fechaActualizacion)
    VALUES (@titulo, @idUsuario, 'Pendiente', @prioridad, @tipo, GETDATE(), GETDATE());
    SELECT SCOPE_IDENTITY() AS idTarea;
END;


GO
GO
CREATE    PROCEDURE sp_Acceso_ObtenerArbol
AS
BEGIN
    SET NOCOUNT ON;
    SELECT id AS idorg, nombre, tipo, idPadre AS padre, orden, activo 
    FROM p_OrganizacionNodos WHERE activo = 1;
END;

GO
GO
CREATE   PROCEDURE sp_Tarea_Crear
    @nombre NVARCHAR(200),
    @idUsuario INT,
    @idProyecto INT = NULL,
    @descripcion NVARCHAR(MAX) = NULL,
    @estado NVARCHAR(50) = 'Pendiente',
    @prioridad NVARCHAR(50) = 'Media',
    @esfuerzo NVARCHAR(20) = NULL,
    @tipo NVARCHAR(50) = 'Administrativa',
    @fechaInicioPlanificada DATETIME = NULL,
    @fechaObjetivo DATETIME = NULL,
    @porcentaje INT = 0,
    @orden INT = 0
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO p_Tareas (
        nombre, idCreador, idProyecto, descripcion, estado, prioridad, esfuerzo, tipo,
        fechaInicioPlanificada, fechaObjetivo, porcentaje, orden, fechaCreacion, fechaActualizacion
    )
    VALUES (
        @nombre, @idUsuario, @idProyecto, @descripcion, @estado, @prioridad, @esfuerzo, @tipo,
        @fechaInicioPlanificada, @fechaObjetivo, @porcentaje, @orden, GETDATE(), GETDATE()
    );

    SELECT SCOPE_IDENTITY() AS idTarea;
END
GO
GO
CREATE   PROCEDURE sp_Checkin_Crear
    @idUsuario INT,
    @fecha DATE,
    @entregableTexto NVARCHAR(MAX),
    @nota NVARCHAR(MAX) = NULL,
    @linkEvidencia NVARCHAR(MAX) = NULL,
    @estadoAnimo NVARCHAR(50) = NULL,
    @idNodo INT = NULL,
    @energia INT = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- Upsert simple: Si ya existe checkin para ese usuario/fecha, actualizar. Si no, insertar.
    MERGE p_Checkins AS target
    USING (SELECT @idUsuario, @fecha) AS source (idUsuario, fecha)
    ON (target.idUsuario = source.idUsuario AND target.fecha = source.fecha)
    WHEN MATCHED THEN
        UPDATE SET 
            entregableTexto = @entregableTexto,
            nota = @nota,
            linkEvidencia = @linkEvidencia,
            estadoAnimo = @estadoAnimo,
            idNodo = @idNodo,
            energia = @energia,
            fechaCreacion = GETDATE() -- o fechaActualizacion si existiera
    WHEN NOT MATCHED THEN
        INSERT (idUsuario, fecha, entregableTexto, nota, linkEvidencia, estadoAnimo, idNodo, energia, fechaCreacion)
        VALUES (@idUsuario, @fecha, @entregableTexto, @nota, @linkEvidencia, @estadoAnimo, @idNodo, @energia, GETDATE());
    
    -- Devolver ID (si insertó) o buscarlo
    SELECT idCheckin FROM p_Checkins WHERE idUsuario = @idUsuario AND fecha = @fecha;
END
GO
GO

/* ============================================
   ORGANIZACIÓN
   ============================================ */

CREATE   PROCEDURE dbo.sp_Organizacion_ObtenerArbol
AS
BEGIN
  SET NOCOUNT ON;

  SELECT
    id          AS idorg,
    nombre,
    tipo,
    idPadre     AS padre,
    orden,
    activo
  FROM dbo.p_OrganizacionNodos
  WHERE activo = 1
  ORDER BY orden, nombre;
END;

GO
GO

/* ============================================
   VISIBILIDAD
   ============================================ */

/*
  sp_Visibilidad_ObtenerCarnets
  Devuelve carnets visibles para un solicitante:
  - el mismo solicitante
  - su jerarquía descendente por jefeCarnet (si usas esa relación)
  - permisos explícitos por empleado (p_permiso_empleado)
  - delegaciones activas (quien me delegó visibilidad) -> suma carnets visibles de esos delegantes también
  - (opcional) permisos por área: aquí lo dejamos como "carnet objetivo" no existe, entonces no agrega carnets
    (si tu área se resuelve a carnets por organigrama, lo podemos ampliar)
*/
CREATE   PROCEDURE dbo.sp_Visibilidad_ObtenerCarnets
  @carnetSolicitante NVARCHAR(50)
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @c NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@carnetSolicitante, N'')));
  IF (@c = N'')
  BEGIN
    SELECT CAST(N'' AS NVARCHAR(50)) AS carnet WHERE 1=0;
    RETURN;
  END

  /* 1) Delegantes activos: personas que me delegaron su vista */
  DECLARE @Delegantes TABLE (carnet NVARCHAR(50) PRIMARY KEY);

  INSERT INTO @Delegantes(carnet)
  SELECT DISTINCT LTRIM(RTRIM(dv.carnet_delegante))
  FROM dbo.p_delegacion_visibilidad dv
  WHERE LTRIM(RTRIM(dv.carnet_delegado)) = @c
    AND dv.activo = 1
    AND (dv.fecha_inicio IS NULL OR dv.fecha_inicio <= GETDATE())
    AND (dv.fecha_fin    IS NULL OR dv.fecha_fin    >= GETDATE())
    AND LTRIM(RTRIM(dv.carnet_delegante)) <> N'';

  /* 2) Actores efectivos = solicitante + delegantes */
  ;WITH Actores AS
  (
    SELECT @c AS carnet
    UNION ALL
    SELECT d.carnet FROM @Delegantes d
  ),
  /* 3) Jerarquía: subtree por jefeCarnet (si tu organigrama real es otro, cámbialo aquí) */
  Jerarquia AS
  (
    SELECT u.carnet
    FROM dbo.p_Usuarios u
    JOIN Actores a ON LTRIM(RTRIM(u.carnet)) = a.carnet

    UNION ALL

    SELECT u2.carnet
    FROM dbo.p_Usuarios u2
    JOIN Jerarquia j ON LTRIM(RTRIM(u2.jefeCarnet)) = LTRIM(RTRIM(j.carnet))
    WHERE u2.activo = 1
      AND LTRIM(RTRIM(u2.carnet)) <> N''
  ),
  /* 4) Permisos explícitos por empleado */
  PermisosEmpleado AS
  (
    SELECT pe.carnet_objetivo AS carnet
    FROM dbo.p_permiso_empleado pe
    JOIN Actores a ON LTRIM(RTRIM(pe.carnet_recibe)) = a.carnet
    WHERE pe.activo = 1
      AND LTRIM(RTRIM(pe.carnet_objetivo)) <> N''
  )
  SELECT DISTINCT LTRIM(RTRIM(x.carnet)) AS carnet
  FROM
  (
    SELECT carnet FROM Jerarquia
    UNION ALL
    SELECT carnet FROM PermisosEmpleado
  ) x
  WHERE LTRIM(RTRIM(x.carnet)) <> N'';
END;

GO
GO
-- ============================================================
-- 5. STORED PROCEDURES
-- ============================================================

-- 5.1 SP: Upsert Avance Mensual (Plan de Trabajo)
CREATE   PROCEDURE sp_UpsertAvanceMensual
    @idTarea INT,
    @anio INT,
    @mes INT,
    @porcentajeMes DECIMAL(5,2),
    @comentario NVARCHAR(MAX) = NULL,
    @idUsuario INT
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRAN;

    MERGE p_TareaAvanceMensual AS t
    USING (SELECT @idTarea idTarea, @anio anio, @mes mes) AS s
    ON (t.idTarea = s.idTarea AND t.anio = s.anio AND t.mes = s.mes)
    WHEN MATCHED THEN
        UPDATE SET porcentajeMes = @porcentajeMes,
                   comentario = @comentario,
                   idUsuarioActualizador = @idUsuario,
                   fechaActualizacion = GETDATE()
    WHEN NOT MATCHED THEN
        INSERT (idTarea, anio, mes, porcentajeMes, comentario, idUsuarioActualizador)
        VALUES (@idTarea, @anio, @mes, @porcentajeMes, @comentario, @idUsuario);

    -- Marca completada si acumulado >= 100
    DECLARE @acum DECIMAL(6,2);
    SELECT @acum = ISNULL(SUM(porcentajeMes), 0)
    FROM p_TareaAvanceMensual
    WHERE idTarea = @idTarea;

    -- Actualiza el porcentaje global en p_Tareas
    UPDATE p_Tareas 
    SET porcentaje = CASE WHEN @acum > 100 THEN 100 ELSE @acum END,
        estado = CASE WHEN @acum >= 100 THEN 'Hecha' ELSE estado END,
        fechaCompletado = CASE WHEN @acum >= 100 AND estado <> 'Hecha' THEN GETDATE() ELSE fechaCompletado END
    WHERE idTarea = @idTarea;

    COMMIT;
END
GO
GO
-- 5.2 SP: Crear Grupo Inicial (Plan de Trabajo)
CREATE   PROCEDURE sp_CrearGrupoInicial
    @idTarea INT
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE p_Tareas
    SET idGrupo = @idTarea, numeroParte = 1
    WHERE idTarea = @idTarea AND (idGrupo IS NULL OR idGrupo = 0);
END
GO
GO
-- 5.3 SP: Agregar Fase a Grupo (Plan de Trabajo)
CREATE   PROCEDURE sp_AgregarFaseGrupo
    @idGrupo INT,
    @idTareaNueva INT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @n INT;
    SELECT @n = ISNULL(MAX(numeroParte), 0) + 1
    FROM p_Tareas WHERE idGrupo = @idGrupo;

    UPDATE p_Tareas
    SET idGrupo = @idGrupo, numeroParte = @n
    WHERE idTarea = @idTareaNueva;
END
GO
GO

CREATE PROCEDURE sp_ObtenerProyectos
    @idUsuario INT,
    @filtroNombre NVARCHAR(100) = NULL,
    @filtroEstado NVARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- Lógica de visibilidad simplificada (Usuario ve lo que creó O donde está asignado)
    -- Se puede extender con lógica de jerarquía si se requiere
    SELECT DISTINCT p.*
    FROM p_Proyectos p
    LEFT JOIN p_Tareas t ON p.idProyecto = t.idProyecto
    LEFT JOIN p_TareaAsignados ta ON t.idTarea = ta.idTarea
    WHERE 
        (p.idCreador = @idUsuario OR ta.idUsuario = @idUsuario)
        AND (@filtroNombre IS NULL OR p.nombre LIKE '%' + @filtroNombre + '%')
        AND (@filtroEstado IS NULL OR p.estado = @filtroEstado)
    ORDER BY p.fechaCreacion DESC;
END;
GO
GO

/* ============================================
   USUARIOS
   ============================================ */

CREATE   PROCEDURE dbo.sp_Usuarios_ObtenerDetallesPorCarnets
  @CarnetsCsv NVARCHAR(MAX)
AS
BEGIN
  SET NOCOUNT ON;

  SELECT
    u.idUsuario,
    u.carnet,
    u.nombre,
    u.nombreCompleto,
    u.correo,
    u.cargo,
    u.departamento,
    u.orgDepartamento,
    u.orgGerencia,
    u.idOrg,
    u.jefeCarnet,
    u.jefeNombre,
    u.jefeCorreo,
    u.activo,
    u.gerencia,
    u.subgerencia,
    u.idRol,
    u.rolGlobal,
    r.nombre AS rolNombre
  FROM dbo.p_Usuarios u
  LEFT JOIN dbo.p_Roles r ON r.idRol = u.idRol
  JOIN dbo.fn_SplitCsv_NVarChar(@CarnetsCsv) s
    ON LTRIM(RTRIM(u.carnet)) = s.item
  ORDER BY u.nombreCompleto;
END;

GO
GO

CREATE   PROCEDURE dbo.sp_Usuarios_ObtenerCarnetPorId
  @idUsuario INT
AS
BEGIN
  SET NOCOUNT ON;
  SELECT TOP 1 u.carnet
  FROM dbo.p_Usuarios u
  WHERE u.idUsuario = @idUsuario;
END;

GO
GO

/* ============================================
   DELEGACIÓN VISIBILIDAD
   ============================================ */

CREATE   PROCEDURE dbo.sp_DelegacionVisibilidad_ObtenerActivas
  @carnetDelegado NVARCHAR(50)
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @c NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@carnetDelegado, N'')));

  SELECT *
  FROM dbo.p_delegacion_visibilidad
  WHERE LTRIM(RTRIM(carnet_delegado)) = @c
    AND activo = 1
    AND (fecha_inicio IS NULL OR fecha_inicio <= GETDATE())
    AND (fecha_fin    IS NULL OR fecha_fin    >= GETDATE())
  ORDER BY creado_en DESC;
END;

GO
GO

CREATE   PROCEDURE dbo.sp_Usuarios_BuscarPorCarnet
  @carnet NVARCHAR(50)
AS
BEGIN
  SET NOCOUNT ON;
  DECLARE @c NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@carnet, N'')));

  SELECT TOP 1 *
  FROM dbo.p_Usuarios
  WHERE LTRIM(RTRIM(carnet)) = @c;
END;

GO
GO

CREATE   PROCEDURE dbo.sp_Usuarios_BuscarPorCorreo
  @correo NVARCHAR(200)
AS
BEGIN
  SET NOCOUNT ON;
  DECLARE @c NVARCHAR(200) = LOWER(LTRIM(RTRIM(ISNULL(@correo, N''))));

  SELECT TOP 1 *
  FROM dbo.p_Usuarios
  WHERE LOWER(LTRIM(RTRIM(correo))) = @c;
END;

GO
GO

CREATE   PROCEDURE dbo.sp_Usuarios_ListarActivos
AS
BEGIN
  SET NOCOUNT ON;
  SELECT *
  FROM dbo.p_Usuarios
  WHERE activo = 1
  ORDER BY nombreCompleto;
END;

GO
GO

CREATE   PROCEDURE dbo.sp_Usuarios_Buscar
  @termino NVARCHAR(200),
  @limite  INT = 10
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @t NVARCHAR(210) = N'%' + ISNULL(@termino, N'') + N'%';

  SELECT TOP (@limite) *
  FROM dbo.p_Usuarios
  WHERE activo = 1
    AND (
         LOWER(nombreCompleto) LIKE LOWER(@t)
      OR LTRIM(RTRIM(carnet)) LIKE LTRIM(RTRIM(@t))
      OR LOWER(correo) LIKE LOWER(@t)
    )
  ORDER BY nombreCompleto;
END;

GO
GO

CREATE   PROCEDURE dbo.sp_Organizacion_SubarbolPreviewEmpleados
  @idOrgRaiz NVARCHAR(50),
  @limite INT = 50
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @id NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@idOrgRaiz, N'')));
  IF (@id = N'')
  BEGIN
    SELECT TOP 0 * FROM dbo.p_Usuarios;
    RETURN;
  END

  ;WITH NodosSub AS
  (
    SELECT CAST(id AS NVARCHAR(50)) AS idorg
    FROM dbo.p_OrganizacionNodos
    WHERE CAST(id AS NVARCHAR(50)) = @id

    UNION ALL

    SELECT CAST(n.id AS NVARCHAR(50))
    FROM dbo.p_OrganizacionNodos n
    JOIN NodosSub ns ON CAST(n.idPadre AS NVARCHAR(50)) = ns.idorg
  )
  SELECT TOP (@limite)
    u.idUsuario, u.carnet, u.nombre, u.nombreCompleto, u.correo,
    u.cargo, u.departamento, u.orgDepartamento, u.orgGerencia,
    u.idOrg, u.jefeCarnet, u.jefeNombre, u.jefeCorreo, u.activo,
    u.gerencia, u.subgerencia, u.idRol, u.rolGlobal
  FROM dbo.p_Usuarios u
  JOIN NodosSub ns ON CAST(u.idOrg AS NVARCHAR(50)) = ns.idorg
  WHERE u.activo = 1
  ORDER BY u.nombreCompleto;
END;

GO
GO

CREATE   PROCEDURE dbo.sp_Organizacion_SubarbolContarEmpleados
  @idOrgRaiz NVARCHAR(50)
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @id NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@idOrgRaiz, N'')));
  IF (@id = N'')
  BEGIN
    SELECT CAST(0 AS INT) AS total;
    RETURN;
  END

  ;WITH NodosSub AS
  (
    SELECT CAST(id AS NVARCHAR(50)) AS idorg
    FROM dbo.p_OrganizacionNodos
    WHERE CAST(id AS NVARCHAR(50)) = @id

    UNION ALL

    SELECT CAST(n.id AS NVARCHAR(50))
    FROM dbo.p_OrganizacionNodos n
    JOIN NodosSub ns ON CAST(n.idPadre AS NVARCHAR(50)) = ns.idorg
  )
  SELECT COUNT(*) AS total
  FROM dbo.p_Usuarios u
  JOIN NodosSub ns ON CAST(u.idOrg AS NVARCHAR(50)) = ns.idorg
  WHERE u.activo = 1;
END;

GO
GO

CREATE   PROCEDURE dbo.sp_DelegacionVisibilidad_Crear
  @delegante NVARCHAR(50),
  @delegado  NVARCHAR(50),
  @motivo    NVARCHAR(500) = NULL,
  @fecha_inicio NVARCHAR(50) = NULL,
  @fecha_fin    NVARCHAR(50) = NULL
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @d1 NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@delegante, N'')));
  DECLARE @d2 NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@delegado,  N'')));

  IF (@d1 = N'' OR @d2 = N'')
  BEGIN
    RAISERROR('Delegante/Delegado requerido.', 16, 1);
    RETURN;
  END

  DECLARE @fi DATETIME = TRY_CONVERT(DATETIME, @fecha_inicio);
  DECLARE @ff DATETIME = TRY_CONVERT(DATETIME, @fecha_fin);

  INSERT INTO dbo.p_delegacion_visibilidad
    (carnet_delegante, carnet_delegado, motivo, activo, creado_en, fecha_inicio, fecha_fin)
  VALUES
    (@d1, @d2, @motivo, 1, GETDATE(), @fi, @ff);

  SELECT SCOPE_IDENTITY() AS id;
END;

GO
GO

CREATE   PROCEDURE dbo.sp_DelegacionVisibilidad_Desactivar
  @id BIGINT
AS
BEGIN
  SET NOCOUNT ON;
  UPDATE dbo.p_delegacion_visibilidad
  SET activo = 0
  WHERE id = @id;
END;

GO
GO

CREATE   PROCEDURE dbo.sp_DelegacionVisibilidad_ListarActivas
AS
BEGIN
  SET NOCOUNT ON;
  SELECT *
  FROM dbo.p_delegacion_visibilidad
  WHERE activo = 1
  ORDER BY creado_en DESC;
END;

GO
GO

CREATE   PROCEDURE dbo.sp_DelegacionVisibilidad_ListarPorDelegante
  @carnetDelegante NVARCHAR(50)
AS
BEGIN
  SET NOCOUNT ON;
  DECLARE @c NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@carnetDelegante, N'')));

  SELECT *
  FROM dbo.p_delegacion_visibilidad
  WHERE LTRIM(RTRIM(carnet_delegante)) = @c
  ORDER BY creado_en DESC;
END;

GO
GO

/* ============================================
   PERMISO ÁREA
   ============================================ */

CREATE   PROCEDURE dbo.sp_PermisoArea_ObtenerActivosPorRecibe
  @carnetRecibe NVARCHAR(50)
AS
BEGIN
  SET NOCOUNT ON;
  DECLARE @c NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@carnetRecibe, N'')));

  SELECT *
  FROM dbo.p_permiso_area
  WHERE LTRIM(RTRIM(carnet_recibe)) = @c
    AND activo = 1
  ORDER BY creado_en DESC;
END;

GO
GO

CREATE   PROCEDURE dbo.sp_PermisoArea_Crear
  @otorga  NVARCHAR(50) = NULL,
  @recibe  NVARCHAR(50),
  @idorg   BIGINT,
  @alcance NVARCHAR(50) = N'SUBARBOL',
  @motivo  NVARCHAR(500) = NULL,
  @fecha_fin NVARCHAR(50) = NULL
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @r NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@recibe, N'')));
  IF (@r = N'')
  BEGIN
    RAISERROR('carnet_recibe requerido.', 16, 1);
    RETURN;
  END

  DECLARE @ff DATETIME = TRY_CONVERT(DATETIME, @fecha_fin);

  INSERT INTO dbo.p_permiso_area
    (carnet_otorga, carnet_recibe, idorg_raiz, alcance, motivo, activo, creado_en, fecha_fin)
  VALUES
    (NULLIF(LTRIM(RTRIM(@otorga)), N''), @r, @idorg, @alcance, @motivo, 1, GETDATE(), @ff);

  SELECT SCOPE_IDENTITY() AS id;
END;

GO
GO

CREATE   PROCEDURE dbo.sp_PermisoArea_Desactivar
  @id BIGINT
AS
BEGIN
  SET NOCOUNT ON;
  UPDATE dbo.p_permiso_area
  SET activo = 0
  WHERE id = @id;
END;

GO
GO

CREATE   PROCEDURE dbo.sp_PermisoArea_ListarActivos
AS
BEGIN
  SET NOCOUNT ON;
  SELECT *
  FROM dbo.p_permiso_area
  WHERE activo = 1
  ORDER BY creado_en DESC;
END;

GO
GO

/* ============================================
   PERMISO EMPLEADO
   ============================================ */

CREATE   PROCEDURE dbo.sp_PermisoEmpleado_ObtenerActivosPorRecibe
  @carnetRecibe NVARCHAR(50)
AS
BEGIN
  SET NOCOUNT ON;
  DECLARE @c NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@carnetRecibe, N'')));

  SELECT *
  FROM dbo.p_permiso_empleado
  WHERE LTRIM(RTRIM(carnet_recibe)) = @c
    AND activo = 1
  ORDER BY creado_en DESC;
END;

GO
GO

CREATE   PROCEDURE dbo.sp_PermisoEmpleado_Crear
  @otorga  NVARCHAR(50) = NULL,
  @recibe  NVARCHAR(50),
  @objetivo NVARCHAR(50),
  @tipo    NVARCHAR(50) = N'ALLOW',
  @motivo  NVARCHAR(500) = NULL
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @r NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@recibe, N'')));
  DECLARE @o NVARCHAR(50) = LTRIM(RTRIM(ISNULL(@objetivo, N'')));

  IF (@r = N'' OR @o = N'')
  BEGIN
    RAISERROR('carnet_recibe y carnet_objetivo requeridos.', 16, 1);
    RETURN;
  END

  INSERT INTO dbo.p_permiso_empleado
    (carnet_otorga, carnet_recibe, carnet_objetivo, tipo_acceso, motivo, activo, creado_en)
  VALUES
    (NULLIF(LTRIM(RTRIM(@otorga)), N''), @r, @o, @tipo, @motivo, 1, GETDATE());

  SELECT SCOPE_IDENTITY() AS id;
END;

GO
GO

CREATE   PROCEDURE dbo.sp_PermisoEmpleado_Desactivar
  @id BIGINT
AS
BEGIN
  SET NOCOUNT ON;
  UPDATE dbo.p_permiso_empleado
  SET activo = 0
  WHERE id = @id;
END;

GO
GO

CREATE   PROCEDURE dbo.sp_PermisoEmpleado_ListarActivos
AS
BEGIN
  SET NOCOUNT ON;
  SELECT *
  FROM dbo.p_permiso_empleado
  WHERE activo = 1
  ORDER BY creado_en DESC;
END;

GO
GO

CREATE   PROCEDURE dbo.sp_Organizacion_BuscarNodoPorId
  @idorg BIGINT
AS
BEGIN
  SET NOCOUNT ON;

  SELECT TOP 1
    id          AS idorg,
    nombre,
    tipo,
    idPadre     AS padre,
    orden,
    activo
  FROM dbo.p_OrganizacionNodos
  WHERE id = @idorg;
END;

GO
GO

CREATE   PROCEDURE dbo.sp_Organizacion_BuscarNodos
  @termino NVARCHAR(200)
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @t NVARCHAR(210) = N'%' + ISNULL(@termino, N'') + N'%';

  SELECT TOP 50
    id          AS idorg,
    nombre,
    tipo,
    idPadre     AS padre,
    orden,
    activo
  FROM dbo.p_OrganizacionNodos
  WHERE LOWER(nombre) LIKE LOWER(@t)
  ORDER BY nombre;
END;

GO
GO

CREATE   PROCEDURE dbo.sp_Organizacion_ContarEmpleadosPorNodo
AS
BEGIN
  SET NOCOUNT ON;

  SELECT
    CAST(u.idOrg AS NVARCHAR(50)) AS idOrg,
    COUNT(*) AS [count]
  FROM dbo.p_Usuarios u
  WHERE u.activo = 1
    AND u.idOrg IS NOT NULL
  GROUP BY u.idOrg;
END;

GO
GO

CREATE   PROCEDURE dbo.sp_Organizacion_ObtenerEmpleadosNodoDirecto
  @idOrg INT,
  @limite INT = 50
AS
BEGIN
  SET NOCOUNT ON;

  SELECT TOP (@limite)
    u.idUsuario, u.carnet, u.nombre, u.nombreCompleto, u.correo,
    u.cargo, u.departamento, u.orgDepartamento, u.orgGerencia,
    u.idOrg, u.jefeCarnet, u.jefeNombre, u.jefeCorreo, u.activo,
    u.gerencia, u.subgerencia, u.idRol, u.rolGlobal
  FROM dbo.p_Usuarios u
  WHERE u.activo = 1
    AND u.idOrg = @idOrg
  ORDER BY u.nombreCompleto;
END;

GO
GO

CREATE   PROCEDURE dbo.sp_Organizacion_ContarEmpleadosNodoDirecto
  @idOrg INT
AS
BEGIN
  SET NOCOUNT ON;

  SELECT COUNT(*) AS total
  FROM dbo.p_Usuarios u
  WHERE u.activo = 1
    AND u.idOrg = @idOrg;
END;

GO
GO
CREATE   PROCEDURE dbo.sp_Clarity_MiDia_Get
(
  @IdUsuario INT,
  @Fecha     DATE
)
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  -- Buscamos el ID del último check-in anterior para los arrastrados (Solución para fines de semana)
  DECLARE @IdUltimoCheckin INT;
  SELECT TOP (1) @IdUltimoCheckin = idCheckin
  FROM dbo.p_Checkins
  WHERE idUsuario = @IdUsuario AND fecha < @Fecha
  ORDER BY fecha DESC, creadoEn DESC;

  -----------------------------------------------------------------------
  -- 1) Check-in hoy (Datos de la jornada actual)
  -----------------------------------------------------------------------
  SELECT TOP (1)
      c.idCheckin,
      c.fecha,
      c.entregableTexto,
      c.nota,
      c.creadoEn AS fechaCreacion -- Alias para el frontend
  FROM dbo.p_Checkins c
  WHERE c.idUsuario = @IdUsuario
    AND c.fecha     = @Fecha
  ORDER BY c.creadoEn DESC;

  -----------------------------------------------------------------------
  -- 2) Arrastrados (Tareas de la jornada anterior no finalizadas)
  -----------------------------------------------------------------------
  SELECT
      t.idTarea,
      t.nombre AS Titulo, -- Mapeamos 'nombre' a 'Titulo' para el Front
      t.estado,
      t.prioridad,
      t.esfuerzo,
      ISNULL(t.fechaActualizacion, t.fechaCreacion) AS fechaActualizacion,
      t.fechaObjetivo,
      t.idProyecto
  FROM dbo.p_Tareas t
  INNER JOIN dbo.p_CheckinTareas ct ON ct.idTarea = t.idTarea
  WHERE ct.idCheckin = @IdUltimoCheckin
    AND t.estado NOT IN ('Hecha','Descartada')
  ORDER BY
      CASE t.estado 
        WHEN 'EnCurso' THEN 1 
        WHEN 'Bloqueada' THEN 2 
        WHEN 'Revision' THEN 3 
        ELSE 4 END,
      CASE t.prioridad -- Orden lógico: Alta, Media, Baja
        WHEN 'Alta' THEN 1 
        WHEN 'Media' THEN 2 
        WHEN 'Baja' THEN 3 
        ELSE 4 END,
      ISNULL(t.fechaObjetivo, '9999-12-31') ASC;

  -----------------------------------------------------------------------
  -- 3) Mis bloqueos activos
  -----------------------------------------------------------------------
  SELECT
      b.idBloqueo,
      b.idTarea,
      t.nombre AS Tarea,
      b.descripcion AS Motivo,
      u.nombre AS BloqueadoPor,
      b.fechaCreacion,
      b.estado
  FROM dbo.p_Bloqueos b
  LEFT JOIN dbo.p_Usuarios u ON u.idUsuario = b.idUsuario
  LEFT JOIN dbo.p_Tareas   t ON t.idTarea   = b.idTarea
  WHERE b.idUsuario = @IdUsuario
    AND b.estado = 'Activo'
  ORDER BY b.fechaCreacion DESC;

  -----------------------------------------------------------------------
  -- 4) Selector de tareas pendientes (Backlog)
  -----------------------------------------------------------------------
  SELECT
      t.idTarea,
      t.nombre AS Titulo,
      t.estado,
      t.prioridad,
      t.esfuerzo,
      ISNULL(p.nombre, '(Personal)') AS Proyecto,
      t.fechaObjetivo,
      t.idProyecto
  FROM dbo.p_Tareas t
  INNER JOIN dbo.p_TareaAsignados ta ON ta.idTarea = t.idTarea
  LEFT  JOIN dbo.p_Proyectos p       ON p.idProyecto = t.idProyecto
  WHERE ta.idUsuario = @IdUsuario
    AND t.estado IN ('Pendiente','EnCurso','Bloqueada','Revision')
  ORDER BY
      CASE t.estado WHEN 'EnCurso' THEN 1 WHEN 'Bloqueada' THEN 2 ELSE 3 END,
      CASE t.prioridad WHEN 'Alta' THEN 1 WHEN 'Media' THEN 2 ELSE 3 END,
      ISNULL(t.fechaObjetivo, '9999-12-31') ASC;
END;

GO

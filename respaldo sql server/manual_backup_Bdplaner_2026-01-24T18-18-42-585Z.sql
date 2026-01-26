-- Manual Backup for Bdplaner
-- Date: 2026-01-24T18:18:52.553Z

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

-- Table: p_TareaAsignacionLog

-- Table: p_TareaAsignados
SET IDENTITY_INSERT [p_TareaAsignados] ON;
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (1, 3, 1, 0, '2026-01-21 07:28:12', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (2, 4, 1, 0, '2026-01-21 07:28:50', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (3, 6, 1, 0, '2026-01-21 07:44:02', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (4, 7, 1, 0, '2026-01-21 07:47:13', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (5, 10, 1, 0, '2026-01-21 08:04:26', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (6, 11, 1, 0, '2026-01-21 08:05:39', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (7, 13, 1, 0, '2026-01-21 08:08:49', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (8, 14, 1, 0, '2026-01-21 10:41:37', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (9, 16, 1, 0, '2026-01-21 10:46:55', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (10, 18, 1, 0, '2026-01-21 10:54:38', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (11, 19, 1, 0, '2026-01-21 11:04:29', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (12, 21, 1, 0, '2026-01-21 11:07:30', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (13, 22, 1, 0, '2026-01-21 11:17:20', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (14, 23, 1, 0, '2026-01-21 11:21:42', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (15, 24, 1, 0, '2026-01-21 11:24:28', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (16, 25, 1, 0, '2026-01-21 11:25:34', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (17, 26, 1, 0, '2026-01-21 11:55:39', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (18, 27, 1, 0, '2026-01-21 15:25:37', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (19, 28, 23, 0, '2026-01-21 15:26:42', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (21, 30, 23, 0, '2026-01-21 15:39:10', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (22, 31, 3, 0, '2026-01-21 16:06:20', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (23, 32, 3, 0, '2026-01-21 17:36:22', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (24, 33, 3, 0, '2026-01-21 17:36:23', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (25, 34, 3, 0, '2026-01-21 17:36:24', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (26, 35, 3, 0, '2026-01-21 17:36:24', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (27, 36, 3, 0, '2026-01-21 17:40:57', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (28, 37, 3, 0, '2026-01-21 17:42:24', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (29, 38, 3, 0, '2026-01-21 17:46:51', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (30, 39, 3, 0, '2026-01-21 17:47:42', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (31, 40, 3, 0, '2026-01-21 17:48:56', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (32, 41, 3, 0, '2026-01-21 18:25:54', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (33, 42, 3, 0, '2026-01-21 18:31:32', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (34, 43, 3, 0, '2026-01-21 19:05:26', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (35, 44, 32, 0, '2026-01-21 20:46:56', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (36, 45, 38, 0, '2026-01-21 20:54:38', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (37, 46, 23, 0, '2026-01-21 21:06:35', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (38, 47, 23, 0, '2026-01-21 21:16:04', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (39, 48, 1, 0, '2026-01-21 22:58:45', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (40, 49, 1, 0, '2026-01-22 00:07:56', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (41, 50, 23, 0, '2026-01-22 00:35:26', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (42, 51, 24, 0, '2026-01-22 03:48:44', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (43, 52, 24, 0, '2026-01-22 04:11:45', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (44, 50, 24, 0, '2026-01-22 04:18:36', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (45, 53, 23, 0, '2026-01-22 04:38:00', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (46, 29, 20, 0, '2026-01-22 04:43:52', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (47, 54, 23, 0, '2026-01-22 04:46:00', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (48, 55, 23, 0, '2026-01-22 04:46:09', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (49, 56, 39, 0, '2026-01-22 05:20:32', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (50, 57, 23, 0, '2026-01-22 06:47:14', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (51, 58, 24, 0, '2026-01-22 13:05:27', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (52, 59, 24, 0, '2026-01-22 13:05:42', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (53, 60, 24, 0, '2026-01-22 13:05:56', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (54, 61, 34, 0, '2026-01-22 13:10:29', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (55, 62, 34, 0, '2026-01-22 13:12:02', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (56, 63, 24, 0, '2026-01-22 13:13:26', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (57, 64, 23, 0, '2026-01-22 13:17:11', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (58, 65, 4, 0, '2026-01-22 13:20:08', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (59, 66, 23, 0, '2026-01-22 13:23:16', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (60, 67, 23, 0, '2026-01-22 13:24:41', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (61, 68, 23, 0, '2026-01-22 14:06:43', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (62, 69, 23, 0, '2026-01-22 14:10:03', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (63, 70, 23, 0, '2026-01-22 14:14:57', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (64, 71, 23, 0, '2026-01-22 14:17:21', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (65, 72, 23, 0, '2026-01-22 14:17:33', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (66, 73, 23, 0, '2026-01-22 14:19:06', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (67, 74, 34, 0, '2026-01-22 14:56:31', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (68, 75, 31, 0, '2026-01-22 15:20:17', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (69, 76, 29, 0, '2026-01-22 15:32:19', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (70, 77, 7, 0, '2026-01-22 15:33:07', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (71, 78, 14, 0, '2026-01-22 15:35:04', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (72, 79, 30, 0, '2026-01-22 15:37:04', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (73, 80, 7, 0, '2026-01-22 15:37:51', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (74, 81, 7, 0, '2026-01-22 15:42:47', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (75, 82, 7, 0, '2026-01-22 15:44:03', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (76, 83, 7, 0, '2026-01-22 15:45:42', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (77, 84, 2, 0, '2026-01-22 15:45:50', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (78, 85, 31, 0, '2026-01-22 15:46:22', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (79, 86, 7, 0, '2026-01-22 15:47:08', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (80, 87, 16, 0, '2026-01-22 15:59:54', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (81, 88, 16, 0, '2026-01-22 16:02:41', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (82, 89, 16, 0, '2026-01-22 16:04:18', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (83, 90, 39, 0, '2026-01-22 16:04:30', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (84, 91, 36, 0, '2026-01-22 16:05:25', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (85, 91, 37, 0, '2026-01-22 16:05:44', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (86, 92, 34, 0, '2026-01-22 16:08:18', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (87, 93, 1, 0, '2026-01-22 16:12:11', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (88, 94, 17, 0, '2026-01-22 16:13:18', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (89, 95, 25, 0, '2026-01-22 16:14:13', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (90, 96, 16, 0, '2026-01-22 16:16:20', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (91, 97, 4, 0, '2026-01-22 16:16:23', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (92, 98, 30, 0, '2026-01-22 16:19:58', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (93, 99, 40, 0, '2026-01-22 16:22:42', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (94, 100, 36, 0, '2026-01-22 16:23:33', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (95, 101, 4, 0, '2026-01-22 16:24:46', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (96, 102, 40, 0, '2026-01-22 16:24:55', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (97, 103, 30, 0, '2026-01-22 16:25:13', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (98, 99, 39, 0, '2026-01-22 16:25:15', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (99, 104, 40, 0, '2026-01-22 16:25:59', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (100, 105, 34, 0, '2026-01-22 16:27:09', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (101, 106, 30, 0, '2026-01-22 16:29:22', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (102, 107, 36, 0, '2026-01-22 16:33:22', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (103, 108, 41, 0, '2026-01-22 16:36:30', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (104, 109, 3, 0, '2026-01-22 16:40:36', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (105, 110, 41, 0, '2026-01-22 16:42:46', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (106, 111, 21, 0, '2026-01-22 16:43:49', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (107, 112, 12, 0, '2026-01-22 16:44:33', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (108, 113, 3, 0, '2026-01-22 16:45:38', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (109, 114, 21, 0, '2026-01-22 16:46:28', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (110, 115, 21, 0, '2026-01-22 16:50:30', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (111, 116, 34, 0, '2026-01-22 16:50:31', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (113, 118, 6, 0, '2026-01-22 16:52:27', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (116, 120, 21, 0, '2026-01-22 16:54:00', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (117, 121, 40, 0, '2026-01-22 16:54:47', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (118, 122, 20, 0, '2026-01-22 16:55:01', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (119, 123, 34, 0, '2026-01-22 16:59:05', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (120, 124, 1, 0, '2026-01-22 16:59:16', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (121, 125, 6, 0, '2026-01-22 17:00:27', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (122, 126, 25, 0, '2026-01-22 17:00:44', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (123, 127, 34, 0, '2026-01-22 17:04:42', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (124, 128, 39, 0, '2026-01-22 17:27:40', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (125, 129, 41, 0, '2026-01-22 17:33:59', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (126, 130, 41, 0, '2026-01-22 17:38:07', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (127, 131, 41, 0, '2026-01-22 17:40:08', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (128, 132, 41, 0, '2026-01-22 17:44:59', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (129, 133, 41, 0, '2026-01-22 17:48:27', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (130, 134, 41, 0, '2026-01-22 17:50:23', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (131, 135, 30, 0, '2026-01-22 19:37:05', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (132, 136, 30, 0, '2026-01-22 19:38:58', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (133, 137, 30, 0, '2026-01-22 19:41:16', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (134, 138, 30, 0, '2026-01-22 19:43:33', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (135, 139, 30, 0, '2026-01-22 19:45:27', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (136, 140, 30, 0, '2026-01-22 19:46:31', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (137, 141, 30, 0, '2026-01-22 19:48:36', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (138, 142, 29, 0, '2026-01-22 22:12:19', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (139, 143, 29, 0, '2026-01-22 22:12:21', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (140, 144, 29, 0, '2026-01-22 22:12:22', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (141, 145, 29, 0, '2026-01-22 22:12:23', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (142, 146, 29, 0, '2026-01-22 22:12:24', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (143, 147, 30, 0, '2026-01-22 23:48:50', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (144, 148, 1, 0, '2026-01-23 15:26:08', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (145, 149, 30, 0, '2026-01-23 17:07:05', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (146, 150, 6, 0, '2026-01-23 17:15:19', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (147, 151, 30, 0, '2026-01-23 17:23:54', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (148, 152, 30, 0, '2026-01-23 17:27:41', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (149, 153, 30, 0, '2026-01-23 17:31:44', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (150, 154, 30, 0, '2026-01-23 17:38:18', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (151, 155, 30, 0, '2026-01-23 21:46:22', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (152, 156, 30, 0, '2026-01-23 21:47:41', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (153, 157, 24, 0, '2026-01-23 22:33:02', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (154, 158, 16, 0, '2026-01-23 22:33:56', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (155, 159, 24, 0, '2026-01-23 22:35:28', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (156, 160, 23, 0, '2026-01-23 22:43:48', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (157, 161, 23, 0, '2026-01-23 22:55:32', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (158, 162, 29, 0, '2026-01-23 23:29:27', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (159, 163, 26, 0, '2026-01-23 23:33:25', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (160, 164, 12, 0, '2026-01-23 23:39:57', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (161, 165, 12, 0, '2026-01-23 23:51:57', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (162, 166, 12, 0, '2026-01-24 00:01:51', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (163, 167, 12, 0, '2026-01-24 00:21:58', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (164, 168, 26, 0, '2026-01-24 00:58:37', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (165, 169, 12, 0, '2026-01-24 00:58:48', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (166, 170, 26, 0, '2026-01-24 01:00:45', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (167, 171, 26, 0, '2026-01-24 01:02:21', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (168, 172, 28, 0, '2026-01-24 01:04:18', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (169, 173, 26, 0, '2026-01-24 01:06:01', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (170, 174, 12, 0, '2026-01-24 01:06:49', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (171, 175, 26, 0, '2026-01-24 01:07:34', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (172, 176, 26, 0, '2026-01-24 01:09:11', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (173, 177, 26, 0, '2026-01-24 01:10:22', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (174, 178, 12, 0, '2026-01-24 01:12:20', 'Responsable');
INSERT INTO [p_TareaAsignados] ([id], [idTarea], [idUsuario], [esResponsable], [fechaAsignacion], [tipo]) VALUES (175, 179, 26, 0, '2026-01-24 01:12:48', 'Responsable');
SET IDENTITY_INSERT [p_TareaAsignados] OFF;

-- Table: p_TareaAvanceMensual
SET IDENTITY_INSERT [p_TareaAvanceMensual] ON;
INSERT INTO [p_TareaAvanceMensual] ([id], [idTarea], [mes], [anio], [porcentajeMes], [comentario], [idUsuarioActualizador], [fechaActualizacion]) VALUES (1, 38, 1, 2026, 25, 'Avance test', 3, '2026-01-21 17:46:53');
INSERT INTO [p_TareaAvanceMensual] ([id], [idTarea], [mes], [anio], [porcentajeMes], [comentario], [idUsuarioActualizador], [fechaActualizacion]) VALUES (2, 39, 1, 2026, 25, NULL, 3, '2026-01-21 17:47:43');
INSERT INTO [p_TareaAvanceMensual] ([id], [idTarea], [mes], [anio], [porcentajeMes], [comentario], [idUsuarioActualizador], [fechaActualizacion]) VALUES (3, 40, 1, 2026, 25, NULL, 3, '2026-01-21 17:48:57');
INSERT INTO [p_TareaAvanceMensual] ([id], [idTarea], [mes], [anio], [porcentajeMes], [comentario], [idUsuarioActualizador], [fechaActualizacion]) VALUES (4, 42, 1, 2026, 25, NULL, 3, '2026-01-21 18:31:35');
INSERT INTO [p_TareaAvanceMensual] ([id], [idTarea], [mes], [anio], [porcentajeMes], [comentario], [idUsuarioActualizador], [fechaActualizacion]) VALUES (5, 47, 1, 2026, 20, NULL, 1, '2026-01-21 22:57:38');
INSERT INTO [p_TareaAvanceMensual] ([id], [idTarea], [mes], [anio], [porcentajeMes], [comentario], [idUsuarioActualizador], [fechaActualizacion]) VALUES (6, 47, 3, 2026, 0, NULL, 1, '2026-01-21 22:28:07');
INSERT INTO [p_TareaAvanceMensual] ([id], [idTarea], [mes], [anio], [porcentajeMes], [comentario], [idUsuarioActualizador], [fechaActualizacion]) VALUES (7, 47, 2, 2026, 0, NULL, 1, '2026-01-21 22:28:02');
SET IDENTITY_INSERT [p_TareaAvanceMensual] OFF;

-- Table: p_TareaAvances

-- Table: p_TareaInstancia
SET IDENTITY_INSERT [p_TareaInstancia] ON;
INSERT INTO [p_TareaInstancia] ([id], [idTarea], [idRecurrencia], [fechaProgramada], [fechaEjecucion], [estadoInstancia], [comentario], [idUsuarioEjecutor], [fechaRegistro], [fechaReprogramada]) VALUES (1, 39, 2, '2026-01-21 00:00:00', '2026-01-21 00:00:00', 'HECHA', 'Test', 3, '2026-01-21 17:47:43', NULL);
INSERT INTO [p_TareaInstancia] ([id], [idTarea], [idRecurrencia], [fechaProgramada], [fechaEjecucion], [estadoInstancia], [comentario], [idUsuarioEjecutor], [fechaRegistro], [fechaReprogramada]) VALUES (2, 40, 3, '2026-01-21 00:00:00', '2026-01-21 00:00:00', 'HECHA', 'Test', 3, '2026-01-21 17:48:57', NULL);
INSERT INTO [p_TareaInstancia] ([id], [idTarea], [idRecurrencia], [fechaProgramada], [fechaEjecucion], [estadoInstancia], [comentario], [idUsuarioEjecutor], [fechaRegistro], [fechaReprogramada]) VALUES (3, 42, 4, '2026-01-21 00:00:00', '2026-01-21 00:00:00', 'HECHA', 'Test', 3, '2026-01-21 18:31:34', NULL);
SET IDENTITY_INSERT [p_TareaInstancia] OFF;

-- Table: p_TareaRecurrencia
SET IDENTITY_INSERT [p_TareaRecurrencia] ON;
INSERT INTO [p_TareaRecurrencia] ([id], [idTarea], [tipoRecurrencia], [diasSemana], [diaMes], [fechaInicioVigencia], [fechaFinVigencia], [activo], [fechaCreacion], [idCreador]) VALUES (1, 38, 'SEMANAL', '1,3,5', NULL, '2026-01-01 00:00:00', '2026-12-31 00:00:00', 1, '2026-01-21 17:46:52', 3);
INSERT INTO [p_TareaRecurrencia] ([id], [idTarea], [tipoRecurrencia], [diasSemana], [diaMes], [fechaInicioVigencia], [fechaFinVigencia], [activo], [fechaCreacion], [idCreador]) VALUES (2, 39, 'SEMANAL', '1,3,5', NULL, '2026-01-01 00:00:00', NULL, 1, '2026-01-21 17:47:42', 3);
INSERT INTO [p_TareaRecurrencia] ([id], [idTarea], [tipoRecurrencia], [diasSemana], [diaMes], [fechaInicioVigencia], [fechaFinVigencia], [activo], [fechaCreacion], [idCreador]) VALUES (3, 40, 'SEMANAL', '1,3,5', NULL, '2026-01-01 00:00:00', NULL, 1, '2026-01-21 17:48:56', 3);
INSERT INTO [p_TareaRecurrencia] ([id], [idTarea], [tipoRecurrencia], [diasSemana], [diaMes], [fechaInicioVigencia], [fechaFinVigencia], [activo], [fechaCreacion], [idCreador]) VALUES (4, 42, 'SEMANAL', '1,3,5', NULL, '2026-01-01 00:00:00', NULL, 1, '2026-01-21 18:31:33', 3);
SET IDENTITY_INSERT [p_TareaRecurrencia] OFF;

-- Table: p_Tareas
SET IDENTITY_INSERT [p_Tareas] ON;
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (3, NULL, 'Test 1768980499046', NULL, 'Descartada', 'Media', '2026-01-21 07:28:12', '2026-01-21 16:08:36', NULL, 0, NULL, 0, 0, NULL, 'tarea', NULL, 1, NULL, 'Administrativa', 'M', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (4, NULL, 'TestLog', NULL, 'Descartada', 'Media', '2026-01-21 07:28:50', '2026-01-21 16:08:36', NULL, 0, NULL, 0, 0, NULL, 'tarea', NULL, 1, NULL, 'Administrativa', 'M', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (5, NULL, 'Diagnostico GPT', NULL, 'Pendiente', 'Media', '2026-01-21 07:42:37', '2026-01-21 16:08:36', NULL, 0, NULL, 0, 0, NULL, 'tarea', NULL, 123, '2026-01-21 07:42:37', 'Administrativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (6, NULL, 'TestLog', NULL, 'Descartada', 'Media', '2026-01-21 07:44:02', '2026-01-21 16:08:36', NULL, 0, NULL, 0, 0, NULL, 'tarea', NULL, 1, NULL, 'Administrativa', 'M', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (7, NULL, 'TestLog', NULL, 'Descartada', 'Media', '2026-01-21 07:47:13', '2026-01-21 16:08:36', NULL, 0, NULL, 0, 0, NULL, 'tarea', NULL, 1, NULL, 'Administrativa', 'M', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (8, NULL, 'Tarea Via SP 1768981787827', NULL, 'Pendiente', 'Media', '2026-01-21 07:49:41', '2026-01-21 16:08:36', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 07:49:41', 999, NULL, 'Administrativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (9, NULL, 'Tarea Full SP', NULL, 'Pendiente', 'Media', '2026-01-21 07:51:38', '2026-01-21 16:08:36', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 07:51:38', 123, NULL, 'Administrativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (10, NULL, 'TestLog', NULL, 'Descartada', 'Media', '2026-01-21 08:04:26', '2026-01-21 16:08:36', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 08:04:26', 1, NULL, 'Administrativa', 'M', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (11, NULL, 'TestLog', NULL, 'Pendiente', 'Media', '2026-01-21 08:05:38', '2026-01-21 16:08:36', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 08:05:38', 1, NULL, 'Administrativa', 'M', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (12, NULL, 'TestSP_Direct', NULL, 'Pendiente', 'Media', '2026-01-21 08:06:52', '2026-01-21 16:08:36', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 08:06:52', 999, NULL, 'Administrativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (13, NULL, 'TestLog', NULL, 'Pendiente', 'Media', '2026-01-21 08:08:48', '2026-01-21 16:08:36', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 08:08:48', 1, NULL, 'Administrativa', 'M', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (14, NULL, 'TestLog', NULL, 'Pendiente', 'Media', '2026-01-21 10:41:37', '2026-01-21 16:08:36', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 10:41:37', 1, NULL, 'Administrativa', 'M', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (15, NULL, 'TestSP_Direct', NULL, 'Pendiente', 'Media', '2026-01-21 10:44:32', '2026-01-21 16:08:36', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 10:44:32', 999, NULL, 'Administrativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (16, NULL, 'TestLog', NULL, 'Pendiente', 'Media', '2026-01-21 10:46:55', '2026-01-21 16:08:36', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 10:46:55', 1, NULL, 'Administrativa', 'M', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (17, NULL, 'Test Diagnostico 1768992782008', NULL, 'Pendiente', 'Media', '2026-01-21 10:52:56', '2026-01-21 16:08:36', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 10:52:56', 1, NULL, 'Administrativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (18, NULL, 'TestLog', NULL, 'Pendiente', 'Media', '2026-01-21 10:54:38', '2026-01-21 16:08:36', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 10:54:38', 1, NULL, 'Administrativa', 'M', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (19, NULL, 'TestLog', NULL, 'Pendiente', 'Media', '2026-01-21 11:04:28', '2026-01-21 16:08:36', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 11:04:28', 1, NULL, 'Administrativa', 'M', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (20, NULL, 'TestDirect_1768993526802', NULL, 'Pendiente', 'Media', '2026-01-21 11:05:20', '2026-01-21 16:08:36', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 11:05:20', 1, NULL, 'Administrativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (21, NULL, 'TestLog', NULL, 'Pendiente', 'Media', '2026-01-21 11:07:30', '2026-01-21 16:08:36', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 11:07:30', 1, NULL, 'Administrativa', 'M', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (22, NULL, 'TestLog', NULL, 'Pendiente', 'Media', '2026-01-21 11:17:20', '2026-01-21 16:08:36', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 11:17:20', 1, NULL, 'Administrativa', 'M', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (23, NULL, 'TestLog', NULL, 'Pendiente', 'Media', '2026-01-21 11:21:42', '2026-01-21 16:08:36', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 11:21:42', 1, NULL, 'Administrativa', 'M', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (24, NULL, 'TestLog', NULL, 'Pendiente', 'Media', '2026-01-21 11:24:28', '2026-01-21 16:08:36', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 11:24:28', 1, NULL, 'Administrativa', 'M', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (25, NULL, 'PRUEBA', NULL, 'Pendiente', 'Alta', '2026-01-21 11:25:33', '2026-01-21 16:08:36', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 11:25:33', 1, NULL, 'Administrativa', 'L', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (26, NULL, 'prueba', 'prueba', 'Pendiente', 'Alta', '2026-01-21 11:55:39', '2026-01-21 16:08:36', NULL, 45, NULL, 0, 0, NULL, 'tarea', '2026-01-21 11:55:39', 1, NULL, 'Administrativa', 'L', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (27, NULL, 'prueba', NULL, 'Hecha', 'Alta', '2026-01-21 15:25:36', '2026-01-21 16:08:36', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 15:25:36', 1, NULL, 'Administrativa', 'L', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (28, NULL, 'prueba', NULL, 'Descartada', 'Alta', '2026-01-21 15:26:42', '2026-01-29 04:45:04', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 15:26:42', 23, NULL, 'Administrativa', 'L', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (29, NULL, 'otro', NULL, 'Descartada', 'Baja', '2026-01-21 15:38:56', '2026-01-22 04:45:39', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 15:38:56', 23, NULL, 'Administrativa', 'M', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (30, NULL, 'prueba 3', '', 'Descartada', 'Alta', '2026-01-21 15:39:10', '2026-01-23 00:00:00', NULL, 15, NULL, 0, 0, NULL, 'tarea', '2026-01-21 15:39:10', 23, '2026-01-19 00:00:00', 'Administrativa', 'L', '2026-01-22 13:06:48', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (31, NULL, 'tarea', '', 'Pendiente', 'Alta', '2026-01-21 16:06:19', '2026-01-23 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 16:06:19', 3, '2026-01-21 00:00:00', 'Administrativa', 'L', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (32, NULL, 'Tarea Recurrente Test 1769016981608', 'Prueba de recurrencia semanal', 'Pendiente', 'Media', '2026-01-21 17:36:21', '2026-01-21 17:36:21', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 17:36:21', 3, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (33, NULL, 'Tarea Larga Test 1769016982420', 'Prueba de avance mensual', 'Pendiente', 'Alta', '2026-01-21 17:36:22', '2026-01-21 17:36:22', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 17:36:22', 3, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (34, NULL, 'Proyecto con Fases 1769016983505', 'Tarea contenedor', 'Pendiente', 'Alta', '2026-01-21 17:36:23', '2026-01-21 17:36:23', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 17:36:23', 3, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (35, NULL, 'Fase 2: Desarrollo', 'Segunda fase', 'Pendiente', 'Media', '2026-01-21 17:36:24', '2026-01-21 17:36:24', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 17:36:24', 3, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (36, NULL, 'Tarea Prueba ABC 1769017256432', 'Test', 'Pendiente', 'Media', '2026-01-21 17:40:56', '2026-01-21 17:40:56', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 17:40:56', 3, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (37, NULL, 'Tarea Prueba ABC 1769017343685', 'Test', 'Pendiente', 'Media', '2026-01-21 17:42:23', '2026-01-21 17:42:23', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 17:42:23', 3, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (38, NULL, 'Tarea Prueba ABC 1769017611081', 'Test', 'Pendiente', 'Media', '2026-01-21 17:46:51', '2026-01-21 17:46:51', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 17:46:51', 3, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (39, NULL, 'Test ABC 1769017661685', NULL, 'Pendiente', 'Media', '2026-01-21 17:47:41', '2026-01-21 17:47:41', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 17:47:41', 3, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (40, NULL, 'Test ABC 1769017735604', NULL, 'Pendiente', 'Media', '2026-01-21 17:48:55', '2026-01-21 17:48:55', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 17:48:55', 3, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', 40, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (41, NULL, 'prueba', NULL, 'Pendiente', 'Alta', '2026-01-21 18:25:53', '2026-01-21 18:25:52', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 18:25:53', 3, NULL, 'Administrativa', 'L', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (42, NULL, 'Test ABC 1769020292005', NULL, 'Pendiente', 'Media', '2026-01-21 18:31:32', '2026-01-21 18:31:32', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 18:31:32', 3, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', 42, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (43, NULL, 'prueba', NULL, 'Pendiente', 'Media', '2026-01-21 19:05:26', '2026-01-21 19:05:25', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 19:05:26', 3, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (44, 55, 'prueba', 'prueba 1', 'Pendiente', 'Media', '2026-01-21 20:46:56', '2026-01-22 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 20:46:56', 1, '2026-01-22 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (45, 55, 'a', 'd', 'Pendiente', 'Media', '2026-01-21 20:54:38', '2026-01-29 00:00:00', NULL, 25, NULL, 0, 0, NULL, 'tarea', '2026-01-21 20:54:38', 1, '2026-01-23 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (46, 55, 'f', 'f', 'Descartada', 'Media', '2026-01-21 21:06:34', '2026-12-31 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 21:06:34', 1, '2026-01-01 00:00:00', 'Administrativa', 'M', NULL, NULL, 'LARGA', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (47, 55, 'x', 'x', 'Descartada', 'Baja', '2026-01-21 21:16:03', '2026-12-31 00:00:00', NULL, 20, NULL, 0, 0, NULL, 'tarea', '2026-01-21 21:16:03', 1, '2026-01-01 00:00:00', 'Administrativa', 'M', NULL, NULL, 'LARGA', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (48, NULL, 'revision de programa', NULL, 'Pendiente', 'Alta', '2026-01-21 22:58:45', '2026-01-21 22:58:44', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-21 22:58:45', 1, NULL, 'Administrativa', 'L', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (49, NULL, 'prueba de software', NULL, 'Pendiente', 'Media', '2026-01-22 00:07:56', '2026-01-22 00:07:56', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 00:07:56', 1, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (50, 55, 'Revision del portal de la iso', NULL, 'Pendiente', 'Media', '2026-01-22 00:35:25', '2026-01-30 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 00:35:25', 24, '2026-01-27 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (51, NULL, 'prueba siaf', NULL, 'Descartada', 'Media', '2026-01-22 03:48:43', '2026-01-22 03:48:43', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 03:48:43', 24, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (52, 55, 'o', 'o', 'Pendiente', 'Media', '2026-01-22 04:11:45', '2026-01-31 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 04:11:45', 24, '2026-01-22 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (53, NULL, 'prueb', NULL, 'Descartada', 'Media', '2026-01-22 04:38:00', '2026-01-22 04:38:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 04:38:00', 23, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (54, NULL, 'p', NULL, 'Descartada', 'Media', '2026-01-22 04:46:00', '2026-01-22 04:46:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 04:46:00', 23, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (55, NULL, 'sadasd', NULL, 'Descartada', 'Baja', '2026-01-22 04:46:08', '2026-01-22 04:46:08', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 04:46:08', 23, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (56, 60, 's', 's', 'Pendiente', 'Media', '2026-01-22 05:20:32', '2026-01-30 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 05:20:32', 39, '2026-01-20 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (57, NULL, 'prueba 333', '', 'EnCurso', 'Media', '2026-01-22 06:47:14', '2026-01-22 00:00:00', NULL, 30, NULL, 0, 0, NULL, 'tarea', '2026-01-22 06:47:14', 23, NULL, 'Administrativa', 'M', '2026-01-22 13:43:52', NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (58, NULL, 'Presentación Planificador RRHH', NULL, 'Pendiente', 'Alta', '2026-01-22 13:05:27', '2026-01-22 13:05:27', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 13:05:27', 24, NULL, 'Administrativa', 'L', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (59, NULL, 'Reporte de Sustentabilidad', NULL, 'Pendiente', 'Media', '2026-01-22 13:05:42', '2026-01-22 13:05:42', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 13:05:42', 24, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (60, NULL, 'Validación históricos Sigho', NULL, 'Pendiente', 'Baja', '2026-01-22 13:05:56', '2026-01-22 13:05:56', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 13:05:56', 24, NULL, 'Administrativa', 'S', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (61, 61, 'Preparación de Workbook de Reclutamiento', NULL, 'Pendiente', 'Alta', '2026-01-22 13:10:29', '2026-01-31 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 13:10:29', 24, '2026-01-19 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (62, 61, 'Preparación de Workbook para Onboarding', 'completa', 'EnCurso', 'Media', '2026-01-22 13:12:02', '2026-06-30 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 13:12:02', 24, '2026-01-18 00:00:00', 'Administrativa', 'M', '2026-01-22 16:01:02', NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (63, 61, 'Unificar Workbook Reclutamiento CENAM', 'Preparar layout regional para entrega a consultores', 'Pendiente', 'Alta', '2026-01-22 13:13:26', '2026-01-30 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 13:13:26', 24, '2026-01-26 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (64, 62, 'Validar documento de diseño', NULL, 'Hecha', 'Media', '2026-01-22 13:17:11', '2025-11-28 00:00:00', NULL, 100, NULL, 0, 0, NULL, 'tarea', '2026-01-22 13:17:11', 23, '2025-11-01 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (65, 62, 'Pruebas de configuracion Fichas de Hora', 'Validar de acuerdo a documento de diseño el funcionamiento y cálculo de tiempo.', 'Pendiente', 'Media', '2026-01-22 13:20:08', '2026-01-31 00:00:00', NULL, 50, NULL, 0, 0, NULL, 'tarea', '2026-01-22 13:20:08', 23, '2025-12-01 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (66, NULL, 'Validacion de Registro de horas extras Sigho', NULL, 'Pendiente', 'Alta', '2026-01-22 13:23:16', '2026-01-22 13:23:16', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 13:23:16', 23, NULL, 'Administrativa', 'L', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (67, 62, 'Validar integracion de horas extras a Nómina', NULL, 'Pendiente', 'Media', '2026-01-22 13:24:41', '2026-01-24 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 13:24:41', 23, '2026-01-19 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (68, NULL, 'xx', NULL, 'Pendiente', 'Media', '2026-01-22 14:06:42', '2026-01-22 14:06:42', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 14:06:42', 23, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (69, NULL, 'prueba', NULL, 'Pendiente', 'Media', '2026-01-22 14:10:02', '2026-01-22 14:10:02', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 14:10:02', 23, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (70, NULL, 'll', NULL, 'Pendiente', 'Media', '2026-01-22 14:14:57', '2026-01-22 14:14:57', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 14:14:57', 23, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (71, NULL, 'zz', NULL, 'Pendiente', 'Media', '2026-01-22 14:17:20', '2026-01-22 14:17:20', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 14:17:20', 23, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (72, NULL, 'vv', NULL, 'Pendiente', 'Media', '2026-01-22 14:17:32', '2026-01-22 14:17:32', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 14:17:32', 23, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (73, NULL, 'cc', NULL, 'Pendiente', 'Baja', '2026-01-22 14:19:05', '2026-01-22 14:19:05', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 14:19:05', 23, NULL, 'Administrativa', 'S', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (74, NULL, 'Reunion con el area compensacion', NULL, 'EnCurso', 'Alta', '2026-01-22 14:56:31', '2026-01-22 14:56:31', NULL, 25, NULL, 0, 0, NULL, 'tarea', '2026-01-22 14:56:31', 34, NULL, 'Administrativa', 'L', '2026-01-22 16:48:16', NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (75, NULL, 'revisa cv', NULL, 'Pendiente', 'Alta', '2026-01-22 15:20:17', '2026-01-22 15:20:17', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 15:20:17', 31, NULL, 'Administrativa', 'L', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (76, NULL, 'Bienestar Social', NULL, 'EnCurso', 'Alta', '2026-01-22 15:32:19', '2026-01-22 15:32:19', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 15:32:19', 29, NULL, 'Administrativa', 'L', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (77, 63, 'Auditoria Interna 2026', 'Garantizar la revisión del 100% de los procesos del alcance call center mediante auditoría presencial en el mes de julio 2026', 'EnCurso', 'Media', '2026-01-22 15:33:07', '2026-07-10 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 15:33:07', 7, '2026-04-06 00:00:00', 'Estrategica', 'L', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (78, 65, 'Planificacion', 'xxxx', 'Pendiente', 'Media', '2026-01-22 15:35:03', '2026-01-23 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 15:35:03', 16, '2026-01-22 00:00:00', 'Estrategica', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (79, NULL, 'Asegurar el control eficiente del presupuesto y gastos operativos (OPEX) de Gerencia', NULL, 'Descartada', 'Alta', '2026-01-22 15:37:04', '2026-01-22 15:37:04', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 15:37:04', 30, NULL, 'Administrativa', 'L', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (80, NULL, 'Listado nuevos auditores internos 2026', '', 'EnCurso', 'Media', '2026-01-22 15:37:51', '2026-01-22 00:00:00', NULL, 100, NULL, 0, 0, NULL, 'tarea', '2026-01-22 15:37:51', 7, '2026-01-22 00:00:00', 'Administrativa', 'M', '2026-01-22 16:41:09', '2026-01-22 16:41:09', 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (81, 69, 'Actualización de matrices IPER procesos estratégicos', 'Realizar actualización del 100% de todos los procesos estratégicos del alcance corporativo', 'EnCurso', 'Media', '2026-01-22 15:42:47', '2026-04-02 00:00:00', NULL, 20, NULL, 0, 0, NULL, 'tarea', '2026-01-22 15:42:47', 7, '2026-02-02 00:00:00', 'Estrategica', 'M', '2026-01-22 16:40:59', NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (82, 69, 'Actualización de matrices IPER procesos clave', 'Actualizar matrices de riesgo de los procesos clave del alcance corporativo ( Gerencia Técnica)', 'Pendiente', 'Media', '2026-01-22 15:44:03', '2026-06-30 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 15:44:03', 7, '2026-03-02 00:00:00', 'Estrategica', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (83, 69, 'Actualización de matrices IPER procesos de apoyo', 'Matrices IPER procesos de apoyo ( Gerencias: Compras, RR.HH., Comunicación)', 'Pendiente', 'Media', '2026-01-22 15:45:42', '2026-08-30 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 15:45:42', 7, '2026-06-30 00:00:00', 'Estrategica', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (84, NULL, 'Conciliación de combustible 2024', 'conciliaciones lista , solo falta el cierre en SIAF', 'Pendiente', 'Media', '2026-01-22 15:45:50', '2026-02-09 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 15:45:50', 2, '2026-01-21 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (85, 68, 'Publicación de vacante', 'Realizar publicación de plazas vacante en medíos internos y externo', 'EnCurso', 'Alta', '2026-01-22 15:46:22', '2026-02-28 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 15:46:22', 34, '2026-01-05 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (86, NULL, 'Actualización matrices de cuentas corporativas ( Subgerencia de ventas Pyme)', NULL, 'Hecha', 'Media', '2026-01-22 15:47:08', '2026-01-22 15:47:08', NULL, 100, NULL, 0, 0, NULL, 'tarea', '2026-01-22 15:47:08', 7, NULL, 'Administrativa', 'M', '2026-01-22 15:49:49', '2026-01-22 15:49:49', 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (87, 70, 'Capacitación en valoración de puestos', 'Lograr capacitar en valoración de puestos al 100% del equipo de compensación, en un periodo de febrero a marzo 2026', 'Pendiente', 'Media', '2026-01-22 15:59:54', '2026-03-15 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 15:59:54', 16, '2026-02-03 00:00:00', 'Estrategica', 'L', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (88, NULL, 'Explicación de la metodologia de valoración de puestos', '', 'Pendiente', 'Media', '2026-01-22 16:02:41', '2026-02-03 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:02:41', 16, '2026-02-03 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (89, NULL, 'Valoración de puestos Gerente General', '', 'Pendiente', 'Media', '2026-01-22 16:04:18', '2026-02-04 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:04:18', 16, '2026-02-04 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (90, 71, 'Tramite de licencia H&S SDRH - CAC Masaya', '- Preparación de documentación para solicitud de licencia
- Ingresar solicitud a licencia 
- Programar inspección 
- Subsanar hallazgos 
- Reinspección
- Pago de Licencia ', 'Pendiente', 'Media', '2026-01-22 16:04:30', '2026-02-28 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:04:30', 40, '2026-01-22 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (91, 72, 'Definición de nueva estructura documental y políticas de ordenamiento', 'Organizar, depurar y estandarizar los archivos del área de RRHH', 'Descartada', 'Media', '2026-01-22 16:05:25', '2026-06-30 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:05:25', 35, '2026-02-02 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (92, NULL, 'Recursos Humanos más cerca de tí', NULL, 'Pendiente', 'Media', '2026-01-22 16:08:18', '2026-01-22 16:08:18', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:08:18', 34, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (93, 73, 'Gestion con compra de pedido de solped ', 'Está en espera que el día de hoy 22 de enero sea liberada la solped por parte de nuestro Gerente de RRHH', 'EnCurso', 'Media', '2026-01-22 16:12:11', '2026-01-22 00:00:00', NULL, 5, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:12:11', 30, '2026-01-22 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (94, 70, 'Valoración de puesto', 'Garantizar la valoración de puestos en un 100% según la asignación de gerencia', 'Pendiente', 'Media', '2026-01-22 16:13:18', '2026-08-15 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:13:18', 16, '2026-03-16 00:00:00', 'Estrategica', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (95, 75, 'Revisión de pendientes con Gerencia SAC', 'Definir estrategia para que los asesores de tienda de SAC puedan recibir el programa ASUME en el 2026, ya que es la Gerencia con menor participación a nivel nacional', 'EnCurso', 'Alta', '2026-01-22 16:14:13', '2026-02-03 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:14:13', 29, '2026-02-03 00:00:00', 'Administrativa', 'S', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (96, NULL, 'Presentación de metodología', NULL, 'EnCurso', 'Media', '2026-01-22 16:16:20', '2026-01-22 16:16:20', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:16:20', 16, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (97, 66, 'Preparar documento para revisión.', 'Se debe preparar borrador de los artículos que contiene el reglamento interno,  actualizando los que deben adecuarse a la legislación y políticas de la empresa. ', 'Descartada', 'Alta', '2026-01-22 16:16:23', '2026-11-30 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:16:23', 4, '2026-02-02 00:00:00', 'Administrativa', 'L', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (98, 73, 'Recepcionar el pedido en sistema sap', 'Solicita a compra el pedido, para realizar la respectiva recepción en el sistema', 'Pendiente', 'Media', '2026-01-22 16:19:58', '2026-02-06 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:19:58', 30, '2026-02-03 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (99, 71, 'Tramite de licencia H&S ENITEL- CAC Granada', '- Preparación de documentación para solicitud de licencia
- Ingresar solicitud a licencia 
- Programar inspección 
- Subsanar hallazgos 
- Reinspección
- Pago de Licencia', 'Pendiente', 'Media', '2026-01-22 16:22:42', '2026-02-27 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:22:42', 40, '2026-01-23 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (100, 72, 'Clasificación y depuración del archivo físico. Definición de nueva estructura documental y políticas de ordenamiento', 'Clasificar información a resguardar e información a eliminar', 'Pendiente', 'Media', '2026-01-22 16:23:33', '2026-02-20 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:23:33', 35, '2026-01-26 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (101, 66, 'ACTUALIZACION DEL REGLAMENTO INTERNO', 'Realizar documento que contenga la actualización del reglamento interno de trabajo de acuerdo a la legislación laboral y políticas de la compañía. Para luego ser sometido a aprobación ante el MITRAB.', 'Pendiente', 'Alta', '2026-01-22 16:24:46', '2026-11-30 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:24:46', 4, '2026-02-02 00:00:00', 'Administrativa', 'L', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (102, 71, 'Tramite de licencia H&S ENITEL - CAC Masaya', '- Preparación de documentación para solicitud de licencia
- Ingresar solicitud a licencia 
- Programar inspección 
- Subsanar hallazgos 
- Reinspección
- Pago de Licencia', 'Pendiente', 'Media', '2026-01-22 16:24:55', '2026-02-27 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:24:55', 40, '2026-01-22 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (103, 73, 'Solicitar a Walmar documentos para respectivo pago', 'Una vez recepcionado, se debe solicitar a waltmar todos los documentos, para ingresar a cuentas por pagar y solicitar el respectivo pago', 'Pendiente', 'Media', '2026-01-22 16:25:13', '2026-02-03 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:25:13', 30, '2026-02-03 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (104, 71, 'Tramite de licencia H&S ENITEL - CAC Rivas', '- Preparación de documentación para solicitud de licencia
- Ingresar solicitud a licencia 
- Programar inspección 
- Subsanar hallazgos 
- Reinspección
- Pago de Licencia', 'Pendiente', 'Media', '2026-01-22 16:25:59', '2026-02-26 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:25:59', 40, '2026-01-22 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (105, 79, 'Segmentar competencias por Niveles de la Organización', 'Revision de descriptores y acercamiento con lo Gerente, a fin de alinear el rol del puesto con las competencias a asignar, ponderación, alineada a las competencias que ofrece la plataforma Pyxoom y las requeridas en Evaluación al desempeño', 'Pendiente', 'Baja', '2026-01-22 16:27:09', '2026-05-31 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:27:09', 34, '2026-03-01 00:00:00', 'Estrategica', 'L', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (106, 73, 'Solicitar a walmar fecha para retiro de gift card', 'Pedir a walmar no brinde fecha para retirar la gift card', 'Pendiente', 'Media', '2026-01-22 16:29:22', '2026-02-10 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:29:22', 30, '2026-02-09 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (107, 81, 'Promover campaña de actualización de datos', 'Actualización de póliza de vida e indemnización por fallecimiento de colaborador', 'Pendiente', 'Media', '2026-01-22 16:33:22', '2026-07-31 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:33:22', 35, '2026-02-02 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (108, 80, 'Política de Riesgos Psicosociales', 'Revisar las políticas de riesgos psicosociales que América Móvil para adaptarlas a nuestro país.', 'Pendiente', 'Media', '2026-01-22 16:36:29', '2026-01-23 00:00:00', NULL, 100, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:36:29', 41, '2026-01-22 00:00:00', 'Logistica', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (109, 84, 'Conciliacion de  presupuestos versus Siaf', 'Conciliación de  presupuestos versus Siaf
', 'Pendiente', 'Alta', '2026-01-22 16:40:36', '2026-06-30 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:40:36', 2, '2026-01-01 00:00:00', 'Administrativa', 'L', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (110, 80, 'Revisar políticas de riesgos psicosociales con auditoría', 'Revisar y definir las políticas de riesgos psicosociales en conjunto el equipo de higiene, seguridad y salud con el equipo de auditoria', 'Pendiente', 'Media', '2026-01-22 16:42:46', '2026-02-13 00:00:00', NULL, 20, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:42:46', 41, '2026-01-23 00:00:00', 'Estrategica', 'L', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (111, 84, 'Depurar estados de unidades en taller Siaf', 'Depurar estado de unidades en taller fisico Vs Siaf', 'Pendiente', 'Alta', '2026-01-22 16:43:49', '2026-06-30 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:43:49', 2, '2026-01-05 00:00:00', 'Administrativa', 'L', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (112, 82, '01 - Validar que necesidades de formación nos muestra el DNC', 'Realizar clasificación de los cursos solicitados a través del DNC y de esta manera definir qué cursos impartirá cada facilitador.', 'EnCurso', 'Alta', '2026-01-22 16:44:33', '2026-01-29 00:00:00', NULL, 3, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:44:33', 12, '2026-01-29 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (113, 84, 'Retomar encuesta de satisfacción, por trimestre año 2026', 'Retomar encuesta de satisfacción, por trimestre Enero-Marzo,  Abril-Junio, Julio - Sep -26', 'Pendiente', 'Media', '2026-01-22 16:45:38', '2026-06-30 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:45:38', 2, '2026-01-05 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (114, 84, 'Definir proceso ABC de atención ', 'Definir proceso ABC de atención (recepción de vehículos, entrega de unidades en taller)', 'Pendiente', 'Media', '2026-01-22 16:46:28', '2026-03-30 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:46:28', 2, '2026-01-05 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (115, 84, 'Historico fotografico Unidades de baja y pull de prestamos', 'Armado de histórico fotográfico para unidades de baja y pull prestamos.', 'Pendiente', 'Media', '2026-01-22 16:50:29', '2026-03-30 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:50:29', 2, '2026-01-05 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (116, NULL, 'preparacion de workbook', NULL, 'Pendiente', 'Media', '2026-01-22 16:50:31', '2026-01-22 16:50:31', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:50:31', 34, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (118, 83, 'Recepción de las propuestas por parte de las organizaciones sindicales.', 'Recibir las propuestas para el nuevo calculo del incentivo de producción de planta externa.', 'Pendiente', 'Media', '2026-01-22 16:52:27', '2026-03-31 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:52:27', 4, '2026-02-02 00:00:00', 'Administrativa', 'L', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (120, 84, 'Proyecto tablero por taller ', 'Finalizar el tablero de indicadores por taller.', 'Pendiente', 'Alta', '2026-01-22 16:54:00', '2026-03-05 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:54:00', 2, '2026-01-05 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (121, 80, 'Manual del procedimiento de evaluación', 'Realizar el manual de procedimiento para la evaluación de los riesgos psicosociales a nivel empresa', 'Pendiente', 'Media', '2026-01-22 16:54:47', '2026-03-30 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:54:47', 41, '2026-02-16 00:00:00', 'Estrategica', 'L', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (122, 84, 'Mejorar los tiempos de respuesta , en solicitudes', 'Reducir los tiempos de respuesta ante solicitudes del área.', 'Pendiente', 'Alta', '2026-01-22 16:55:01', '2026-03-05 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:55:01', 2, '2026-01-05 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (123, 61, 'Definición de etapas (día 1, semana 1, 30-60-90 días)', 'Definir las etapas del proceso para interno y externo', 'Pendiente', 'Alta', '2026-01-22 16:59:05', '2026-01-31 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:59:05', 34, '2026-01-01 00:00:00', 'Administrativa', 'L', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (124, 84, 'Implementacion de Dashboard de seguimiento', 'Implementacion de Dashboard de seguimiento', 'Pendiente', 'Media', '2026-01-22 16:59:16', '2026-03-20 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 16:59:16', 2, '2026-01-21 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (125, 83, 'Analizar la propuesta que más beneficie a los trabajadores y los lineamientos de la compañía.', 'Consolidar las propuestas presentadas y determinar cuál es la que más se asemeje a los lineamientos de la empresa.', 'Pendiente', 'Media', '2026-01-22 17:00:27', '2026-04-17 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 17:00:27', 4, '2026-04-06 00:00:00', 'Administrativa', 'L', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (126, 75, 'Impartir Socialización a los grupos definidos', 'Impartir socialización', 'Pendiente', 'Media', '2026-01-22 17:00:43', '2026-03-13 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 17:00:43', 29, '2026-03-09 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (127, 61, 'Completar formatos, guías y responsables', 'Completar cada actividad con sus responsables', 'Pendiente', 'Media', '2026-01-22 17:04:42', '2026-02-15 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 17:04:42', 34, '2026-02-01 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (128, 71, 'Tramite de licencia H&S SDRH- CAC Rivas', NULL, 'Pendiente', 'Media', '2026-01-22 17:27:40', '2026-02-27 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 17:27:40', 40, '2026-01-22 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (129, 86, 'Gestión con el MINSA', 'Realizar la solicitud de jornada de vacunación ante el Ministerio de Salud para los edificios de Managua', 'Pendiente', 'Media', '2026-01-22 17:33:59', '2026-04-30 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 17:33:59', 41, '2026-04-20 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (130, 86, 'Organización de la jornada', 'Detallar edificios, cantidad de colaboradores, días de vacunación y horarios a visitar', 'Pendiente', 'Media', '2026-01-22 17:38:07', '2026-05-06 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 17:38:07', 41, '2026-05-04 00:00:00', 'Logistica', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (131, 86, 'Realizar jornada de vacunación', 'Llevar a cabo la jornada de vacunación', 'Pendiente', 'Media', '2026-01-22 17:40:08', '2026-05-22 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 17:40:08', 41, '2026-05-07 00:00:00', 'Otros', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (132, 87, 'Gestionar jornada de vacunación contra Influenza', 'Gestionar con el INSS Central la jornada de vacunación contra influenza ', 'Pendiente', 'Media', '2026-01-22 17:44:59', '2026-05-08 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 17:44:59', 41, '2026-05-04 00:00:00', 'Estrategica', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (133, 87, 'Programación de jornada', 'Definir días, edificios a visitar, cantidad de colaboradores a vacunar y horarios de visita', 'Pendiente', 'Media', '2026-01-22 17:48:27', '2026-06-03 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 17:48:27', 41, '2026-06-01 00:00:00', 'Logistica', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (134, 87, 'Realizar jornada de vacunación', 'Llevar a cabo la jornada de vacunación según programación', 'Pendiente', 'Media', '2026-01-22 17:50:23', '2026-06-19 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 17:50:23', 41, '2026-06-04 00:00:00', 'Otros', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (135, 88, 'Elaborar y conseguir los autorizados del brief, para la compra', 'Elaborar y presentar la solicitud de aprobación de presupuesto para la compra de gift cards.', 'Pendiente', 'Media', '2026-01-22 19:37:05', '2026-02-26 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 19:37:05', 30, '2026-01-21 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (136, 88, 'Solicitar la cotización a Walmart', 'Se debe de enviar correo a walmart con todos los documentos de soportes que piden cuando son compra con un monto muy alto', 'Pendiente', 'Media', '2026-01-22 19:38:58', '2026-01-28 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 19:38:58', 30, '2026-01-28 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (137, 88, 'Realizar el adelanto de fondos y solicitar su autorizado, para enviarlo a finanzas', 'Se debe de realizar el adelanto de fondos con su autorizado por parte de nuestro gerente, para posterior enviarlo a finanzas.', 'Pendiente', 'Media', '2026-01-22 19:41:16', '2026-01-29 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 19:41:16', 30, '2026-01-29 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (138, 88, 'Realizar la solped y solicitar las liberaciones de mesa de control y Gerente de RRHH', 'Se debe de realiza la solped en SAP, y solicitar las correspondientes liberaciones en mesa de control y nuestro gerente de RRHH.', 'Pendiente', 'Media', '2026-01-22 19:43:33', '2026-01-29 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 19:43:33', 30, '2026-01-29 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (139, 88, 'Enviar correo a compra para que emitan el pedido', 'Se debe enviar correo a gerencia de compras, para que nos ayuden a asignar pedido,', 'Pendiente', 'Media', '2026-01-22 19:45:27', '2026-01-30 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 19:45:27', 30, '2026-01-30 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (140, 88, 'Solicitar la aceptación del pedido', 'Solicitar a Gerente de RRHH la aceptación del pedido', 'Pendiente', 'Media', '2026-01-22 19:46:31', '2026-02-01 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 19:46:31', 30, '2026-02-01 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (141, 88, 'Solicitar a Walmart documentos, para proceder al trámite de pago', 'Se debe de solicitar a Walmart los documentos, para remitir a cuentas por pagar y solicitar procedan con el pago, para poder ir a retirar las gift card', 'Pendiente', 'Media', '2026-01-22 19:48:36', '2026-02-03 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 19:48:36', 30, '2026-02-03 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (142, NULL, 'Agregar planificación estratégica al planner Claro.', NULL, 'Pendiente', 'Media', '2026-01-22 22:12:19', '2026-01-22 22:12:19', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 22:12:19', 29, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (143, NULL, 'Cargar las unidades para los kits escolares mañana.', NULL, 'Pendiente', 'Media', '2026-01-22 22:12:20', '2026-01-22 22:12:20', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 22:12:20', 29, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (144, NULL, 'Revisar status de solpeds.', NULL, 'Pendiente', 'Media', '2026-01-22 22:12:22', '2026-01-22 22:12:21', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 22:12:22', 29, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (145, NULL, 'Reunión de Don Mario Hurtado', NULL, 'Pendiente', 'Media', '2026-01-22 22:12:23', '2026-01-22 22:12:23', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 22:12:23', 29, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (146, NULL, 'Firmar y revisar RFP''s', NULL, 'Pendiente', 'Media', '2026-01-22 22:12:24', '2026-01-22 22:12:24', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 22:12:24', 29, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (147, NULL, 'asasasasas', NULL, 'Pendiente', 'Media', '2026-01-22 23:48:50', '2026-01-22 23:48:50', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-22 23:48:50', 30, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (148, NULL, 'Hacer Cronograma de Capacitaciones', NULL, 'Pendiente', 'Media', '2026-01-23 15:26:08', '2026-01-23 15:26:08', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-23 15:26:08', 1, NULL, 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (149, 91, 'Solicitar a jurídica el contrato de la señora de limpieza', 'Estamos en espera que Gerencia Jurídica nos proporcione el contrato para la correspondiente firma con el proveedor', 'Pendiente', 'Media', '2026-01-23 17:07:05', '2026-01-27 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-23 17:07:05', 30, '2026-01-27 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (150, 91, 'Solicitar a Dr. Nelson Pérez se traslade a San Juan del Sur', 'Solicitar a Dr. Nelson se traslade a San Juan del Sur, a recoger la firma de la señora, para proceder a realizar la solped', 'Pendiente', 'Media', '2026-01-23 17:15:19', '2026-01-29 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-23 17:15:19', 30, '2026-01-29 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (151, 91, 'Enviar correo a finanzas nos autorice el presupuesto ', 'Solicitar a finanzas nos autorice el presupuesto solicitado de C$ 8,000.00 mensuales, para un total anual de C$ 96,000.00', 'Pendiente', 'Media', '2026-01-23 17:23:53', '2026-02-03 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-23 17:23:53', 30, '2026-02-02 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (152, 91, 'Realizar solped por un año', 'Una vez autorizado el presupuesto, realizar solped por un año', 'Pendiente', 'Media', '2026-01-23 17:27:41', '2026-02-07 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-23 17:27:41', 30, '2026-02-07 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (153, 91, 'Solicitar a mesa de control y Gerente de RRHH liberación', 'Solicitar a mesa de control y Gerente de RRHH, las correspondientes liberaciones', 'Pendiente', 'Media', '2026-01-23 17:31:44', '2026-02-09 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-23 17:31:44', 30, '2026-02-09 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (154, NULL, 'Realizar el comparativo gasto real 2025 vs presupuesto asignado', 'aslkjaslkajslakjsalksjalñksjalñkjsñla', 'Pendiente', 'Alta', '2026-01-23 17:38:18', '2026-01-23 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-23 17:38:18', 30, NULL, 'Administrativa', 'L', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (155, NULL, 'Actualizar el opex 2025', NULL, 'Pendiente', 'Alta', '2026-01-23 21:46:22', '2026-01-23 21:46:21', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-23 21:46:22', 30, NULL, 'Administrativa', 'L', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (156, NULL, 'Remisón y solicitud de pago de Enero a Dra Tania Medina', NULL, 'Pendiente', 'Alta', '2026-01-23 21:47:41', '2026-01-23 21:47:41', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-23 21:47:41', 30, NULL, 'Administrativa', 'L', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (157, 92, 'Asegurar los flujos para la nómina ejecutiva', 'Validar y asegurar el flujo para la nómina Ejecutiva', 'Pendiente', 'Media', '2026-01-23 22:33:02', '2026-01-30 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-23 22:33:02', 1, '2026-01-26 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (158, 92, 'Validar reportes de auditoría', 'Asegurar la correcta ejecución de los reportes de auditoriía: Altas, Bajas, Cambios de Puesto', 'Pendiente', 'Media', '2026-01-23 22:33:56', '2026-01-26 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-23 22:33:56', 1, '2026-01-21 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (159, 92, 'Seguimiento al requerimiento Notificación por actualización de beneficiarios de indeminzación', 'Asegurar la correcta implementación de la funcionalidad de notificaciones para las actualizaciones de beneficioarios en Sigho.', 'Pendiente', 'Media', '2026-01-23 22:35:28', '2026-02-28 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-23 22:35:28', 1, '2026-01-23 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (160, 93, 'Coordinar  campaña de comunicación', 'Asegurar que todos los colaboradores con acceso a RHOnline se den por enterado de la nueva funcionalidad.', 'Pendiente', 'Media', '2026-01-23 22:43:48', '2026-01-30 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-23 22:43:48', 1, '2026-01-26 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (161, 93, 'Soporte post producción', 'Brindar soporte a los usuarios del módulo', 'Pendiente', 'Media', '2026-01-23 22:55:32', '2026-02-28 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-23 22:55:32', 1, '2026-02-02 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (162, 94, 'Completar workbook de Capacitación', 'Asegurar la entrega de los requerimientos de información para el módulo de Capacitación', 'Pendiente', 'Media', '2026-01-23 23:29:27', '2026-03-31 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-23 23:29:27', 1, '2026-02-02 00:00:00', 'Estrategica', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (163, NULL, 'Socialización Estratégica de Resultados de Clima Laboral', 'Presentación de Resultados de Clima Laboral por Gerencia.', 'Pendiente', 'Alta', '2026-01-23 23:33:25', '2026-03-30 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-23 23:33:25', 26, '2026-02-02 00:00:00', 'Administrativa', 'L', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (164, 82, '02 - Entrega de Descriptor de Curso', 'Una vez que contemos que temas desarrollara cada especialista, se trabaja el descriptor de curso, para poder evaluar, grupo meta, carga horaria y material de trabajo.', 'Pendiente', 'Alta', '2026-01-23 23:39:57', '2026-02-20 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-23 23:39:57', 12, '2026-02-03 00:00:00', 'Estrategica', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (165, 82, '03 - Presentación del curso ya finalizado', 'Entrega y validación de presentación por cada tema con el equipo de capacitación.', 'Pendiente', 'Media', '2026-01-23 23:51:57', '2026-03-05 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-23 23:51:57', 12, '2026-02-20 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (166, 82, '04 - Ejecución de curso', 'En el mes de abril se deben de implementar los cursos ya validados.', 'Pendiente', 'Media', '2026-01-24 00:01:51', '2026-04-29 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-24 00:01:51', 12, '2026-04-02 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (167, 78, 'Actualizar formato de muestra', 'Se trabajará en el formato que utilizaremos en el levantamiento del DNC
Donde estipula los parámetros que se utilizaran en el levantamiento por Gerencia', 'Pendiente', 'Media', '2026-01-24 00:21:58', '2026-02-11 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-24 00:21:58', 12, '2026-02-04 00:00:00', 'Estrategica', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (168, 109, '1. Base de datos de Participantes.', 'Se solicita BD de participantes al don Mario Hurtado.', 'Hecha', 'Media', '2026-01-24 00:58:37', '2026-01-23 00:00:00', NULL, 100, NULL, 0, 0, NULL, 'tarea', '2026-01-24 00:58:37', 26, '2026-01-23 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (169, 74, '01 - Planificacion de costo', 'Solicitar proformas por cursos y definir en qué mes lo podremos ejecutar', 'Pendiente', 'Media', '2026-01-24 00:58:48', '2026-02-04 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-24 00:58:48', 12, '2026-01-28 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (170, 109, '2. Gestión de Cotización y Aprobación de la actividad', 'Se realizará gestión de cotización y se remitirá a Gerencia para su debida aprobación.', 'Pendiente', 'Media', '2026-01-24 01:00:45', '2026-01-23 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-24 01:00:45', 26, '2026-01-23 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (171, 109, '3. Grabar Solped', 'Se remitirá cotización aprobada a Milcy Velasquez para que proceda a Grabar Solicitud de Pedido.', 'Pendiente', 'Media', '2026-01-24 01:02:21', '2026-01-26 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-24 01:02:21', 26, '2026-01-26 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (172, 109, '4. Gestión de Financiera y Compras', 'Se remitirá el pedido a aprobación de finanzas y gestión de compras.', 'Pendiente', 'Media', '2026-01-24 01:04:18', '2026-01-27 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-24 01:04:18', 26, '2026-01-27 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (173, 109, '5. Cuadro de Validación Técnica', 'El área de Compras remite Cuadro de validación técnica para la selección del proveedor.', 'Pendiente', 'Media', '2026-01-24 01:06:00', '2026-02-06 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-24 01:06:00', 26, '2026-02-05 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (174, 74, '02 - Elaboración de RFP por curso', 'Se procederá a elaborar RFP por curso', 'Pendiente', 'Media', '2026-01-24 01:06:49', '2026-02-09 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-24 01:06:49', 12, '2026-02-04 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (175, 109, '6. Adjudicación del Pedido y Coordinación de actividad.', 'Se recibe el pedido y se inicia la coordinación de la actividad con el área solicitante.', 'Pendiente', 'Media', '2026-01-24 01:07:34', '2026-02-10 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-24 01:07:34', 26, '2026-02-09 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (176, 109, '7. Ejecución Logística del evento', 'Se envía la invitación del evento y se revisan los insumos necesarios y la coordinación con el hotel para garantizar la ejecución de la actividad.', 'Pendiente', 'Media', '2026-01-24 01:09:11', '2026-02-13 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-24 01:09:11', 26, '2026-02-11 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (177, 109, '8. Ejecución de la Actividad', 'Se realización ejecución de la actividad.', 'Pendiente', 'Media', '2026-01-24 01:10:22', '2026-02-18 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-24 01:10:22', 26, '2026-02-18 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (178, 74, '03 - Plan de ejecución ', 'Una vez contemos con las ordenes de compra se procede con la planificación con el proveedor y se definen fechas para proceder con la ejecución', 'Pendiente', 'Baja', '2026-01-24 01:12:20', '2026-04-30 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-24 01:12:20', 12, '2026-03-02 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (179, 109, '9. Informe Final de la Actividad', 'Se realiza informe final de la actividad y se remite a Gerencia con Copia a Milcy Velasquez para garantizar entrega de acta de conformidad de servicios.', 'Pendiente', 'Media', '2026-01-24 01:12:48', '2026-02-20 00:00:00', NULL, 0, NULL, 0, 0, NULL, 'tarea', '2026-01-24 01:12:48', 26, '2026-02-19 00:00:00', 'Administrativa', 'M', NULL, NULL, 'SIMPLE', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO [p_Tareas] ([idTarea], [idProyecto], [nombre], [descripcion], [estado], [prioridad], [fechaCreacion], [fechaObjetivo], [fechaCompletado], [porcentaje], [idPadre], [orden], [esHito], [idAsignado], [tipoTarea], [fechaActualizacion], [idCreador], [fechaInicioPlanificada], [tipo], [esfuerzo], [fechaInicioReal], [fechaFinReal], [comportamiento], [idGrupo], [numeroParte], [linkEvidencia], [activo], [motivoDeshabilitacion], [deshabilitadoPor], [fechaDeshabilitacion], [idTareaPadre]) VALUES (181, NULL, 'Tarea Test Soft', NULL, 'Pendiente', 'Media', '2026-01-19 07:09:21', NULL, NULL, 0, NULL, 0, 0, NULL, 'tarea', NULL, 1, NULL, 'Administrativa', NULL, NULL, NULL, 'SIMPLE', NULL, 1, NULL, 0, NULL, NULL, NULL, NULL);
SET IDENTITY_INSERT [p_Tareas] OFF;

-- Table: p_UsuarioCredenciales

-- Table: p_Usuarios
SET IDENTITY_INSERT [p_Usuarios] ON;
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (1, 'JUAN CARLOS ORTUÑO PADILLA', 'JUAN CARLOS ORTUÑO PADILLA', 'juan.ortuno@claro.com.ni', 1, 'Admin', NULL, '300042', 'GERENTE GENERAL RRHH', 'MANAGUA', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', NULL, NULL, NULL, '2013-10-07 06:00:00', 'M', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI', NULL, '2026-01-19 09:19:40', 'juan.ortuno@claro.com.ni', '4411204830007D', 'NI GERENCIA DE RECURSOS HUMANOS', 'Santo Domingo, Casa Protocolo.', 'EMPRESA NICARAGUENSE DE TELECOMUNICACIONES S. A.', 'ENITEL CASA PROTOCOLO(STO.DGO MGA)', 'ADMINISTRATIVO', 'ORA_POS_SYNC', 'SYNC_RRHH_CSV', 'NI GERENCIA DE RECURSOS HUMANOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 16:28:12');
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (2, 'TANIA AUXILIADORA AGUIRRE AGUILAR', 'TANIA AUXILIADORA AGUIRRE AGUILAR', 'taniaa.aguirre@claro.com.ni', 1, 'Empleado', NULL, '1005898', 'ESPECIALISTA RECURSOS HUMANOS B', 'MANAGUA', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '300042', 'JUAN CARLOS ORTUÑO PADILLA', 'juan.ortuno@claro.com.ni', '2024-04-08 06:00:00', 'F', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI', NULL, '2026-01-19 09:19:41', 'taniaa.aguirre@claro.com.ni', '0012011860021N', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'Santo Domingo, Casa Protocolo.', 'SERVICIOS DIVERSOS DE RECURSOS HUMANOS S.A.', 'ENITEL LAS PIEDRECITAS', 'ADMINISTRATIVO', 'ORA_POS_SYNC', 'SYNC_RRHH_CSV', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, NULL, '300048', NULL, NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (3, 'JOSUE GABRIEL GARCIA BUSTO', 'JOSUE GABRIEL GARCIA BUSTO', 'josue.garcia@claro.com.ni', 1, 'Empleado', NULL, '500269', 'ESPECIALISTA RECURSOS HUMANOS A', 'MANAGUA', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '300042', 'JUAN CARLOS ORTUÑO PADILLA', 'juan.ortuno@claro.com.ni', '2016-08-02 06:00:00', 'M', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI', NULL, '2026-01-19 09:19:42', 'josue.garcia@claro.com.ni', '0012911880061Q', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'Santo Domingo, Casa Protocolo.', 'SERVICIOS DIVERSOS DE RECURSOS HUMANOS S.A.', 'ENITEL LAS PIEDRECITAS', 'ADMINISTRATIVO', 'ORA_POS_SYNC', 'SYNC_RRHH_CSV', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, NULL, '300048', NULL, NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (4, 'MARLENE DE LA CONCEPCION ROSALES SERRANO', 'MARLENE DE LA CONCEPCION ROSALES SERRANO', 'marlene.rosales@claro.com.ni', 1, 'Empleado', NULL, '256412', 'ESPECIALISTA LABORAL', 'MANAGUA', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '300034', 'NELSON ENRIQUE PEREZ FONSECA', 'nelson.perez@claro.com.ni', '2003-10-01 06:00:00', 'F', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI', NULL, '2026-01-19 09:19:44', 'marlene.rosales@claro.com.ni', '0010908680061L', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'Santo Domingo, Casa Protocolo.', 'EMPRESA NICARAGUENSE DE TELECOMUNICACIONES S. A.', 'ENITEL CASA PROTOCOLO(STO.DGO MGA)', 'ADMINISTRATIVO', 'CAMBIO_TIPO_DE_MARCAJE', 'SYNC_RRHH_CSV', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, NULL, '300048', NULL, NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (5, 'NESTOR JOSE URBINA FLORES', 'NESTOR JOSE URBINA FLORES', 'nestor.urbina@claro.com.ni', 1, 'Empleado', NULL, '401601', 'AUXILIAR DE RECURSOS HUMANOS', 'MANAGUA', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '300034', 'NELSON ENRIQUE PEREZ FONSECA', 'nelson.perez@claro.com.ni', '2017-05-15 06:00:00', 'M', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI', NULL, '2026-01-19 09:19:45', 'nestor.urbina@claro.com.ni', '0010311880063L', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'Santo Domingo, Casa Protocolo.', 'SERVICIOS DIVERSOS DE RECURSOS HUMANOS S.A.', 'ENITEL CASA PROTOCOLO(STO.DGO MGA)', 'OPERATIVO', 'ORA_POS_SYNC', 'SYNC_RRHH_CSV', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, NULL, '300048', NULL, NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (6, 'NELSON ENRIQUE PEREZ FONSECA', 'NELSON ENRIQUE PEREZ FONSECA', 'nelson.perez@claro.com.ni', 1, 'Empleado', NULL, '300034', 'SUBGERENTE RELACIONES LABORALES', 'MANAGUA', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '300042', 'JUAN CARLOS ORTUÑO PADILLA', 'juan.ortuno@claro.com.ni', '2013-04-15 06:00:00', 'M', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI', NULL, '2026-01-19 09:19:46', 'nelson.perez@claro.com.ni', '0010209830023E', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'Santo Domingo, Casa Protocolo.', 'EMPRESA NICARAGUENSE DE TELECOMUNICACIONES S. A.', 'ENITEL CASA PROTOCOLO(STO.DGO MGA)', 'ADMINISTRATIVO', 'ORA_POS_SYNC', 'SYNC_RRHH_CSV', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (7, 'ISLENY PATRICIA HERNANDEZ GONZALEZ', 'ISLENY PATRICIA HERNANDEZ GONZALEZ', 'isleny.hernandez@claro.com.ni', 1, 'Empleado', NULL, '1008269', 'COORDINADOR SST- ISO45001', 'MANAGUA', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '300034', 'NELSON ENRIQUE PEREZ FONSECA', 'nelson.perez@claro.com.ni', '2024-08-19 06:00:00', 'F', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI', NULL, '2026-01-19 09:19:47', 'ISLENY.HERNANDEZ', '3211801980000V', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'Santo Domingo, Casa Protocolo.', 'SERVICIOS DIVERSOS DE RECURSOS HUMANOS S.A.', 'ENITEL CASA PROTOCOLO(STO.DGO MGA)', 'ADMINISTRATIVO', 'CLARO_ASCENSO', 'SYNC_RRHH_CSV', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, NULL, '300048', NULL, NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (8, 'MARIA VICTORIA SEQUEIRA CERRATO', 'MARIA VICTORIA SEQUEIRA CERRATO', 'mariav.sequeira@claro.com.ni', 1, 'Empleado', NULL, '1010426', 'ABOGADO', 'MANAGUA', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '300034', 'NELSON ENRIQUE PEREZ FONSECA', 'nelson.perez@claro.com.ni', '2025-03-03 06:00:00', 'F', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI', NULL, '2026-01-19 09:19:48', 'mariav.sequeira', '0013008001036L', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'Santo Domingo, Casa Protocolo.', 'SERVICIOS DIVERSOS DE RECURSOS HUMANOS S.A.', 'ENITEL CASA PROTOCOLO(STO.DGO MGA)', 'ADMINISTRATIVO', 'CAMBIO_TIPO_DE_MARCAJE', 'SYNC_RRHH_CSV', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, NULL, '300048', NULL, NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (9, 'STEVEN ISAAC SEQUEIRA ROMERO', 'STEVEN ISAAC SEQUEIRA ROMERO', 'steven.sequeira@claro.com.ni', 1, 'Empleado', NULL, '401391', 'ESPECIALISTA DE CAPACITACION B', 'MANAGUA', 'NI COORD. CAPACITACION', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '400543', 'BELKIS NINOSKA CASTELLON', 'belkis.castellon@claro.com.ni', '2016-08-02 06:00:00', 'M', 'NI COORD. CAPACITACION', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI', NULL, '2026-01-19 09:19:49', 'steven.sequeira@claro.com.ni', '0010211971008M', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'FRENTE A LA NUEVA EMBAJADA AMERICANA', 'SERVICIOS DIVERSOS DE RECURSOS HUMANOS S.A.', 'ENITEL LAS PIEDRECITAS', 'ADMINISTRATIVO', 'CAMBIO_TIPO_DE_MARCAJE', 'SYNC_RRHH_CSV', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, '400850', '300048', NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (10, 'HARRY ALEXANDER GUEVARA ALEMAN', 'HARRY ALEXANDER GUEVARA ALEMAN', 'harry.guevara@claro.com.ni', 1, 'Empleado', NULL, '402262', 'ESPECIALISTA DE CAPACITACION B', 'MANAGUA', 'NI COORD. CAPACITACION', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '400543', 'BELKIS NINOSKA CASTELLON', 'belkis.castellon@claro.com.ni', '2022-07-25 06:00:00', 'M', 'NI COORD. CAPACITACION', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI', NULL, '2026-01-19 09:19:51', 'harry.guevara@claro.com.ni', '0010111970003S', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'FRENTE A LA NUEVA EMBAJADA AMERICANA', 'SERVICIOS DIVERSOS DE RECURSOS HUMANOS S.A.', 'ENITEL LAS PIEDRECITAS', 'ADMINISTRATIVO', 'CAMBIO_TIPO_DE_MARCAJE', 'SYNC_RRHH_CSV', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, '400850', '300048', NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (11, 'BRYAM RICARDO MARTINEZ PRADO', 'BRYAM RICARDO MARTINEZ PRADO', 'bryam.martinez@claro.com.ni', 1, 'Empleado', NULL, '500322', 'ESPECIALISTA DE CAPACITACION A', 'MANAGUA', 'NI COORD. CAPACITACION', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '400543', 'BELKIS NINOSKA CASTELLON', 'belkis.castellon@claro.com.ni', '2018-01-08 06:00:00', 'M', 'NI COORD. CAPACITACION', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI', NULL, '2026-01-19 09:19:52', 'bryam.martinez@claro.com.ni', '0010609940077M', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'FRENTE A LA NUEVA EMBAJADA AMERICANA', 'SERVICIOS DIVERSOS DE RECURSOS HUMANOS S.A.', 'ENITEL LAS PIEDRECITAS', 'ADMINISTRATIVO', 'CLARO_ASCENSO', 'SYNC_RRHH_CSV', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, '400850', '300048', NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (12, 'BELKIS NINOSKA CASTELLON', 'BELKIS NINOSKA CASTELLON', 'belkis.castellon@claro.com.ni', 1, 'Empleado', NULL, '400543', 'COORDINADOR DE CAPACITACION', 'MANAGUA', 'NI COORD. CAPACITACION', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '400850', 'SERGIO ALEXANDER MARTINEZ ESPINOZA', 'sergio.martinez@claro.com.ni', '2013-02-11 06:00:00', 'F', 'NI COORD. CAPACITACION', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI', NULL, '2026-01-19 09:19:53', 'belkis.castellon@claro.com.ni', '8881211891000U', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'FRENTE A LA NUEVA EMBAJADA AMERICANA', 'SERVICIOS DIVERSOS DE RECURSOS HUMANOS S.A.', 'ENITEL LAS PIEDRECITAS', 'ADMINISTRATIVO', 'CAMBIO_TIPO_DE_MARCAJE', 'SYNC_RRHH_CSV', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, '300048', NULL, NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (13, 'KEYLA BELEN DAVILA', 'KEYLA BELEN DAVILA', 'keyla.davila1@claro.com.ni', 1, 'Empleado', NULL, '102346', 'ESPECIALISTA DE CAPACITACION A', 'MANAGUA', 'NI COORD. CAPACITACION', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '400543', 'BELKIS NINOSKA CASTELLON', 'belkis.castellon@claro.com.ni', '2009-08-12 06:00:00', 'F', 'NI COORD. CAPACITACION', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI', NULL, '2026-01-19 09:19:54', 'keyla.davila1@claro.com.ni', '0012401820036U', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'FRENTE A LA NUEVA EMBAJADA AMERICANA', 'SERVICIOS DIVERSOS DE RECURSOS HUMANOS S.A.', 'ENITEL LAS PIEDRECITAS', 'ADMINISTRATIVO', 'JOB_CHANGE', 'SYNC_RRHH_CSV', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, '400850', '300048', NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (14, 'LINDA RASHEL URBINA ZEPEDA', 'LINDA RASHEL URBINA ZEPEDA', 'linda.urbina@claro.com.ni', 1, 'Empleado', NULL, '402408', 'ESPECIALISTA RECURSOS HUMANOS A', 'MANAGUA', 'NI SUBGERENCIA DE COMPENSACIONES', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '1008937', 'AURORA DEL SOCORRO ESPINOZA DIAZ', 'aurora.espinoza@claro.com.ni', '2022-10-31 06:00:00', 'F', 'NI SUBGERENCIA DE COMPENSACIONES', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGERENCIA DE COMPENSACIONES', 'NI', NULL, '2026-01-19 09:19:55', 'linda.urbina@claro.com.ni', '0012701960029S', 'NI SUBGERENCIA DE COMPENSACIONES', 'Santo Domingo, Casa Protocolo.', 'SERVICIOS DIVERSOS DE RECURSOS HUMANOS S.A.', 'ENITEL CASA PROTOCOLO(STO.DGO MGA)', 'ADMINISTRATIVO', 'JOB_CHANGE', 'SYNC_RRHH_CSV', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, NULL, '300048', NULL, NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (15, 'MARTHA MARIA MORALES CABRERA', 'MARTHA MARIA MORALES CABRERA', 'maria.morales1@claro.com.ni', 1, 'Empleado', NULL, '706', 'ESPECIALISTA RECURSOS HUMANOS A', 'MANAGUA', 'NI SUBGERENCIA DE COMPENSACIONES', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '1008937', 'AURORA DEL SOCORRO ESPINOZA DIAZ', 'aurora.espinoza@claro.com.ni', '2007-05-14 06:00:00', 'F', 'NI SUBGERENCIA DE COMPENSACIONES', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGERENCIA DE COMPENSACIONES', 'NI', NULL, '2026-01-19 09:19:56', 'maria.morales1@claro.com.ni', '2812008770003S', 'NI SUBGERENCIA DE COMPENSACIONES', 'Santo Domingo, Casa Protocolo.', 'SERVICIOS DIVERSOS DE RECURSOS HUMANOS S.A.', 'ENITEL CASA PROTOCOLO(STO.DGO MGA)', 'ADMINISTRATIVO', 'CAMBIO_TIPO_DE_MARCAJE', 'SYNC_RRHH_CSV', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, NULL, '300048', NULL, NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (16, 'AURORA DEL SOCORRO ESPINOZA DIAZ', 'AURORA DEL SOCORRO ESPINOZA DIAZ', 'aurora.espinoza@claro.com.ni', 1, 'Empleado', NULL, '1008937', 'SUBGERENTE DE COMPENSACIONES', 'MANAGUA', 'NI SUBGERENCIA DE COMPENSACIONES', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '300042', 'JUAN CARLOS ORTUÑO PADILLA', 'juan.ortuno@claro.com.ni', '2024-10-07 06:00:00', 'F', 'NI SUBGERENCIA DE COMPENSACIONES', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGERENCIA DE COMPENSACIONES', 'NI', NULL, '2026-01-19 09:19:57', 'aurora.espinoza@claro.com.ni', '0010704850020T', 'NI SUBGERENCIA DE COMPENSACIONES', 'Santo Domingo, Casa Protocolo.', 'EMPRESA NICARAGUENSE DE TELECOMUNICACIONES S. A.', 'ENITEL CASA PROTOCOLO(STO.DGO MGA)', 'ADMINISTRATIVO', 'ORA_POS_SYNC', 'SYNC_RRHH_CSV', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (17, 'KEVIN JOSSETH TORREZ RIVERA', 'KEVIN JOSSETH TORREZ RIVERA', 'kevinj.torrez@claro.com.ni', 1, 'Empleado', NULL, '1011898', 'ESPECIALISTA RECURSOS HUMANOS A', 'MANAGUA', 'NI SUBGERENCIA DE COMPENSACIONES', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '1008937', 'AURORA DEL SOCORRO ESPINOZA DIAZ', 'aurora.espinoza@claro.com.ni', '2025-05-26 06:00:00', 'M', 'NI SUBGERENCIA DE COMPENSACIONES', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGERENCIA DE COMPENSACIONES', 'NI', NULL, '2026-01-19 09:19:58', 'kevinj.torrez', '0010605940008L', 'NI SUBGERENCIA DE COMPENSACIONES', 'Santo Domingo, Casa Protocolo.', 'SERVICIOS DIVERSOS DE RECURSOS HUMANOS S.A.', 'ENITEL CASA PROTOCOLO(STO.DGO MGA)', 'ADMINISTRATIVO', 'CAMBIO_TIPO_DE_MARCAJE', 'SYNC_RRHH_CSV', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, NULL, '300048', NULL, NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (18, 'PABLO JOSE CRUZ BERMUDEZ', 'PABLO JOSE CRUZ BERMUDEZ', 'pablo.cruz@claro.com.ni', 1, 'Empleado', NULL, '222627', 'ESPECIALISTA RECURSOS HUMANOS B', 'MANAGUA', 'NI COORD. DE TRANSPORTE', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '402178', 'ALI ADOLFO RODRIGUEZ URIARTE', 'ali.rodriguez@claro.com.ni', '1991-02-01 06:00:00', 'M', 'NI COORD. DE TRANSPORTE', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI', NULL, '2026-01-19 09:19:59', 'pablo.cruz@claro.com.ni', '0022906640000P', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'FRENTE A LA NUEVA EMBAJADA AMERICANA', 'EMPRESA NICARAGUENSE DE TELECOMUNICACIONES S. A.', 'ENITEL LAS PIEDRECITAS', 'ADMINISTRATIVO', 'CAMBIO_TIPO_DE_MARCAJE', 'SYNC_RRHH_CSV', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, '300042', '300048', NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (19, 'RAMON IVAN DIAZ URBINA', 'RAMON IVAN DIAZ URBINA', 'ramon.diaz@claro.com.ni', 1, 'Empleado', NULL, '233269', 'CONDUCTOR DE VEHICULO', 'MANAGUA', 'NI COORD. DE TRANSPORTE', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '402178', 'ALI ADOLFO RODRIGUEZ URIARTE', 'ali.rodriguez@claro.com.ni', '1994-05-02 05:00:00', 'M', 'NI COORD. DE TRANSPORTE', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI', NULL, '2026-01-19 09:20:00', 'ramon.diaz@claro.com.ni', '0013108610061W', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'FRENTE A LA NUEVA EMBAJADA AMERICANA', 'EMPRESA NICARAGUENSE DE TELECOMUNICACIONES S. A.', 'ENITEL LAS PIEDRECITAS', 'OPERATIVO', 'EMP_SINDICATO', 'SYNC_RRHH_CSV', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, '300042', '300048', NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (20, 'ALI ADOLFO RODRIGUEZ URIARTE', 'ALI ADOLFO RODRIGUEZ URIARTE', 'ali.rodriguez@claro.com.ni', 1, 'Empleado', NULL, '402178', 'SUPERVISOR FLOTA AUTOMOTRIZ', 'MANAGUA', 'NI COORD. DE TRANSPORTE', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '300042', 'JUAN CARLOS ORTUÑO PADILLA', 'juan.ortuno@claro.com.ni', '2020-04-20 06:00:00', 'M', 'NI COORD. DE TRANSPORTE', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI', NULL, '2026-01-19 09:20:01', 'ali.rodriguez@claro.com.ni', '0010102840013Q', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'FRENTE A LA NUEVA EMBAJADA AMERICANA', 'SERVICIOS DIVERSOS DE RECURSOS HUMANOS S.A.', 'ENITEL LAS PIEDRECITAS', 'ADMINISTRATIVO', 'CAMBIO_TIPO_DE_MARCAJE', 'SYNC_RRHH_CSV', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, '300048', NULL, NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (21, 'EDGARDO JOSE SABALLOS VELAZQUEZ', 'EDGARDO JOSE SABALLOS VELAZQUEZ', 'edgardo.saballos@claro.com.ni', 1, 'Empleado', NULL, '1009828', 'ESPECIALISTA RECURSOS HUMANOS B', 'MANAGUA', 'NI COORD. DE TRANSPORTE', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '402178', 'ALI ADOLFO RODRIGUEZ URIARTE', 'ali.rodriguez@claro.com.ni', '2025-01-06 06:00:00', 'M', 'NI COORD. DE TRANSPORTE', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI', NULL, '2026-01-19 09:20:02', 'EDGARDO.SABALLOS', '0010701940034Q', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'FRENTE A LA NUEVA EMBAJADA AMERICANA', 'SERVICIOS DIVERSOS DE RECURSOS HUMANOS S.A.', 'ENITEL LAS PIEDRECITAS', 'ADMINISTRATIVO', 'CAMBIO_TIPO_DE_MARCAJE', 'SYNC_RRHH_CSV', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, '300042', '300048', NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (22, 'PEDRO JAVIER CASTILLO MENDEZ', 'PEDRO JAVIER CASTILLO MENDEZ', 'pedro.castillo@claro.com.ni', 1, 'Empleado', NULL, '249859', 'ESPECIALISTA RECURSOS HUMANOS B', 'MANAGUA', 'NI COORD. DE TRANSPORTE', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '402178', 'ALI ADOLFO RODRIGUEZ URIARTE', 'ali.rodriguez@claro.com.ni', '2001-05-02 06:00:00', 'M', 'NI COORD. DE TRANSPORTE', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI', NULL, '2026-01-19 09:20:03', 'pedro.castillo@claro.com.ni', '0062906770000N', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'FRENTE A LA NUEVA EMBAJADA AMERICANA', 'EMPRESA NICARAGUENSE DE TELECOMUNICACIONES S. A.', 'ENITEL LAS PIEDRECITAS', 'ADMINISTRATIVO', 'CAMBIO_TIPO_DE_MARCAJE', 'SYNC_RRHH_CSV', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, '300042', '300048', NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (23, 'GUSTAVO ADOLFO LIRA SALAZAR', 'GUSTAVO ADOLFO LIRA SALAZAR', 'gustavo.lira@claro.com.ni', 1, 'Admin', 1, '500708', 'ANALISTA DE SOPORTE RH', 'MANAGUA', 'NI COORD. DE SOPORTE A LA OPERACION', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '772', 'CANDIDA JAZMINA SANCHEZ LOPEZ', 'candida.sanchez@claro.com.ni', '2022-05-23 06:00:00', 'M', 'NI COORD. DE SOPORTE A LA OPERACION', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI', NULL, '2026-01-19 09:20:05', 'gustavo.lira@claro.com.ni', '0810210920004H', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'Santo Domingo, Casa Protocolo.', 'SERVICIOS DIVERSOS DE RECURSOS HUMANOS S.A.', 'ENITEL CASA PROTOCOLO(STO.DGO MGA)', 'ADMINISTRATIVO', 'CLARO_ASCENSO', 'SYNC_RRHH_CSV', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, '300042', '300048', NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (24, 'CANDIDA JAZMINA SANCHEZ LOPEZ', 'CANDIDA JAZMINA SANCHEZ LOPEZ', 'candida.sanchez@claro.com.ni', 1, 'Admin', NULL, '772', 'COORDINADOR SOPORTE A LA OPERACION', 'MANAGUA', 'NI COORD. DE SOPORTE A LA OPERACION', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '300042', 'JUAN CARLOS ORTUÑO PADILLA', 'juan.ortuno@claro.com.ni', '2007-07-30 06:00:00', 'F', 'NI COORD. DE SOPORTE A LA OPERACION', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI', NULL, '2026-01-19 09:20:06', 'candida.sanchez@claro.com.ni', '0010706800003Q', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'Santo Domingo, Casa Protocolo.', 'EMPRESA NICARAGUENSE DE TELECOMUNICACIONES S. A.', 'ENITEL CASA PROTOCOLO(STO.DGO MGA)', 'ADMINISTRATIVO', 'CAMBIO_TIPO_DE_MARCAJE', 'SYNC_RRHH_CSV', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, '300048', NULL, NULL, '2026-01-22 15:59:25');
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (25, 'JILMA CAROLINA ZELAYA GARCIA', 'JILMA CAROLINA ZELAYA GARCIA', 'jilma.zelaya@claro.com.ni', 1, 'Empleado', NULL, '402035', 'ESPECIALISTA DE BIENESTAR SOCIAL', 'MANAGUA', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '400850', 'SERGIO ALEXANDER MARTINEZ ESPINOZA', 'sergio.martinez@claro.com.ni', '2019-08-05 06:00:00', 'F', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI', NULL, '2026-01-19 09:20:07', 'jilma.zelaya@claro.com.ni', '0010102950027V', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'FRENTE A LA NUEVA EMBAJADA AMERICANA', 'SERVICIOS DIVERSOS DE RECURSOS HUMANOS S.A.', 'ENITEL LAS PIEDRECITAS', 'ADMINISTRATIVO', 'CAMBIO_TIPO_DE_MARCAJE', 'SYNC_RRHH_CSV', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, NULL, '300048', NULL, NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (26, 'ALLAN MAURICIO HERNANDEZ', 'ALLAN MAURICIO HERNANDEZ', 'allanm.hernandez@claro.com.ni', 1, 'Empleado', NULL, '402105', 'ESPECIALISTA RECURSOS HUMANOS A', 'MANAGUA', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '400850', 'SERGIO ALEXANDER MARTINEZ ESPINOZA', 'sergio.martinez@claro.com.ni', '2019-11-25 06:00:00', 'M', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI', NULL, '2026-01-19 09:20:08', 'allanm.hernandez@claro.com.ni', '0010909950017X', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'FRENTE A LA NUEVA EMBAJADA AMERICANA', 'SERVICIOS DIVERSOS DE RECURSOS HUMANOS S.A.', 'ENITEL LAS PIEDRECITAS', 'ADMINISTRATIVO', 'CAMBIO_TIPO_DE_MARCAJE', 'SYNC_RRHH_CSV', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, NULL, '300048', NULL, NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (27, 'ROLANDO EUGENIO MARENCO GUTIERREZ', 'ROLANDO EUGENIO MARENCO GUTIERREZ', 'rolando.marenco@claro.com.ni', 1, 'Empleado', NULL, '1010683', 'ESPECIALISTA DE CAPACITACION A', 'MANAGUA', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '400850', 'SERGIO ALEXANDER MARTINEZ ESPINOZA', 'sergio.martinez@claro.com.ni', '2025-03-10 06:00:00', 'M', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI', NULL, '2026-01-19 09:20:09', 'ROLANDO.MARENCO', '0012712960024J', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'FRENTE A LA NUEVA EMBAJADA AMERICANA', 'SERVICIOS DIVERSOS DE RECURSOS HUMANOS S.A.', 'ENITEL LAS PIEDRECITAS', 'ADMINISTRATIVO', 'CAMBIO_TIPO_DE_MARCAJE', 'SYNC_RRHH_CSV', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, NULL, '300048', NULL, NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (28, 'MILCY CAROLINA VELASQUEZ QUINTANILLA', 'MILCY CAROLINA VELASQUEZ QUINTANILLA', 'milcy.velasquez@claro.com.ni', 1, 'Empleado', NULL, '401992', 'ESPECIALISTA RECURSOS HUMANOS A', 'MANAGUA', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '400850', 'SERGIO ALEXANDER MARTINEZ ESPINOZA', 'sergio.martinez@claro.com.ni', '2019-07-08 06:00:00', 'F', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI', NULL, '2026-01-19 09:20:10', 'milcy.velasquez@claro.com.ni', '0013009970044M', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'FRENTE A LA NUEVA EMBAJADA AMERICANA', 'SERVICIOS DIVERSOS DE RECURSOS HUMANOS S.A.', 'ENITEL LAS PIEDRECITAS', 'ADMINISTRATIVO', 'CAMBIO_TIPO_DE_MARCAJE', 'SYNC_RRHH_CSV', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, NULL, '300048', NULL, NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (29, 'SERGIO ALEXANDER MARTINEZ ESPINOZA', 'SERGIO ALEXANDER MARTINEZ ESPINOZA', 'sergio.martinez@claro.com.ni', 1, 'Empleado', NULL, '400850', 'SUBGERENTE CAPACITACION Y DESARROLLO', 'MANAGUA', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '300042', 'JUAN CARLOS ORTUÑO PADILLA', 'juan.ortuno@claro.com.ni', '2014-04-21 06:00:00', 'M', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'NI', NULL, '2026-01-19 09:20:11', 'sergio.martinez@claro.com.ni', '0013108880035W', 'NI SUBGCIA CAPACITACION Y DESARROLLO', 'FRENTE A LA NUEVA EMBAJADA AMERICANA', 'EMPRESA NICARAGUENSE DE TELECOMUNICACIONES S. A.', 'ENITEL LAS PIEDRECITAS', 'ADMINISTRATIVO', 'ORA_POS_SYNC', 'SYNC_RRHH_CSV', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (30, 'SCARLETH VANESSA VIVAS PEREZ', 'SCARLETH VANESSA VIVAS PEREZ', 'scarleth.vivas@claro.com.ni', 1, 'Admin', NULL, '666', 'ESPECIALISTA RECURSOS HUMANOS A', 'MANAGUA', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '300048', 'ANTONIO VEGA SANDOVAL', 'antonio.vega@claro.com.ni', '2007-03-26 06:00:00', 'F', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NO APLICA', 'NI', NULL, '2026-01-19 09:20:12', 'scarleth.vivas@claro.com.ni', '0011007780019G', 'NO APLICA', 'Santo Domingo, Casa Protocolo.', 'EMPRESA NICARAGUENSE DE TELECOMUNICACIONES S. A.', 'ENITEL CASA PROTOCOLO(STO.DGO MGA)', 'ADMINISTRATIVO', 'ORA_POS_SYNC', 'SYNC_RRHH_CSV', 'NI DIRECCION PAIS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-23 23:35:14');
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (31, 'ARLEN CRISTINA RIVERA ESCOTO', 'ARLEN CRISTINA RIVERA ESCOTO', 'arlen.rivera@claro.com.ni', 1, 'Empleado', NULL, '401633', 'ESPECIALISTA DE RECLUTAMIENTO Y SELECCION B', 'MANAGUA', 'NI COORD. DE RECLUTAMIENTO Y SELECCION', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '400103', 'YESENIA DE JESUS MANZANAREZ ALVARADO', 'yesenia.manzanarez@claro.com.ni', '2017-06-19 06:00:00', 'F', 'NI COORD. DE RECLUTAMIENTO Y SELECCION', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGERENCIA DE COMPENSACIONES', 'NI', NULL, '2026-01-19 09:20:14', 'arlen.rivera@claro.com.ni', '0012605810032B', 'NI SUBGERENCIA DE COMPENSACIONES', 'Santo Domingo, Casa Protocolo.', 'SERVICIOS DIVERSOS DE RECURSOS HUMANOS S.A.', 'ENITEL CASA PROTOCOLO(STO.DGO MGA)', 'ADMINISTRATIVO', 'CAMBIO_TIPO_DE_MARCAJE', 'SYNC_RRHH_CSV', 'NI SUBGERENCIA DE COMPENSACIONES', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, '1008937', '300048', NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (32, 'FRANCIS MARIA VILLARREAL TORRES', 'FRANCIS MARIA VILLARREAL TORRES', 'francis.villarreal@claro.com.ni', 1, 'Empleado', NULL, '402336', 'ESPECIALISTA DE RECLUTAMIENTO Y SELECCION B', 'MANAGUA', 'NI COORD. DE RECLUTAMIENTO Y SELECCION', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '400103', 'YESENIA DE JESUS MANZANAREZ ALVARADO', 'yesenia.manzanarez@claro.com.ni', '2022-09-05 06:00:00', 'F', 'NI COORD. DE RECLUTAMIENTO Y SELECCION', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGERENCIA DE COMPENSACIONES', 'NI', NULL, '2026-01-19 09:20:14', 'francis.villarreal@claro.com.ni', '0012009940039B', 'NI SUBGERENCIA DE COMPENSACIONES', 'Santo Domingo, Casa Protocolo.', 'SERVICIOS DIVERSOS DE RECURSOS HUMANOS S.A.', 'ENITEL CASA PROTOCOLO(STO.DGO MGA)', 'ADMINISTRATIVO', 'CAMBIO_TIPO_DE_MARCAJE', 'SYNC_RRHH_CSV', 'NI SUBGERENCIA DE COMPENSACIONES', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, '1008937', '300048', NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (33, 'KEVIN EDUARDO BARAHONA LOPEZ', 'KEVIN EDUARDO BARAHONA LOPEZ', 'kevine.barahona@claro.com.ni', 1, 'Empleado', NULL, '500358', 'ESPECIALISTA DE RECLUTAMIENTO Y SELECCION A', 'MANAGUA', 'NI COORD. DE RECLUTAMIENTO Y SELECCION', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '400103', 'YESENIA DE JESUS MANZANAREZ ALVARADO', 'yesenia.manzanarez@claro.com.ni', '2018-09-10 06:00:00', 'M', 'NI COORD. DE RECLUTAMIENTO Y SELECCION', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGERENCIA DE COMPENSACIONES', 'NI', NULL, '2026-01-19 09:20:16', 'kevine.barahona@claro.com.ni', '0010602980003P', 'NI SUBGERENCIA DE COMPENSACIONES', 'Santo Domingo, Casa Protocolo.', 'SERVICIOS DIVERSOS DE RECURSOS HUMANOS S.A.', 'ENITEL CASA PROTOCOLO(STO.DGO MGA)', 'ADMINISTRATIVO', 'CAMBIO_TIPO_DE_MARCAJE', 'SYNC_RRHH_CSV', 'NI SUBGERENCIA DE COMPENSACIONES', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, '1008937', '300048', NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (34, 'YESENIA DE JESUS MANZANAREZ ALVARADO', 'YESENIA DE JESUS MANZANAREZ ALVARADO', 'yesenia.manzanarez@claro.com.ni', 1, 'Empleado', NULL, '400103', 'COORDINADOR RECLUTAMIENTO Y SELECCION', 'MANAGUA', 'NI COORD. DE RECLUTAMIENTO Y SELECCION', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '1008937', 'AURORA DEL SOCORRO ESPINOZA DIAZ', 'aurora.espinoza@claro.com.ni', '2011-01-04 06:00:00', 'F', 'NI COORD. DE RECLUTAMIENTO Y SELECCION', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGERENCIA DE COMPENSACIONES', 'NI', NULL, '2026-01-19 09:20:17', 'yesenia.manzanarez@claro.com.ni', '3610906800003F', 'NI SUBGERENCIA DE COMPENSACIONES', 'Santo Domingo, Casa Protocolo.', 'SERVICIOS DIVERSOS DE RECURSOS HUMANOS S.A.', 'ENITEL CASA PROTOCOLO(STO.DGO MGA)', 'ADMINISTRATIVO', 'CAMBIO_TIPO_DE_MARCAJE', 'SYNC_RRHH_CSV', 'NI SUBGERENCIA DE COMPENSACIONES', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, '300048', NULL, NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (35, 'JAVIER ANTONIO TORUÑO MENDOZA', 'JAVIER ANTONIO TORUÑO MENDOZA', 'javier.toruno@claro.com.ni', 1, 'Empleado', NULL, '229354', 'COORDINADOR RRHH', 'MANAGUA', 'NI COORD. DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '300042', 'JUAN CARLOS ORTUÑO PADILLA', 'juan.ortuno@claro.com.ni', '2005-01-16 06:00:00', 'M', 'NI COORD. DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI', NULL, '2026-01-19 09:20:18', 'javier.toruno@claro.com.ni', '2881307710001X', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'Santo Domingo, Casa Protocolo.', 'EMPRESA NICARAGUENSE DE TELECOMUNICACIONES S. A.', 'ENITEL CASA PROTOCOLO(STO.DGO MGA)', 'ADMINISTRATIVO', 'CAMBIO_TIPO_DE_MARCAJE', 'SYNC_RRHH_CSV', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, '300048', NULL, NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (36, 'MARIO ALBERTO RIOS GUILLEN', 'MARIO ALBERTO RIOS GUILLEN', 'mario.rios@claro.com.ni', 1, 'Empleado', NULL, '500313', 'ESPECIALISTA DE NOMINA', 'MANAGUA', 'NI COORD. DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '229354', 'JAVIER ANTONIO TORUÑO MENDOZA', 'javier.toruno@claro.com.ni', '2017-10-09 06:00:00', 'M', 'NI COORD. DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI', NULL, '2026-01-19 09:20:19', 'mario.rios@claro.com.ni', '0012607930019K', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'Santo Domingo, Casa Protocolo.', 'SERVICIOS DIVERSOS DE RECURSOS HUMANOS S.A.', 'ENITEL CASA PROTOCOLO(STO.DGO MGA)', 'ADMINISTRATIVO', 'CLARO_ASCENSO', 'SYNC_RRHH_CSV', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, '300042', '300048', NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (37, 'JUANA PASTORA URBINA VASQUEZ', 'JUANA PASTORA URBINA VASQUEZ', 'juana.urbina@claro.com.ni', 1, 'Empleado', NULL, '228710', 'AUXILIAR DE RECURSOS HUMANOS', 'MANAGUA', 'NI COORD. DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '229354', 'JAVIER ANTONIO TORUÑO MENDOZA', 'javier.toruno@claro.com.ni', '1994-02-24 05:00:00', 'F', 'NI COORD. DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI', NULL, '2026-01-19 09:20:20', 'juana.urbina@claro.com.ni', '0012003660070X', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'Santo Domingo, Casa Protocolo.', 'EMPRESA NICARAGUENSE DE TELECOMUNICACIONES S. A.', 'ENITEL CASA PROTOCOLO(STO.DGO MGA)', 'OPERATIVO', 'JOB_CHANGE', 'SYNC_RRHH_CSV', 'NI SUBGERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, '300042', '300048', NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (38, 'MARIA ARACELLY GONZALEZ REYES', 'MARIA ARACELLY GONZALEZ REYES', 'maria.gonzalez2@claro.com.ni', 1, 'Empleado', NULL, '245540', 'ESPECIALISTA RECURSOS HUMANOS A', 'MANAGUA', 'NI COORD. DE HIGIENE Y SEGURIDAD', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '1006062', 'ANDRES ERNESTO DUQUE SALAZAR', 'andres.duque@claro.com.ni', '2000-07-01 06:00:00', 'F', 'NI COORD. DE HIGIENE Y SEGURIDAD', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI', NULL, '2026-01-19 09:20:21', 'maria.gonzalez2@claro.com.ni', '0410712800001X', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'Santo Domingo, Casa Protocolo.', 'EMPRESA NICARAGUENSE DE TELECOMUNICACIONES S. A.', 'ENITEL CASA PROTOCOLO(STO.DGO MGA)', 'ADMINISTRATIVO', 'CAMBIO_TIPO_DE_MARCAJE', 'SYNC_RRHH_CSV', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, '300034', '300048', NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (39, 'ERICK ALBERTO NICOLAS MONTENEGRO', 'ERICK ALBERTO NICOLAS MONTENEGRO', 'erick.nicolas@claro.com.ni', 1, 'Empleado', NULL, '500428', 'SUPERVISOR DE HIGIENE Y SEGURIDAD A', 'MANAGUA', 'NI COORD. DE HIGIENE Y SEGURIDAD', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '1006062', 'ANDRES ERNESTO DUQUE SALAZAR', 'andres.duque@claro.com.ni', '2019-09-30 06:00:00', 'M', 'NI COORD. DE HIGIENE Y SEGURIDAD', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI', NULL, '2026-01-19 09:20:22', 'erick.nicolas@claro.com.ni', '0012810950049F', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'Santo Domingo, Casa Protocolo.', 'SERVICIOS DIVERSOS DE RECURSOS HUMANOS S.A.', 'ENITEL CASA PROTOCOLO(STO.DGO MGA)', 'ADMINISTRATIVO', 'CAMBIO_TIPO_DE_MARCAJE', 'SYNC_RRHH_CSV', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, '300034', '300048', NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (40, 'ANDRES ERNESTO DUQUE SALAZAR', 'ANDRES ERNESTO DUQUE SALAZAR', 'andres.duque@claro.com.ni', 1, 'Empleado', NULL, '1006062', 'COORDINADOR DE HIGIENE Y SEGURIDAD', 'MANAGUA', 'NI COORD. DE HIGIENE Y SEGURIDAD', 'NI GERENCIA DE RECURSOS HUMANOS', '3.00E+14', '300034', 'NELSON ENRIQUE PEREZ FONSECA', 'nelson.perez@claro.com.ni', '2024-04-15 06:00:00', 'M', 'NI COORD. DE HIGIENE Y SEGURIDAD', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI', NULL, '2026-01-19 09:20:23', 'andres.duque@claro.com.ni', '0012811960006K', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'Santo Domingo, Casa Protocolo.', 'EMPRESA NICARAGUENSE DE TELECOMUNICACIONES S. A.', 'ENITEL CASA PROTOCOLO(STO.DGO MGA)', 'ADMINISTRATIVO', 'CAMBIO_TIPO_DE_MARCAJE', 'SYNC_RRHH_CSV', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI DIRECCION PAIS', NULL, NULL, '300048', NULL, NULL, NULL);
INSERT INTO [p_Usuarios] ([idUsuario], [nombre], [nombreCompleto], [correo], [activo], [rolGlobal], [idRol], [carnet], [cargo], [departamento], [orgDepartamento], [orgGerencia], [idOrg], [jefeCarnet], [jefeNombre], [jefeCorreo], [fechaIngreso], [genero], [primer_nivel], [gerencia], [ogerencia], [subgerencia], [pais], [telefono], [fechaCreacion], [username], [cedula], [area], [direccion], [empresa], [ubicacion], [tipo_empleado], [tipo_contrato], [fuente_datos], [segundo_nivel], [tercer_nivel], [cuarto_nivel], [quinto_nivel], [sexto_nivel], [carnet_jefe2], [carnet_jefe3], [carnet_jefe4], [fechaActualizacion]) VALUES (41, 'TANIA', 'DR TANIA', 'serviciomedico@claro.com.ni', 1, 'Empleado', NULL, '777777', 'DOCTORA', 'MANAGUA', 'NI SERVICIO MEDICO', 'NI GERENCIA DE RECURSOS HUMANOS', NULL, '300034', 'NELSON ENRIQUE PEREZ FONSECA', 'nelson.perez@claro.com.ni', '2024-04-15 06:00:00', 'F', 'NI SERVICIO MEDICO', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI GERENCIA DE RECURSOS HUMANOS', 'NI SUBGCIA DE RELACIONES LABORALES Y SEGURIDAD INDUSTRIAL', 'NI', NULL, '2026-01-19 10:34:33', 'serviciomedico@claro.com.ni', '0000000000000', 'NI SERVICIO MEDICO', 'santo domingo', 'EXTERNO', 'EXTERNO', 'ADMINISTRATIVO', NULL, NULL, 'NI GERENCIA DE RECURSOS HUMANOS', NULL, NULL, NULL, NULL, '300048', NULL, NULL, NULL);
SET IDENTITY_INSERT [p_Usuarios] OFF;

-- Table: p_Usuarios_OLD

-- Table: p_UsuariosConfig

-- Table: p_UsuariosCredenciales
SET IDENTITY_INSERT [p_UsuariosCredenciales] ON;
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (1, 1, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-21 00:00:34', '2026-01-22 16:58:59', '$2b$10$qPiJ7hpRjwFPYAQWA5jZRuOUedi9RFIJHUboy7duyUrPmLMdq1aca');
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (2, 2, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-19 15:44:55', '2026-01-22 16:41:54', '$2b$10$Ge94jrqfRYxd9CeeHt2sgeCFfkUMmCqHxz1jyaX.dLYleR2xplEBm');
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (3, 3, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-21 05:32:11', '2026-01-22 17:37:25', '$2b$10$QWQzbh52.c99Db.hcDLZHuUvMZ/J3pKBV9uQNgS3f.QUpqNhaMAp2');
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (4, 4, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-21 05:32:11', '2026-01-22 15:29:38', '$2b$10$y8B60LbDntJOv8SQApOBVegOIB77JHs5wxSnRF8EjJnhdudydU1hO');
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (5, 5, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-21 05:32:11', '2026-01-21 05:32:11', NULL);
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (6, 6, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-20 23:12:33', '2026-01-22 15:51:42', '$2b$10$rY8au/T8EDuf5OTiMkTcR.ZqyXIMduTqc.tk6YhauUD4lcgepIEo.');
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (7, 7, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-20 23:02:41', '2026-01-22 16:30:14', '$2b$10$KPcvYKCOpS6GxIbek0wJo.67gSymE/dUadSGTobQ8S//cTbRlLpuG');
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (8, 8, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-21 05:32:11', '2026-01-22 21:09:17', '$2b$10$CMrl7zkebUUEmVHeyg5zPuc4NXJf4ZqwjBcwK4PxT4tR1MfSwwrVO');
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (9, 9, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-21 05:32:11', '2026-01-21 05:32:11', NULL);
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (10, 10, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-21 05:32:11', '2026-01-21 05:32:11', NULL);
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (11, 11, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-21 05:32:11', '2026-01-21 05:32:11', NULL);
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (12, 12, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-21 05:32:11', '2026-01-22 15:36:25', '$2b$10$cqr8sFqstzYnE4VMfB.Ctu1/RYNtiaMOYq3PYdDCRnn4f933QIHKC');
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (13, 13, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-21 05:32:11', '2026-01-21 05:32:11', NULL);
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (14, 14, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-21 05:32:11', '2026-01-21 05:32:11', NULL);
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (15, 15, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-21 05:32:11', '2026-01-21 05:32:11', NULL);
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (16, 16, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-20 15:44:01', '2026-01-22 16:58:26', '$2b$10$kXti93k4EioTfO5JX8I9dexLDdfTWwpNJVd72U.XifxyOI1VLGYvW');
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (17, 17, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-21 05:32:11', '2026-01-21 05:32:11', NULL);
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (18, 18, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-21 05:32:11', '2026-01-21 05:32:11', NULL);
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (19, 19, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-21 05:32:11', '2026-01-21 05:32:11', NULL);
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (20, 20, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-20 15:42:15', '2026-01-22 16:58:03', '$2b$10$I/tu0rAZ86MHGeygNQVAR.J0p6ytZy0468ySAQZUnKX9clWttKu4C');
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (21, 21, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-19 14:16:46', '2026-01-22 18:44:36', '$2b$10$G65/eHs0cKi4oy5d70m7wemOoiji/sR9O.uw0TT85sBXIi/5FlaYa');
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (22, 22, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-21 05:32:11', '2026-01-21 05:32:11', NULL);
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (23, 23, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-20 23:43:22', '2026-01-23 23:50:03', '$2b$10$SBAGGzK9JpoV029VU3oepe5HXa7Tt9mdGhtpYUInt7/ajhdwXrgEC');
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (24, 24, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-21 05:32:11', '2026-01-23 23:34:27', '$2b$10$d3MQYxqhCGVp8uFjZtsMlOwroOrVbtnPE1ughl/q/O5C0XRthSFoe');
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (25, 25, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-21 05:32:11', '2026-01-21 05:32:11', NULL);
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (26, 26, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-20 15:45:55', '2026-01-23 23:31:44', '$2b$10$5DrQAMNHclkhW9SXdvv/9uJej50kVQoPPbzNaRjTC60/gJWXm2e82');
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (27, 27, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-21 05:32:11', '2026-01-21 05:32:11', NULL);
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (28, 28, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-21 05:32:11', '2026-01-24 00:24:13', '$2b$10$unT2lxyPz81DmGsh8a51Su7jkx9L0Ax2PlEIV5pH/EQY5xAeiNQI.');
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (29, 29, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-20 15:42:38', '2026-01-22 16:35:05', '$2b$10$9wbB2TY7o2DSPJBMyyGaLOup2/kcXI02f4mCZ0ylJIXGZ59CWCyW.');
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (30, 30, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-21 05:32:11', '2026-01-23 23:35:20', '$2b$10$hjN2Rhu8yTkEpKwy8A53T.x4vPsLq4csRAXU54uPt/owU/W.MSTdS');
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (31, 31, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-21 05:32:11', '2026-01-21 05:32:11', NULL);
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (32, 32, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-21 05:32:11', '2026-01-21 05:32:11', NULL);
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (33, 33, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-21 05:32:11', '2026-01-22 21:38:00', '$2b$10$dXL1kBVZdilT4UseGjsLoO89f5kMVWgUp6KNNm.6uf.kp7xrnjjRe');
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (34, 34, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-20 22:58:26', '2026-01-24 00:01:15', '$2b$10$znX2uig6OCAbmYO/BhwjROsHlFVMQsx85ntAE8HJ2ZpIX1/.R/r4W');
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (35, 35, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-21 05:32:11', '2026-01-22 15:29:24', '$2b$10$/zIT2UNvCJkq/moC9yuvgu7492sUfxV8mfpiC4kD0zTyWictrxtXa');
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (36, 36, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-21 05:32:11', '2026-01-21 05:32:11', NULL);
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (37, 37, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-21 05:32:11', '2026-01-21 05:32:11', NULL);
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (38, 38, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-21 05:32:11', '2026-01-23 14:21:11', '$2b$10$geEe3RjmqqtKqoB2ioGtV.OefLvrVrtZbkAABi3NktouOdyGustru');
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (39, 39, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-21 05:32:11', '2026-01-22 05:26:22', '$2b$10$lPEyHTo1zcDwUHAmJODgpORuY8IIXbvK6PjMfdeJW.lRJrYmVyOu6');
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (40, 40, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-21 05:32:11', '2026-01-22 15:28:04', '$2b$10$VRUgBveaPnQm2JPfk1sNlul8qdEyHeEYuT9zOjhESqV/0cCOiOeba');
INSERT INTO [p_UsuariosCredenciales] ([idCredencial], [idUsuario], [passwordHash], [ultimoCambio], [ultimoLogin], [refreshTokenHash]) VALUES (42, 41, '$2b$10$4Hpy.W08gE5jyiK6X5y6EOaGkhVfcFt86fRvxdiji.naAEglXCqVe', '2026-01-22 05:02:25', '2026-01-22 15:30:15', '$2b$10$xqRJgSCvE05ywUEtu.yKPurMAkf8pZ8nhYXpb1wZbpkHNlklmI8Z2');
SET IDENTITY_INSERT [p_UsuariosCredenciales] OFF;

-- Table: p_UsuariosOrganizacion

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

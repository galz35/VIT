-- DDL Generado el 2026-01-25T20:04:07.264Z

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

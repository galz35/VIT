-- DDL Generado el 2026-01-25T20:04:01.776Z

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

CREATE OR ALTER PROCEDURE sp_Admin_ReporteInactividad
    @Fecha DATE = NULL
AS
BEGIN
    SET NOCOUNT ON;
    
    IF @Fecha IS NULL SET @Fecha = CAST(GETDATE() AS DATE);

    SELECT 
        u.idUsuario,
        u.nombreCompleto,
        u.carnet,
        u.correo,
        u.cargo,
        u.area,
        u.subgerencia,
        u.activo
    FROM p_Usuarios u
    WHERE u.activo = 1
    AND NOT EXISTS (
        -- Verificar logins/actividad en p_Auditoria
        SELECT 1 FROM p_Auditoria a
        WHERE a.idUsuario = u.idUsuario
        AND CAST(a.fecha AS DATE) = @Fecha
    )
    AND NOT EXISTS (
        -- Verificar checkins
        SELECT 1 FROM p_Checkins c
        WHERE c.idUsuario = u.idUsuario
        AND c.fecha = @Fecha
    )
    AND NOT EXISTS (
        -- Verificar logs de sistema (por si acaso)
        SELECT 1 FROM p_Logs l
        WHERE l.idUsuario = u.idUsuario
        AND CAST(l.fecha AS DATE) = @Fecha
    )
    ORDER BY u.nombreCompleto;
END;

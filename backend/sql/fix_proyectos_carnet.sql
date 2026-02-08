USE Bdplaner;
GO

-- 1. Actualizar creadorCarnet faltantes basándose en idCreador
UPDATE p
SET p.creadorCarnet = u.carnet
FROM p_Proyectos p
JOIN p_Usuarios u ON p.idCreador = u.idUsuario
WHERE (p.creadorCarnet IS NULL OR p.creadorCarnet = '');

PRINT 'Actualizados creadorCarnet en p_Proyectos.';
GO

-- 2. Asegurarse de que exista responsableCarnet (ya verificado, pero por si acaso)
IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID('p_Proyectos') AND name = 'responsableCarnet')
BEGIN
    ALTER TABLE p_Proyectos ADD responsableCarnet NVARCHAR(50) NULL;
    PRINT 'Columna responsableCarnet agregada.';
END
GO

@echo off
echo Entorno de Ejecucion SQL Server - Bdplaner
echo ==========================================
echo Intentando conectar a la instancia local...

rem Probamos conexion basica usando -E (Trusted Connection)
sqlcmd -S . -E -d Bdplaner -Q "SELECT 'Conexion Exitosa' as Status"
if %errorlevel% neq 0 (
    echo Error: No se pudo conectar a SQL Server local (.)
    echo Intentando localhost...
    sqlcmd -S localhost -E -d Bdplaner -Q "SELECT 'Conexion Exitosa' as Status"
)

echo.
echo Ejecutando script de indices de rendimiento...
echo Archivo: backend\sql\performance_indexes_2026.sql

sqlcmd -S . -E -d Bdplaner -i "backend\sql\performance_indexes_2026.sql"

if %errorlevel% equ 0 (
    echo.
    echo [EXITO] Indices creados correctamente.
) else (
    echo.
    echo [ERROR] Fallo al crear indices. Revise los mensajes anteriores.
)
pause

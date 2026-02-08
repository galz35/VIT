
import { NestFactory } from '@nestjs/core';
import { AppModule } from '../app.module';
import * as clarityRepo from '../clarity/clarity.repo';
import { cerrarPoolSql, obtenerPoolSql } from '../db/sqlserver.provider';

async function run() {
    try {
        console.log('--- INICIANDO TEST PARA CARNET 500708 ---');

        // 1. Conectar BD (Reutilizamos provider si es posible o simulamos init)
        // Al importar clarityRepo, necesitamos que el pool esté activo.
        // Lo más fácil es iniciar el contexto de Nest o invocar el pool helper directo si fuera público,
        // pero clarity.repo usa 'base.repo' que usa el pool singleton.
        // Vamos a inicializar el pool manualmente para evitar levantar todo Nest.

        // Cargar variables de entorno es necesario
        require('dotenv').config();

        await obtenerPoolSql();
        console.log('✅ BD Conectada');

        const CARNET_TARGET = '500708';

        console.log(`\n🔍 Buscando tareas para Carnet: ${CARNET_TARGET}...`);

        // Probar la función CRÍTICA que modificamos
        const tareas = await clarityRepo.obtenerTareasMultiplesUsuarios([CARNET_TARGET]);

        console.log(`\n📊 RESULTADOS:`);
        console.log(`Total Tareas Encontradas: ${tareas.length}`);

        if (tareas.length > 0) {
            console.table(tareas.map(t => ({
                id: t.idTarea,
                titulo: t.titulo?.substring(0, 30),
                estado: t.estado,
                carnet_usuario: t.usuarioCarnet
            })));
        } else {
            console.log('⚠️ No se encontraron tareas. Posibles causas:');
            console.log('   1. El usuario no tiene tareas asignadas en p_TareaAsignados.');
            console.log('   2. El usuario no existe en p_Usuarios con ese carnet.');
            console.log('   3. La tarea no está activa (activo=0).');
        }

        // También probemos la query de Equipo Hoy si podemos simular el ID
        // Primero necesitamos el ID del usuario
        const pool = await obtenerPoolSql();
        const userRes = await pool.request().query(`SELECT idUsuario, nombre FROM p_Usuarios WHERE carnet = '${CARNET_TARGET}'`);
        const user = userRes.recordset[0];

        if (user) {
            console.log(`\n👤 Usuario encontrado: ID=${user.idUsuario}, Nombre=${user.nombre}`);
            console.log(`\n🔍 Probando 'obtenerEquipoHoy' para este usuario (simulando dashboard)...`);

            // Simular fecha de hoy
            const hoy = new Date().toISOString().split('T')[0]; // YYYY-MM-DD

            // Llamamos al repo pasando el ID en un array (como si fuera un miembro del equipo)
            const equipoHoy = await clarityRepo.obtenerEquipoHoy([user.idUsuario], hoy);

            if (equipoHoy.miembros.length > 0) {
                const m = equipoHoy.miembros[0];
                console.log('✅ Datos de Dashboard obtenidos:');
                console.log(`   - Retrasadas: ${m.estadisticas.retrasadas}`);
                console.log(`   - Hoy:        ${m.estadisticas.hoy}`);
                console.log(`   - Hechas:     ${m.estadisticas.hechas}`);
            } else {
                console.log('⚠️ obtenerEquipoHoy no devolvió datos para este miembro.');
            }

        } else {
            console.error('❌ Usuario no encontrado en p_Usuarios con ese carnet.');
        }

    } catch (error) {
        console.error('❌ ERROR FATAL:', error);
    } finally {
        await cerrarPoolSql();
        process.exit();
    }
}

run();


import * as dotenv from 'dotenv';
dotenv.config(); // Load .env file
import { ejecutarSP, SqlDate, NVarChar } from './db/base.repo';

async function main() {
    try {
        const carnet = '500708';
        const fechaStr = new Date().toISOString().split('T')[0];
        // console.log(`\n=== TEST START: sp_Equipo_ObtenerInforme ===`);
        // console.log(`Carnet: ${carnet}`);
        // console.log(`Fecha: ${fechaStr}`);

        const result = await ejecutarSP(
            'sp_Equipo_ObtenerInforme',
            {
                carnetsList: { valor: carnet, tipo: NVarChar },
                fecha: { valor: new Date(fechaStr), tipo: SqlDate }
            }
        );

        // console.log('\n=== RESULTADO ===');
        console.log(JSON.stringify(result, null, 2));

        /*
        if (result.length > 0) {
            const row = result[0] as any;
            console.log('\n--- Resumen ---');
            console.log(`Planificadas (Total Carga): ${row.planificadas}`);
            console.log(`Retrasadas:               ${row.retrasadas}`);
            console.log(`En Curso:                 ${row.enCurso}`);
            console.log(`Bloqueadas:               ${row.bloqueadas}`);
            console.log(`Hechas (Hoy):             ${row.hechas}`);
            console.log(`Descartadas (Hoy):        ${row.descartadas}`);
        } else {
            console.log('No data found for this carnet.');
        }

        console.log('\n=== TEST END ===');
        */
        process.exit(0);

    } catch (e: any) {
        console.error('Error executing test:', e);
        process.exit(1);
    }
}

main();

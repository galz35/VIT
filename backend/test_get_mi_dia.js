const { VisibilidadService } = require('./src/acceso/visibilidad.service');
const { AuditService } = require('./src/common/audit.service');
const { PlanningService } = require('./src/planning/planning.service');

// Mocks
const auditService = { log: () => { } };
const visibilidadService = {
    obtenerCarnetPorId: () => Promise.resolve('00000000'),
};

async function test() {
    const service = new PlanningService(auditService, visibilidadService);
    try {
        const res = await service.getMiDia(1, '2026-02-17');
        console.log('--- SUGERIDAS ---');
        res.tareasSugeridas.forEach(t => {
            if (t.idTarea === 161) console.log('FOUND 161 IN SUGGESTED', t.fechaObjetivo);
        });
        console.log('--- BACKLOG ---');
        res.backlog.forEach(t => {
            if (t.idTarea === 161) console.log('FOUND 161 IN BACKLOG', t.fechaObjetivo);
        });

        const feb28TasksInBacklog = res.backlog.filter(t => t.fechaObjetivo && t.fechaObjetivo.includes('02-28'));
        console.log('FEBRUARY 28 TASKS IN BACKLOG:', feb28TasksInBacklog.length);
        feb28TasksInBacklog.forEach(t => console.log(`  ID: ${t.idTarea}, Name: ${t.titulo}, Date: ${t.fechaObjetivo}`));

    } catch (e) {
        console.error(e);
    }
}
test();

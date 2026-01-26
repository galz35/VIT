import { useState, useEffect } from 'react';
import { useToast } from '../context/ToastContext';
import { clarityService } from '../services/clarity.service';
import { planningService } from '../services/planning.service';
import type { Tarea } from '../types/modelos';

export interface Changes {
    titulo?: string;
    fechaObjetivo?: string;
    fechaInicioPlanificada?: string;
    descripcion?: string;
    linkEvidencia?: string;
    idTareaPadre?: number;
    motivo?: string;
}

export const useTaskController = (task: Tarea, onClose: () => void, onUpdate: () => void) => {
    const { showToast } = useToast();

    // -- State --
    const [fullTask, setFullTask] = useState<Tarea | null>(null);
    const [titulo, setTitulo] = useState(task.titulo || '');
    const [progreso, setProgreso] = useState(task.progreso || 0);
    const [descripcion, setDescripcion] = useState(task.descripcion || '');
    const [fechaObjetivo, setFechaObjetivo] = useState(task.fechaObjetivo ? task.fechaObjetivo.split('T')[0] : '');
    const [fechaInicioPlanificada, setFechaInicioPlanificada] = useState(task.fechaInicioPlanificada ? task.fechaInicioPlanificada.split('T')[0] : '');
    const [linkEvidencia, setLinkEvidencia] = useState(task.linkEvidencia || '');
    const [comentario, setComentario] = useState('');
    const [submitting, setSubmitting] = useState(false);

    // Planning / Logic State
    const [planningCheck, setPlanningCheck] = useState<{ puedeEditar: boolean; requiereAprobacion: boolean; tipoProyecto: string } | null>(null);
    const [auditLogs, setAuditLogs] = useState<any[]>([]);
    const [idTareaPadre, setIdTareaPadre] = useState<number | undefined>(task.idTareaPadre);

    // Pending Changes (Approval Workflow)
    const [pendingChanges, setPendingChanges] = useState<Changes | null>(null);
    const [showChangeModal, setShowChangeModal] = useState(false);

    // -- Effects --
    useEffect(() => {
        let mounted = true;
        const load = async () => {
            try {
                const [t, pCheck, logs] = await Promise.all([
                    clarityService.getTaskById(task.idTarea),
                    planningService.checkPermission(task.idTarea),
                    clarityService.getAuditLogsByTask(task.idTarea)
                ]);

                if (!mounted) return;

                if (t) {
                    setFullTask(t);
                    setIdTareaPadre(t.idTareaPadre);
                    // Sincronizar estado local con datos frescos del servidor
                    setTitulo(t.titulo || '');
                    setProgreso(t.progreso || 0);
                    setDescripcion(t.descripcion || '');
                    setFechaObjetivo(t.fechaObjetivo ? t.fechaObjetivo.split('T')[0] : '');
                    setFechaInicioPlanificada(t.fechaInicioPlanificada ? t.fechaInicioPlanificada.split('T')[0] : '');
                    setLinkEvidencia(t.linkEvidencia || '');
                }
                setPlanningCheck(pCheck);
                setAuditLogs(logs || []);
            } catch (error) {
                console.error("Error loading task details", error);
            }
        };
        load();
        return () => { mounted = false; };
    }, [task.idTarea]);

    // -- Actions --

    const handleSaveProgress = async () => {
        setSubmitting(true);
        try {
            const currentTitulo = task.titulo || '';
            const currentFechaObj = task.fechaObjetivo ? task.fechaObjetivo.split('T')[0] : '';
            const currentFechaIni = task.fechaInicioPlanificada ? task.fechaInicioPlanificada.split('T')[0] : '';
            const currentDesc = task.descripcion || '';

            const hasDefinitionsChanged =
                titulo.trim() !== currentTitulo.trim() ||
                descripcion.trim() !== currentDesc.trim() ||
                fechaObjetivo !== currentFechaObj ||
                fechaInicioPlanificada !== currentFechaIni ||
                (linkEvidencia || '') !== (task.linkEvidencia || '') ||
                idTareaPadre !== task.idTareaPadre;

            if (hasDefinitionsChanged) {
                const isLocked = !!planningCheck?.requiereAprobacion;
                const changingDates = fechaObjetivo !== currentFechaObj || fechaInicioPlanificada !== currentFechaIni;

                if (changingDates && isLocked) {
                    setPendingChanges({
                        titulo: titulo.trim() || undefined,
                        fechaObjetivo: fechaObjetivo || undefined,
                        fechaInicioPlanificada: fechaInicioPlanificada || undefined,
                        descripcion,
                        linkEvidencia: linkEvidencia || undefined
                    });
                    setShowChangeModal(true);
                    setSubmitting(false);
                    return;
                }

                await clarityService.actualizarTarea(task.idTarea, {
                    titulo: titulo.trim() || undefined,
                    fechaObjetivo: fechaObjetivo || undefined,
                    fechaInicioPlanificada: fechaInicioPlanificada || undefined,
                    descripcion,
                    linkEvidencia: linkEvidencia || undefined,
                    idTareaPadre: idTareaPadre || undefined
                });
            }

            // Registrar Avance
            await clarityService.postAvance(task.idTarea, {
                idUsuario: task.idCreador, // TODO: Use actual user ID from context if possible
                progreso,
                comentario: comentario || 'Actualización de progreso'
            });

            showToast('Cambios guardados correctamente', 'success');
            onUpdate();
            onClose();
        } catch (error: any) {
            console.error(error);
            if (error.response?.data?.message?.includes('requiere aprobación')) {
                alert('⚠️ CAMBIO BLOQUEADO: Tarea estratégica. Requiere aprobación.');
            } else {
                alert('Error al guardar: ' + (error.response?.data?.message || error.message));
            }
        } finally {
            setSubmitting(false);
        }
    };

    const confirmChangeRequest = async (motivo: string) => {
        if (!pendingChanges) return;
        setSubmitting(true);
        try {
            await clarityService.actualizarTarea(task.idTarea, {
                ...pendingChanges,
                motivo
            });
            // Log advancement too
            await clarityService.postAvance(task.idTarea, {
                idUsuario: task.idCreador,
                progreso,
                comentario: comentario || 'Solicitud de cambio enviada'
            });

            showToast('Solicitud de cambio enviada', 'success');
            onUpdate();
            onClose();
        } catch (error: any) {
            alert('Error: ' + (error.message));
        } finally {
            setSubmitting(false);
            setShowChangeModal(false);
        }
    };

    const addSubtask = async (tituloSub: string) => {
        if (!tituloSub) return;
        try {
            await clarityService.postTarea({
                titulo: tituloSub,
                idProyecto: task.idProyecto,
                idUsuario: task.idResponsable || task.idCreador, // Default owner
                idResponsable: task.idResponsable || task.idCreador,
                prioridad: 'Media',
                esfuerzo: 'S',
                fechaInicioPlanificada: task.fechaInicioPlanificada,
                fechaObjetivo: task.fechaObjetivo,
                idTareaPadre: task.idTarea
            } as any);

            const updated = await clarityService.getTaskById(task.idTarea);
            if (updated) setFullTask(updated);
            onUpdate();
        } catch (e) {
            alert('Error al crear subtarea');
        }
    };

    return {
        // State
        form: {
            titulo, setTitulo,
            progreso, setProgreso,
            descripcion, setDescripcion,
            fechaObjetivo, setFechaObjetivo,
            fechaInicioPlanificada, setFechaInicioPlanificada,
            linkEvidencia, setLinkEvidencia,
            comentario, setComentario,
            idTareaPadre, setIdTareaPadre
        },
        meta: {
            fullTask,
            planningCheck,
            auditLogs,
            submitting,
            showChangeModal, setShowChangeModal
        },
        actions: {
            handleSaveProgress,
            confirmChangeRequest,
            addSubtask
        }
    };
};

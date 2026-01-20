import React, { useState, useEffect, useMemo } from 'react';
import { useMiDiaContext } from '../context/MiDiaContext';
import { EisenhowerMatrix } from '../../Planning/components/EisenhowerMatrix';
import { clarityService } from '../../../services/clarity.service';
import type { Tarea } from '../../../types/modelos';

const classifyTask = (t: Tarea): 'q1' | 'q2' | 'q3' | 'q4' => {
    const isUrgent = t.fechaObjetivo ? new Date(t.fechaObjetivo) <= new Date(Date.now() + 86400000 * 2) : false;
    const isImportant = t.prioridad === 'Alta' || t.prioridad === 'Media';

    if (isUrgent && isImportant) return 'q1';
    if (!isUrgent && isImportant) return 'q2';
    if (isUrgent && !isImportant) return 'q3';
    return 'q4';
};

export const MatrixView: React.FC = () => {
    const { allDisponibles, fetchMiDia, userId } = useMiDiaContext();
    const [localTasks, setLocalTasks] = useState<Tarea[]>([]);

    useEffect(() => {
        setLocalTasks(allDisponibles);
    }, [allDisponibles]);

    const matrixTasks = useMemo(() => {
        const q1: Tarea[] = [], q2: Tarea[] = [], q3: Tarea[] = [], q4: Tarea[] = [];
        localTasks.forEach(t => {
            const c = classifyTask(t);
            if (c === 'q1') q1.push(t);
            if (c === 'q2') q2.push(t);
            if (c === 'q3') q3.push(t);
            if (c === 'q4') q4.push(t);
        });
        return { q1, q2, q3, q4 };
    }, [localTasks]);

    const handleQuickMove = async (taskId: number, targetQuad: 'q1' | 'q2' | 'q3' | 'q4') => {
        const now = new Date();
        const nextWeek = new Date(now); nextWeek.setDate(nextWeek.getDate() + 7);

        let updates: Partial<Tarea> = {};
        if (targetQuad === 'q1') { updates = { prioridad: 'Alta', fechaObjetivo: now.toISOString() }; }
        if (targetQuad === 'q2') { updates = { prioridad: 'Alta', fechaObjetivo: nextWeek.toISOString() }; }
        if (targetQuad === 'q3') { updates = { prioridad: 'Baja', fechaObjetivo: now.toISOString() }; }
        if (targetQuad === 'q4') { updates = { prioridad: 'Baja', fechaObjetivo: undefined }; }

        setLocalTasks(prev => prev.map(t => {
            if (t.idTarea === taskId) return { ...t, ...updates };
            return t;
        }));

        try {
            await clarityService.actualizarTarea(taskId, updates);
        } catch (e) {
            fetchMiDia();
        }
    };

    const handleQuickAdd = async (title: string) => {
        try {
            await clarityService.postTareaRapida({
                titulo: title,
                idUsuario: userId,
                prioridad: 'Media',
                esfuerzo: 'M'
            });
            fetchMiDia();
        } catch (e) { }
    };

    return (
        <div className="h-full flex flex-col animate-fade-in">
            <div className="flex-1 min-h-0 overflow-hidden">
                <EisenhowerMatrix
                    q1Tasks={matrixTasks.q1}
                    q2Tasks={matrixTasks.q2}
                    q3Tasks={matrixTasks.q3}
                    q4Tasks={matrixTasks.q4}
                    onTaskClick={() => { }}
                    onQuickMove={handleQuickMove}
                    onAdd={handleQuickAdd}
                />
            </div>
        </div>
    );
};

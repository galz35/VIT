import React from 'react';
import { useMiDiaContext } from '../context/MiDiaContext';
import { AgendaTimeline } from '../components/AgendaTimeline';
import { clarityService } from '../../../services/clarity.service';
import { useToast } from '../../../context/ToastContext';

export const TimelineView: React.FC = () => {
    const { fetchMiDia } = useMiDiaContext();
    const { showToast } = useToast();

    return (
        <div className="h-full flex flex-col animate-fade-in overflow-auto">
            <AgendaTimeline
                onTaskClick={(t) => showToast(`Tarea: ${t.titulo}`, 'info')}
                onTaskComplete={async (id) => {
                    try {
                        await clarityService.actualizarTarea(id, { estado: 'Hecha' } as any);
                        showToast('Tarea completada', 'success');
                        fetchMiDia();
                    } catch {
                        showToast('Error al completar', 'error');
                    }
                }}
                onTaskCancel={async (id) => {
                    try {
                        await clarityService.actualizarTarea(id, { estado: 'Descartada' } as any);
                        showToast('Tarea descartada', 'success');
                        fetchMiDia();
                    } catch {
                        showToast('Error al descartar', 'error');
                    }
                }}
            />
        </div>
    );
};

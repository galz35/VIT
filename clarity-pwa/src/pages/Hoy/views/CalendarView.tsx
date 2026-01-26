// Last Modified: 2026-01-24 20:38:55
import React, { useCallback, useState } from 'react';
import { useMutation, useQueryClient } from '@tanstack/react-query';
import { useMiDiaContext } from '../context/MiDiaContext';
import { miDiaKeys } from '../../../hooks/query/useMiDiaQuery';

import { AgendaSemanal } from '../components/AgendaSemanal';
import { clarityService } from '../../../services/clarity.service';
import { useToast } from '../../../context/ToastContext';

export const CalendarView: React.FC = () => {
    const { userId } = useMiDiaContext();
    const { showToast } = useToast();
    const queryClient = useQueryClient();

    // ✅ evita doble click por tarea
    const [idEnProceso, setIdEnProceso] = useState<number | null>(null);

    const actualizarEstado = useMutation({
        mutationFn: async (params: { id: number; estado: 'Hecha' | 'Descartada' }) => {
            const { id, estado } = params;
            await clarityService.actualizarTarea(id, { estado } as any);
        },
        onSuccess: async (_data, vars) => {
            showToast(
                vars.estado === 'Hecha' ? 'Tarea completada' : 'Tarea descartada',
                'success'
            );

            // 🔥 Esto reemplaza fetchMiDia()
            await queryClient.invalidateQueries({ queryKey: miDiaKeys.usuario(userId) });

            // Si AgendaSemanal tiene su propia query, invalídala también:
            // await queryClient.invalidateQueries({ queryKey: ['agendaSemanal'] });
        },
        onError: (_err, vars) => {
            showToast(
                vars.estado === 'Hecha' ? 'Error al completar' : 'Error al descartar',
                'error'
            );
        },
        onSettled: () => {
            setIdEnProceso(null);
        },
    });

    const onTaskClick = useCallback(
        (t: any) => showToast(`Tarea: ${t.titulo}`, 'info'),
        [showToast]
    );

    const onTaskComplete = useCallback(
        async (id: number) => {
            if (idEnProceso !== null) return; // bloquea acciones simultáneas
            setIdEnProceso(id);
            actualizarEstado.mutate({ id, estado: 'Hecha' });
        },
        [actualizarEstado, idEnProceso]
    );

    const onTaskCancel = useCallback(
        async (id: number) => {
            if (idEnProceso !== null) return;
            setIdEnProceso(id);
            actualizarEstado.mutate({ id, estado: 'Descartada' });
        },
        [actualizarEstado, idEnProceso]
    );

    return (
        <div className="h-full flex flex-col animate-fade-in overflow-auto">
            <AgendaSemanal
                onTaskClick={onTaskClick}
                onTaskComplete={onTaskComplete}
                onTaskCancel={onTaskCancel}

            // ✅ Si AgendaSemanal soporta “disabled/loading”, pásalo:
            // isBusy={actualizarEstado.isPending}
            // busyTaskId={idEnProceso}
            />
        </div>
    );
};

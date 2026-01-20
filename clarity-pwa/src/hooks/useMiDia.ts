import { useState, useEffect, useCallback } from 'react';
import { clarityService } from '../services/clarity.service';
import type { Tarea, Checkin, Bloqueo } from '../types/modelos';

export const useMiDia = (fecha: string) => {
    const [loading, setLoading] = useState(true);
    const [refreshing, setRefreshing] = useState(false);

    // State Data
    const [checkin, setCheckin] = useState<Checkin | null>(null);
    const [arrastrados, setArrastrados] = useState<Tarea[]>([]);
    const [bloqueos, setBloqueos] = useState<Bloqueo[]>([]);
    const [bloqueosMeCulpan, setBloqueosMeCulpan] = useState<Bloqueo[]>([]);
    const [disponibles, setDisponibles] = useState<Tarea[]>([]);
    const [backlog, setBacklog] = useState<Tarea[]>([]);

    const fetchMiDia = useCallback(async () => {
        try {
            setRefreshing(true);
            const data = await clarityService.getMiDia(fecha);
            if (data) {
                setCheckin(data.checkinHoy as any);
                setArrastrados([]);
                setBloqueos(data.bloqueosActivos || []);
                setBloqueosMeCulpan(data.bloqueosMeCulpan || []);
                setDisponibles(data.tareasSugeridas || []);
                setBacklog(data.backlog || []);
            }
        } catch (error) {
            console.error('Error fetching Mi Dia', error);
        } finally {
            setLoading(false);
            setRefreshing(false);
        }
    }, [fecha]);

    useEffect(() => {
        fetchMiDia();
    }, [fetchMiDia]);

    const revalidarTarea = async (idTarea: number, accion: 'Sigue' | 'HechaPorOtro' | 'NoAplica') => {
        try {
            await clarityService.revalidarTarea(idTarea, accion);
            // Optimistic update or refresh
            setArrastrados(prev => prev.filter(t => t.idTarea !== idTarea));
        } catch (error) {
            console.error('Error revalidating', error);
        }
    };

    // Removed unused parameters to fix lint
    const crearBloqueo = async () => {
        // Implement logic
    };

    return {
        loading,
        refreshing,
        checkin,
        arrastrados,
        bloqueos,
        bloqueosMeCulpan,
        disponibles,
        backlog,
        fetchMiDia,
        actions: {
            revalidarTarea,
            crearBloqueo
        }
    };
};

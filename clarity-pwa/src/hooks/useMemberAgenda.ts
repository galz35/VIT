import { useState, useEffect, useCallback } from 'react';
import { clarityService } from '../services/clarity.service';
import type { Tarea, Checkin, Bloqueo } from '../types/modelos';

export const useMemberAgenda = (userId: string, fecha: string) => {
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
        if (!userId) return;
        try {
            setRefreshing(true);
            // This is the key difference: calling `getMemberAgenda`
            const data = await clarityService.getMemberAgenda(userId, fecha);
            if (data) {
                setCheckin(data.checkinHoy as any);
                setArrastrados([]);
                setBloqueos(data.bloqueosActivos || []);
                setBloqueosMeCulpan(data.bloqueosMeCulpan || []);
                setDisponibles(data.tareasSugeridas || []);
                setBacklog(data.backlog || []);
            }
        } catch (error) {
            console.error('Error fetching Member Agenda', error);
        } finally {
            setLoading(false);
            setRefreshing(false);
        }
    }, [userId, fecha]);

    useEffect(() => {
        fetchMiDia();
    }, [fetchMiDia]);

    return {
        loading,
        refreshing,
        checkin,
        arrastrados,
        bloqueos,
        bloqueosMeCulpan,
        disponibles,
        backlog,
        fetchMiDia
    };
};

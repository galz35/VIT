import React, { createContext, useContext, useMemo } from 'react';
import { useMiDia } from '../../../hooks/useMiDia';
import type { Checkin, Tarea, Bloqueo } from '../../../types/modelos';

interface MiDiaContextType {
    loading: boolean;
    checkin: Checkin | null | undefined;
    arrastrados: Tarea[] | undefined;
    bloqueos: Bloqueo[] | undefined;
    bloqueosMeCulpan: Bloqueo[] | undefined;
    disponibles: Tarea[] | undefined;
    backlog: Tarea[] | undefined;
    allDisponibles: Tarea[];
    fetchMiDia: () => Promise<void>;
    userId: number;
    today: string;
    setToday: (date: string) => void;
}

export const MiDiaContext = createContext<MiDiaContextType | undefined>(undefined);

export const MiDiaProvider: React.FC<{ children: React.ReactNode, userId: number }> = ({ children, userId }) => {
    const [today, setToday] = React.useState(new Date().toISOString().split('T')[0]);
    const { loading, checkin, arrastrados, bloqueos, bloqueosMeCulpan, disponibles, backlog, fetchMiDia } = useMiDia(today);

    // Derived logic centralized here
    const allDisponibles = useMemo(() => {
        // Merge suggested tasks + backlog to allow working on anything pending
        const base = [...(disponibles || []), ...(backlog || [])];

        // Remove duplicates (by idTarea)
        const unique = Array.from(new Map(base.map(t => [Number(t.idTarea), t])).values());

        // Merge with 'arrastrados' (if any)
        const real = [...(arrastrados || []), ...unique.filter(u => !(arrastrados || []).some(a => Number(a.idTarea) === Number(u.idTarea)))];

        // Sort by order
        real.sort((a, b) => (a.orden || 0) - (b.orden || 0));

        return real;
    }, [arrastrados, disponibles, backlog, loading]);

    const value = {
        loading,
        checkin,
        arrastrados,
        bloqueos,
        bloqueosMeCulpan,
        disponibles,
        backlog,
        allDisponibles,
        fetchMiDia,
        userId,
        today,
        setToday
    };

    return <MiDiaContext.Provider value={value}>{children}</MiDiaContext.Provider>;
};

export const useMiDiaContext = () => {
    const context = useContext(MiDiaContext);
    if (!context) throw new Error('useMiDiaContext must be used within a MiDiaProvider');
    return context;
};

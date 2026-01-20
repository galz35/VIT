import React, { useMemo } from 'react';
import { useMemberAgenda } from '../../../hooks/useMemberAgenda';
import { MiDiaContext } from './MiDiaContext';

export const MemberAgendaProvider: React.FC<{ children: React.ReactNode, userId: string }> = ({ children, userId }) => {
    const [today, setToday] = React.useState(new Date().toISOString().split('T')[0]);

    // Hooks dedicated to pulling data for the TARGET user, not the logged-in user
    const { loading, checkin, arrastrados, bloqueos, bloqueosMeCulpan, disponibles, backlog, fetchMiDia } = useMemberAgenda(userId, today);

    // Derived logic centralized here (Mirroring MiDiaContext logic)
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
        userId: Number(userId),
        today,
        setToday
    };

    // MAGIC: We provide the Mock/Proxy context using the original Context ID.
    // This tricks <ExecutionView>, <MatrixView>, etc., into rendering with OUR data.
    return <MiDiaContext.Provider value={value}>{children}</MiDiaContext.Provider>;
};

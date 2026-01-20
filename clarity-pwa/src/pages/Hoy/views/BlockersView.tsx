import React from 'react';
import { useMiDiaContext } from '../context/MiDiaContext';
import { BloqueosWidget } from '../components/BloqueosWidget';

export const BlockersView: React.FC = () => {
    const { userId, fetchMiDia } = useMiDiaContext();
    return (
        <div className="h-full animate-fade-in overflow-auto">
            <BloqueosWidget userId={userId} onUpdate={fetchMiDia} />
        </div>
    );
};

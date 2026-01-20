import React from 'react';
import { useMiDiaContext } from '../context/MiDiaContext';
import { AlertasWidget } from '../components/AlertasWidget';

export const AlertsView: React.FC = () => {
    const { userId, fetchMiDia } = useMiDiaContext();
    return (
        <div className="h-full animate-fade-in overflow-auto">
            <AlertasWidget userId={userId} onUpdate={fetchMiDia} />
        </div>
    );
};

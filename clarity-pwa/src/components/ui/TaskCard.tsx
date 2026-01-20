import React from 'react';
import type { Tarea } from '../../types/modelos';
import { StatusPill } from './StatusPill';

interface Props {
    tarea: Tarea;
    onClick?: () => void;
    compact?: boolean;
}

export const TaskCard: React.FC<Props> = ({ tarea, onClick, compact = false }) => {
    const getCardStyle = () => {
        if (tarea.estado === 'EnCurso') return 'bg-emerald-50 border-emerald-200 shadow-sm';
        if (tarea.estado === 'Hecha' || tarea.estado === 'Descartada') return 'bg-gray-50 border-gray-200 opacity-75';

        // Verificación de Atraso
        if (tarea.fechaObjetivo) {
            const hoy = new Date();
            const fechaObj = new Date(tarea.fechaObjetivo);
            // reset hours for cleaner day comparison
            hoy.setHours(0, 0, 0, 0);
            fechaObj.setHours(0, 0, 0, 0);

            const diffTime = hoy.getTime() - fechaObj.getTime();
            const diffDays = diffTime / (1000 * 3600 * 24);

            if (diffDays > 2) return 'bg-red-50 border-red-200 shadow-sm'; // Crítico
            if (diffDays > 0) return 'bg-orange-50 border-orange-200 shadow-sm'; // Atrasado
        }

        return 'bg-white border-slate-200 shadow-sm'; // Default
    };

    return (
        <div
            onClick={onClick}
            className={`${getCardStyle()} rounded-lg border p-3 hover:shadow-md transition-all cursor-pointer ${compact ? 'py-2' : ''}`}
        >
            <div className="flex justify-between items-start mb-1">
                <h4 className={`font-semibold text-slate-800 line-clamp-2 ${compact ? 'text-sm' : 'text-base'}`}>{tarea.titulo}</h4>
                {!compact && <StatusPill status={tarea.estado} size="sm" />}
            </div>

            {!compact && (
                <div className="flex justify-between items-center text-xs text-slate-500 mt-2">
                    <div className="flex gap-2">
                        <span className="bg-slate-50 px-1.5 py-0.5 rounded border border-slate-100">
                            {tarea.proyecto?.nombre || 'General'}
                        </span>
                        <span className="px-1.5 py-0.5">
                            {tarea.esfuerzo} / {tarea.prioridad}
                        </span>
                    </div>
                    {tarea.fechaObjetivo && (
                        <span>
                            📅 {tarea.fechaInicioPlanificada ? `${tarea.fechaInicioPlanificada} → ` : ''}{tarea.fechaObjetivo}
                        </span>
                    )}
                </div>
            )}

            {compact && (
                <div className="flex justify-between items-center mt-1">
                    <span className="text-xs text-slate-400 truncate max-w-[150px]">{tarea.proyecto?.nombre}</span>
                    <StatusPill status={tarea.estado} size="sm" />
                </div>
            )}
        </div>
    );
};

import React from 'react';
import { differenceInHours } from 'date-fns';
import type { Bloqueo } from '../../../types/modelos';
import { StatusPill } from '../../../components/ui/StatusPill';

interface Props {
    bloqueo: Bloqueo;
    onResolve?: (id: number) => void;
}

export const BlockerCard: React.FC<Props> = ({ bloqueo, onResolve }) => {
    const diffHours = differenceInHours(new Date(), new Date(bloqueo.fechaCreacion));

    const isCritical = diffHours > 48;
    const isWarning = diffHours > 24;

    const agingColor = isCritical ? 'bg-red-100 text-red-700' : isWarning ? 'bg-orange-100 text-orange-700' : 'bg-slate-100 text-slate-600';

    return (
        <div className="bg-white p-4 rounded-lg border border-slate-200 shadow-sm relative font-sans">
            <div className="absolute top-3 right-3 flex gap-2">
                <span className={`text-[10px] font-bold px-2 py-0.5 rounded ${agingColor}`}>
                    {diffHours}h
                </span>
                <StatusPill status={bloqueo.estado} size="sm" />
            </div>

            <div className="mb-2 pr-16">
                <p className="text-xs text-slate-400 mb-0.5">
                    {bloqueo.origenUsuario?.nombre} está esperando a:
                </p>
                <h4 className="font-bold text-slate-800 text-lg">
                    {bloqueo.destinoUsuario?.nombre || bloqueo.destinoTexto}
                </h4>
            </div>

            <div className="bg-red-50 p-2 rounded border border-red-100 mb-3">
                <p className="text-sm text-red-800 font-medium">"{bloqueo.motivo}"</p>
            </div>

            {bloqueo.tarea && (
                <div className="text-xs text-slate-500 mb-3">
                    Bloquea tarea: <span className="font-semibold">{bloqueo.tarea.titulo}</span>
                </div>
            )}

            {bloqueo.estado === 'Activo' && onResolve && (
                <button
                    onClick={() => onResolve(bloqueo.idBloqueo)}
                    className="w-full py-2 bg-white border border-slate-300 rounded-lg text-sm font-semibold text-slate-700 hover:bg-slate-50 transition-colors"
                >
                    ✅ Marcar Resuelto
                </button>
            )}
        </div>
    );
};

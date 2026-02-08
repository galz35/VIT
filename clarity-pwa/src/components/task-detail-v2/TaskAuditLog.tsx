import React from 'react';
import { History } from 'lucide-react';

interface Props {
    auditLogs: any[];
    creationDate?: string;
    creatorName?: string;
}

export const TaskAuditLog: React.FC<Props> = ({ auditLogs, creationDate, creatorName }) => {

    // Helpers copied and cleaned from V1
    const getDotClass = (log: any) => {
        const isRed = log.accion === 'Update' && (log.datosNuevos || '').includes('Descartada');
        return 'absolute -left-[5px] top-1.5 w-2 h-2 rounded-full ring-4 ring-white transition-colors ' + (isRed ? 'bg-red-400' : 'bg-slate-300 group-hover:bg-blue-400');
    };

    const getTituloLog = (log: any): React.ReactNode => {
        if (log.accion === 'Create') return 'Creó la tarea';
        if (log.accion === 'Update') {
            const dn = log.datosNuevos || '';
            if (dn.includes('"estado":"Descartada"')) return <span className="text-red-600 font-bold">Descartó la tarea</span>;
            if (dn.includes('"estado":"Hecha"')) return <span className="text-emerald-600 font-bold">Completó la tarea</span>;
            return 'Actualizó la tarea';
        }
        return 'Acción registrada';
    };

    const getExtraLog = (log: any) => {
        if (!log.detalles) return null;
        try {
            const d = typeof log.detalles === 'string' ? JSON.parse(log.detalles) : log.detalles;

            if (d?.diff) {
                return (
                    <div className="mt-2 space-y-1 bg-slate-50/50 p-2 rounded-lg border border-slate-100">
                        {Object.entries(d.diff).map(([key, val]: [string, any]) => (
                            <div key={key} className="flex items-center gap-1.5 text-[10px]">
                                <span className="text-slate-400 uppercase font-bold w-12 truncate">{key}:</span>
                                <span className="text-slate-500 line-through truncate max-w-[80px]">{String(val.from)}</span>
                                <span className="text-slate-300">→</span>
                                <span className="text-blue-600 font-bold truncate">{String(val.to)}</span>
                            </div>
                        ))}
                    </div>
                );
            }

            if (d?.comentario) {
                return <p className="mt-1 text-slate-600 italic border-l-2 border-slate-200 pl-2">"{d.comentario}"</p>;
            }

            if (d?.requestField) return <span className="text-purple-600"> - Solicitó cambio en: {d.requestField}</span>;
            return null;
        } catch {
            return null;
        }
    };

    return (
        <div className="space-y-4">
            <div className="flex items-center justify-between border-b border-slate-100 pb-2">
                <h4 className="text-xs font-bold text-slate-500 uppercase tracking-widest flex items-center gap-2">
                    <History size={14} className="text-slate-400" /> Historial de Cambios
                </h4>
                <div className="text-[10px] text-slate-400">
                    Creada: {creationDate ? new Date(creationDate).toLocaleDateString() : 'N/A'}
                </div>
            </div>

            <div className="space-y-6 pl-4 border-l-2 border-slate-100 ml-2 py-2">
                {/* Item de Creación siempre presente */}
                <div className="relative pl-6">
                    <div className="absolute -left-[9px] top-1.5 w-4 h-4 rounded-full bg-emerald-500 border-4 border-white shadow-sm" />
                    <div className="flex justify-between items-start mb-1">
                        <span className="text-[10px] bg-emerald-50 text-emerald-700 font-bold px-2 py-0.5 rounded-full">CREACIÓN</span>
                        <span className="text-slate-400 font-mono text-[10px]">{creationDate ? new Date(creationDate).toLocaleString() : 'N/A'}</span>
                    </div>
                    <p className="text-xs text-slate-700 font-medium">Tarea registrada en el sistema por <span className="text-black font-bold">{creatorName || 'Iniciador'}</span></p>
                </div>

                {auditLogs.length === 0 ? (
                    <div className="text-xs text-slate-400 italic pl-6">No hay modificaciones posteriores.</div>
                ) : (
                    auditLogs.map((log: any) => (
                        <div key={log.idAuditLog} className="relative pl-6 group">
                            <div className={getDotClass(log)} />

                            <div className="flex justify-between items-start mb-1">
                                <span className="text-slate-400 font-mono text-[9px]">{log.fecha ? new Date(log.fecha).toLocaleString() : ''}</span>
                                <div className="flex items-center gap-2">
                                    <span className="text-[10px] font-bold text-slate-800 bg-slate-100 px-2 py-0.5 rounded-full ring-1 ring-slate-200">
                                        {log.usuario?.nombre?.split(' ')[0] || 'Sys'}
                                    </span>
                                    <span className="text-[9px] font-black uppercase tracking-tighter text-blue-500 text-xs">Update</span>
                                </div>
                            </div>

                            <div className="text-xs font-bold text-slate-800">{getTituloLog(log)}</div>
                            {getExtraLog(log)}
                        </div>
                    ))
                )}
            </div>
        </div>
    );
};

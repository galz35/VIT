import React from 'react';
import { AlignLeft, MessageSquare, Save, Link } from 'lucide-react';
import type { Tarea } from '../../types/modelos';

interface Props {
    task: Tarea;
    fullTask: Tarea | null;
    descripcion: string;
    setDescripcion: (v: string) => void;
    linkEvidencia: string;
    setLinkEvidencia: (v: string) => void;
    progreso: number;
    setProgreso: (v: number) => void;
    comentario: string;
    setComentario: (v: string) => void;
    onSave: () => void;
    submitting: boolean;
}

export const TaskExecutionPanel: React.FC<Props> = ({
    fullTask,
    descripcion, setDescripcion,
    linkEvidencia, setLinkEvidencia,
    progreso, setProgreso,
    comentario, setComentario,
    onSave, submitting
}) => {
    return (
        <div className="space-y-6">
            <div className="space-y-2">
                <label className="text-xs font-bold text-slate-400 uppercase flex items-center gap-1">
                    <AlignLeft size={12} /> Descripción / Notas
                </label>
                <textarea
                    value={descripcion}
                    onChange={(e) => setDescripcion(e.target.value)}
                    placeholder="Detalles, criterios de aceptación, notas..."
                    className="w-full p-3 bg-slate-50 border border-slate-200 rounded-xl text-sm focus:border-blue-500 outline-none resize-none min-h-[120px]"
                />
            </div>

            {/* Subtareas Read-Only View (Interactive editing is in History/Hierarchy tab usually, or add here later) */}
            {fullTask?.subtareas && fullTask.subtareas.length > 0 && (
                <div className="py-2">
                    <div className="text-[10px] font-bold text-slate-400 uppercase mb-2 flex justify-between items-center">
                        <span>Checklist / Sub-entregables ({fullTask.subtareas.length})</span>
                    </div>
                    <div className="space-y-1.5 bg-slate-50 p-2 rounded-lg border border-slate-100">
                        {fullTask.subtareas.map(sub => (
                            <div key={sub.idTarea} className="flex items-center justify-between p-2 rounded hover:bg-white border text-sm transition-colors cursor-pointer">
                                <div className="flex items-center gap-2 overflow-hidden">
                                    <div className={`w-3 h-3 rounded-full border ${sub.estado === 'Hecha' ? 'bg-emerald-500 border-emerald-500' : 'bg-transparent border-slate-300'}`}></div>
                                    <span className={`truncate text-slate-700 ${sub.estado === 'Hecha' ? 'line-through opacity-60' : ''}`}>{sub.titulo}</span>
                                </div>
                                <span className={`text-[9px] font-bold px-1.5 py-px rounded-full ${sub.estado === 'Hecha' ? 'bg-emerald-50 text-emerald-600' : 'bg-slate-100 text-slate-500'}`}>{sub.estado}</span>
                            </div>
                        ))}
                    </div>
                </div>
            )}

            <div className="space-y-2">
                <label className="text-xs font-bold text-slate-400 uppercase flex items-center gap-1"><Link size={12} /> Link Evidencia (SharePoint / Drive)</label>
                <input
                    type="text"
                    value={linkEvidencia}
                    onChange={(e) => setLinkEvidencia(e.target.value)}
                    placeholder="https://..."
                    className="w-full p-3 bg-slate-50 border border-slate-200 rounded-xl text-sm focus:border-blue-500 outline-none"
                />
                {linkEvidencia && (
                    <a href={linkEvidencia} target="_blank" rel="noreferrer" className="text-xs text-blue-600 hover:underline pl-2 block">
                        Abrir enlace 🔗
                    </a>
                )}
            </div>

            <div className="space-y-3 bg-blue-50/50 p-4 rounded-xl border border-blue-100">
                <div className="flex justify-between items-center">
                    <label className="font-bold text-slate-700 text-sm">Avance Actual</label>
                    <span className={'text-lg font-bold ' + (progreso === 100 ? 'text-emerald-600' : 'text-blue-600')}>{progreso}%</span>
                </div>

                <input
                    type="range"
                    min="0"
                    max="100"
                    step="5"
                    value={progreso}
                    onChange={(e) => setProgreso(Number(e.target.value))}
                    className="w-full h-2 bg-slate-200 rounded-lg appearance-none cursor-pointer accent-blue-600"
                />
            </div>

            <div className="space-y-2">
                <label className="text-xs font-bold text-slate-400 uppercase flex items-center gap-1"><MessageSquare size={12} /> Agregar Comentario / Bitácora</label>
                <textarea
                    value={comentario}
                    onChange={(e) => setComentario(e.target.value)}
                    placeholder="Escribe aquí tus observaciones, dudas o avances..."
                    className="w-full p-3 bg-white border border-slate-200 rounded-xl text-sm focus:border-blue-500 outline-none resize-none h-24 shadow-sm"
                />
            </div>

            <button
                onClick={onSave}
                disabled={submitting}
                className="w-full py-4 bg-slate-900 text-white rounded-xl font-bold shadow-lg shadow-slate-900/20 hover:bg-black active:scale-[0.98] transition-all flex justify-center items-center gap-2"
            >
                <Save size={18} /> Guardar Cambios
            </button>
        </div>
    );
};

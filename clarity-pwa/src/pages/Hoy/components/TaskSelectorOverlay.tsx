import React, { useState } from 'react';
import type { Tarea } from '../../../types/modelos';
import { X, CheckCircle2 } from 'lucide-react';
import { useToast } from '../../../context/ToastContext';

interface Props {
    disponibles: Tarea[];
    onSelect: (task: Tarea) => void;
    onClose: () => void;
    isSelected: (id: number) => boolean;
    onQuickAdd: (title: string, type: 'Entrego' | 'Avanzo' | 'Extra', index: number, projectId?: number) => Promise<void>;
    selectionContext: { type: 'Entrego' | 'Avanzo' | 'Extra', index: number };
    projects?: { idProyecto: number; nombre: string }[];
    defaultProjectId?: number | '';
}

export const TaskSelectorOverlay: React.FC<Props> = ({ disponibles, onSelect, onClose, isSelected, onQuickAdd, selectionContext, projects = [], defaultProjectId }) => {
    const [quickVal, setQuickVal] = useState('');
    const [creationProjectId, setCreationProjectId] = useState<number | ''>(defaultProjectId || '');
    const [isSubmitting, setIsSubmitting] = useState(false);
    const { showToast } = useToast();

    const handleQuickAddLocal = async () => {
        if (!quickVal.trim()) return;
        if (isSubmitting) return; // Prevent double submit

        setIsSubmitting(true);
        try {
            await onQuickAdd(quickVal, selectionContext.type, selectionContext.index, creationProjectId !== '' ? creationProjectId : undefined);
            showToast('Tarea rápida creada', 'success');
            // Overlay closes automatically via parent update
        } catch (error) {
            showToast('Error al crear tarea', 'error');
            setIsSubmitting(false); // Only re-enable on error, success unmounts
        }
    };

    const getDaysActive = (dateStr?: string | Date) => {
        if (!dateStr) return 0;
        const d = new Date(dateStr);
        const now = new Date();
        const diff = now.getTime() - d.getTime();
        return Math.floor(diff / (1000 * 3600 * 24));
    };

    return (
        <div className="fixed inset-0 bg-slate-900/60 backdrop-blur-md z-[100] flex items-start justify-center p-4 md:p-8 pt-[10vh] md:pt-[10vh] animate-fade-in" onClick={onClose}>
            <div className="bg-white w-full max-w-2xl rounded-3xl shadow-2xl overflow-hidden max-h-[85vh] flex flex-col border border-slate-200" onClick={(e) => e.stopPropagation()}>
                {/* Header Simplificado y Premium */}
                <div className="px-6 py-5 border-b flex justify-between items-center bg-white shrink-0">
                    <div>
                        <h3 className="font-extrabold text-slate-900 text-xl tracking-tight">Seleccionar Tarea</h3>
                        <p className="text-sm font-medium text-slate-500">¿En qué trabajarás hoy? — <span className="text-indigo-600 font-bold uppercase">{selectionContext.type}</span></p>
                    </div>
                    <button
                        type="button"
                        onClick={onClose}
                        className="p-2.5 bg-slate-100 text-slate-500 rounded-full hover:bg-slate-200 hover:text-slate-700 transition-colors"
                    >
                        <X size={22} />
                    </button>
                </div>

                {/* Barra de Búsqueda Mejorada y Práctica */}
                <div className="px-6 py-4 bg-slate-50/50 border-b">
                    <div className="flex flex-col md:flex-row gap-3">
                        <div className="flex-1 bg-white p-1 rounded-2xl border-2 border-slate-200 focus-within:border-indigo-500 focus-within:ring-4 focus-within:ring-indigo-50 transition-all flex items-center shadow-sm">
                            <select
                                value={creationProjectId}
                                onChange={(e) => setCreationProjectId(e.target.value ? Number(e.target.value) : '')}
                                className="bg-slate-50 text-xs font-black text-slate-600 outline-none cursor-pointer px-4 py-2.5 rounded-xl hover:bg-slate-100 transition-colors border-none"
                                title="Proyecto Destino"
                                disabled={isSubmitting}
                            >
                                <option value="">📥 INBOX</option>
                                {projects.map(p => <option key={p.idProyecto} value={p.idProyecto}>{p.nombre}</option>)}
                            </select>
                            <input
                                autoFocus
                                type="text"
                                disabled={isSubmitting}
                                value={quickVal}
                                onChange={(e) => setQuickVal(e.target.value)}
                                placeholder={isSubmitting ? "Creando tarea..." : "Escribe para buscar o crear nueva..."}
                                className={`flex-1 bg-transparent px-4 py-2 outline-none font-bold text-slate-700 placeholder:text-slate-400 placeholder:font-medium ${isSubmitting ? 'opacity-50 cursor-wait' : ''}`}
                                onKeyDown={(e) => {
                                    if (e.key === 'Enter') {
                                        e.preventDefault();
                                        handleQuickAddLocal();
                                    }
                                }}
                            />
                            {quickVal.trim() && !isSubmitting && (
                                <button
                                    onClick={handleQuickAddLocal}
                                    className="mr-1 bg-slate-900 text-white text-[10px] font-black px-4 py-2.5 rounded-xl hover:bg-indigo-600 transition-all uppercase tracking-widest"
                                >
                                    Crear
                                </button>
                            )}
                        </div>
                    </div>
                </div>

                {/* Listado de Tareas */}
                <div className="overflow-y-auto p-4 space-y-3 bg-white flex-1 custom-scrollbar">
                    {disponibles
                        .filter(t => !isSelected(t.idTarea))
                        .filter(t => {
                            if (!quickVal.trim()) return true;
                            const query = quickVal.toLowerCase();
                            return t.titulo.toLowerCase().includes(query) ||
                                (t.proyecto?.nombre || '').toLowerCase().includes(query);
                        })
                        .map((t, i) => (
                            <button
                                key={t.idTarea}
                                type="button"
                                onClick={() => onSelect(t)}
                                className={`w-full text-left p-4 rounded-2xl border-2 transition-all group relative overflow-hidden
                                 ${i < 3 && !quickVal
                                        ? 'bg-indigo-50/30 border-indigo-100 hover:border-indigo-300'
                                        : 'bg-white border-slate-100 hover:border-slate-300 hover:bg-slate-50'
                                    }`}
                            >
                                <div className="flex justify-between items-start gap-4">
                                    <div className="flex-1 min-w-0">
                                        <div className="flex items-center gap-2 mb-1.5 flex-wrap">
                                            <span className="text-[9px] font-black bg-white border border-slate-200 text-slate-400 px-2 py-0.5 rounded uppercase tracking-wider shadow-sm">
                                                {t.proyecto?.nombre || 'Inbox'}
                                            </span>
                                            {t.prioridad === 'Alta' && (
                                                <span className="text-[9px] bg-rose-500 text-white px-2 py-0.5 rounded font-black uppercase tracking-tighter">
                                                    Alta
                                                </span>
                                            )}
                                            {i < 3 && !quickVal && (
                                                <span className="text-[9px] bg-indigo-600 text-white px-2 py-0.5 rounded font-black uppercase tracking-tighter">
                                                    Sugerida
                                                </span>
                                            )}
                                        </div>
                                        <p className="font-bold text-slate-800 text-lg leading-snug group-hover:text-indigo-600 transition-colors">
                                            {t.titulo}
                                        </p>
                                        <div className="mt-2 text-[10px] text-slate-400 font-bold uppercase tracking-widest flex items-center gap-2">
                                            <span className="w-1.5 h-1.5 rounded-full bg-slate-300"></span>
                                            Activa hace {getDaysActive(t.fechaCreacion)} días
                                        </div>
                                    </div>
                                    <div className="opacity-0 group-hover:opacity-100 transition-all transform translate-x-2 group-hover:translate-x-0 hidden md:block">
                                        <div className="p-2 bg-indigo-600 text-white rounded-xl shadow-lg shadow-indigo-200">
                                            <CheckCircle2 size={24} />
                                        </div>
                                    </div>
                                </div>
                            </button>
                        ))}

                    {/* Empty State Mejorado */}
                    {disponibles.filter(t => !isSelected(t.idTarea)).length === 0 && (
                        <div className="py-20 text-center flex flex-col items-center gap-4">
                            <div className="w-20 h-20 bg-slate-50 rounded-full flex items-center justify-center">
                                <CheckCircle2 size={40} className="text-slate-200" />
                            </div>
                            <div>
                                <h4 className="font-black text-slate-800 text-lg uppercase tracking-tight">Todo listo</h4>
                                <p className="text-slate-400 font-medium">No tienes tareas pendientes que coincidan.</p>
                            </div>
                        </div>
                    )}
                </div>

                {/* Footer Informativo */}
                <div className="px-6 py-4 bg-slate-50 border-t flex justify-between items-center shrink-0">
                    <p className="text-[10px] font-black text-slate-400 uppercase tracking-widest">
                        Total disponibles: {disponibles.length}
                    </p>
                    <p className="text-[10px] font-medium text-slate-400 italic">
                        Pulsa ESC para cerrar
                    </p>
                </div>
            </div>
        </div>
    );

};

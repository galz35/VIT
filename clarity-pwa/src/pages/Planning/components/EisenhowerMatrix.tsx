import React, { useState } from 'react';
import type { Tarea } from '../../../types/modelos';
import { Flame, Calendar, Users, Trash2, Plus } from 'lucide-react';

interface Props {
    q1Tasks: Tarea[];
    q2Tasks: Tarea[];
    q3Tasks: Tarea[];
    q4Tasks: Tarea[];
    onTaskClick?: (t: Tarea) => void;
    onQuickMove?: (taskId: number, target: 'q1' | 'q2' | 'q3' | 'q4', assigneeId?: number) => void;
    onAdd?: (title: string) => void;
}

const QuadrantRow = ({ task, currentQuad, onQuickMove, onTaskClick }: { task: Tarea, currentQuad: string, onQuickMove?: any, onTaskClick?: any }) => {
    const config = {
        q1: { icon: Flame, color: 'rose', hover: 'hover:bg-rose-50' },
        q2: { icon: Calendar, color: 'blue', hover: 'hover:bg-blue-50' },
        q3: { icon: Users, color: 'amber', hover: 'hover:bg-amber-50' },
        q4: { icon: Trash2, color: 'slate', hover: 'hover:bg-slate-50' },
    };

    return (
        <div className="group flex items-center justify-between p-2 hover:bg-slate-50 border-b border-slate-100 last:border-0 transition-colors">
            <div className="flex items-center gap-3 flex-1 min-w-0" onClick={() => onTaskClick?.(task)}>
                <div className={`w-1 h-8 rounded-full bg-${config[currentQuad as keyof typeof config].color}-400 opacity-50`} />
                <span className="text-sm text-slate-700 truncate cursor-pointer font-medium">{task.titulo}</span>
            </div>

            {/* COMPACT BUTTONS */}
            <div className="flex items-center gap-1 opacity-40 group-hover:opacity-100 transition-opacity">
                <button onClick={() => onQuickMove?.(task.idTarea, 'q1')} disabled={currentQuad === 'q1'} className={`p-1.5 rounded hover:bg-rose-100 hover:text-rose-600 ${currentQuad === 'q1' ? 'text-rose-500 bg-rose-50' : 'text-slate-400'}`} title="Hacer"><Flame size={14} /></button>
                <button onClick={() => onQuickMove?.(task.idTarea, 'q2')} disabled={currentQuad === 'q2'} className={`p-1.5 rounded hover:bg-blue-100 hover:text-blue-600 ${currentQuad === 'q2' ? 'text-blue-500 bg-blue-50' : 'text-slate-400'}`} title="Planificar"><Calendar size={14} /></button>
                <button onClick={() => onQuickMove?.(task.idTarea, 'q3')} disabled={currentQuad === 'q3'} className={`p-1.5 rounded hover:bg-amber-100 hover:text-amber-600 ${currentQuad === 'q3' ? 'text-amber-500 bg-amber-50' : 'text-slate-400'}`} title="Delegar"><Users size={14} /></button>
                <button onClick={() => onQuickMove?.(task.idTarea, 'q4')} disabled={currentQuad === 'q4'} className={`p-1.5 rounded hover:bg-slate-200 hover:text-slate-600 ${currentQuad === 'q4' ? 'text-slate-500 bg-slate-100' : 'text-slate-400'}`} title="Eliminar"><Trash2 size={14} /></button>
            </div>
        </div>
    );
};

import { UserSelector } from '../../../components/ui/UserSelector';

export const EisenhowerMatrix: React.FC<Props> = ({ q1Tasks, q2Tasks, q3Tasks, q4Tasks, onTaskClick, onQuickMove, onAdd }) => {
    const [inputValue, setInputValue] = useState('');
    const [isSelectorOpen, setIsSelectorOpen] = useState(false);
    const [taskToDelegate, setTaskToDelegate] = useState<number | null>(null);

    const handleDelegateClick = (taskId: number) => {
        setTaskToDelegate(taskId);
        setIsSelectorOpen(true);
    };

    const handleUserSelect = (user: any) => {
        if (taskToDelegate && onQuickMove) {
            onQuickMove(taskToDelegate, 'q3', user.idUsuario);
        }
        setIsSelectorOpen(false);
        setTaskToDelegate(null);
    };

    // Helper wrapper to intercept q3 moves
    const handleMoveWrapper = (taskId: number, target: 'q1' | 'q2' | 'q3' | 'q4') => {
        if (target === 'q3') {
            handleDelegateClick(taskId);
        } else {
            onQuickMove?.(taskId, target);
        }
    };

    const handleAdd = () => {
        if (!inputValue.trim()) return;
        if (onAdd) onAdd(inputValue.trim());
        setInputValue('');
    };

    return (
        <div className="flex h-full gap-6 p-1">
            {/* LEFT: INBOX / CAPTURE */}
            <div className="w-[300px] flex flex-col bg-white rounded-xl shadow-sm border border-slate-200 h-full">
                <div className="p-5 border-b border-slate-100 bg-slate-50/50 rounded-t-xl">
                    <h3 className="font-bold text-slate-700 flex items-center gap-2">
                        📥 Bandeja Entrada
                    </h3>
                    <p className="text-xs text-slate-400 mt-1">Captura rápido, organiza después.</p>
                </div>

                <div className="p-4 border-b border-slate-100">
                    <div className="relative">
                        <input
                            value={inputValue}
                            onChange={(e) => setInputValue(e.target.value)}
                            onKeyDown={(e) => e.key === 'Enter' && handleAdd()}
                            placeholder="Nueva tarea..."
                            className="w-full pl-3 pr-10 py-2.5 bg-slate-50 border border-slate-200 rounded-lg text-sm focus:outline-none focus:ring-2 focus:ring-indigo-500/20 focus:border-indigo-500 transition-all"
                            autoFocus
                        />
                        <button
                            onClick={handleAdd}
                            className="absolute right-2 top-2 p-1 bg-indigo-500 text-white rounded hover:bg-indigo-600 transition-colors"
                        >
                            <Plus size={14} strokeWidth={3} />
                        </button>
                    </div>
                </div>

                <div className="flex-1 overflow-y-auto p-4 bg-slate-50/30">
                    <div className="text-center mt-10 text-slate-300 text-sm italic">
                        <p>Escribe arriba y presiona Enter</p>
                        <p className="text-[10px] mt-2">Las tareas nuevas aparecerán en "Planificar" por defecto.</p>
                    </div>
                </div>
            </div>

            {/* RIGHT: COMPACT MATRIX LIST */}
            <div className="flex-1 space-y-4 overflow-y-auto custom-scrollbar pr-2 h-full">

                {/* Q1 */}
                <div className="bg-white rounded-xl border border-rose-100 shadow-md shadow-rose-100/50 overflow-hidden">
                    <div className="px-4 py-2 bg-gradient-to-r from-rose-50 to-white border-b border-rose-100 flex justify-between items-center">
                        <h4 className="font-bold text-rose-700 text-sm flex items-center gap-2">
                            <Flame size={14} /> HACER (Prioridad Alta)
                        </h4>
                        <span className="text-xs font-bold text-rose-600 bg-rose-100 px-2 rounded-full">{q1Tasks.length}</span>
                    </div>
                    <div>
                        {q1Tasks.length === 0 ? <div className="p-4 text-xs text-slate-400 text-center italic">Nada urgente por ahora.</div> :
                            q1Tasks.map(t => <QuadrantRow key={t.idTarea} task={t} currentQuad="q1" onQuickMove={handleMoveWrapper} onTaskClick={onTaskClick} />)
                        }
                    </div>
                </div>

                {/* Q2 */}
                <div className="bg-white rounded-xl border border-blue-100 shadow-md shadow-blue-100/50 overflow-hidden">
                    <div className="px-4 py-2 bg-gradient-to-r from-blue-50 to-white border-b border-blue-100 flex justify-between items-center">
                        <h4 className="font-bold text-blue-700 text-sm flex items-center gap-2">
                            <Calendar size={14} /> PLANIFICAR (Agendar)
                        </h4>
                        <span className="text-xs font-bold text-blue-600 bg-blue-100 px-2 rounded-full">{q2Tasks.length}</span>
                    </div>
                    <div>
                        {q2Tasks.length === 0 ? <div className="p-4 text-xs text-slate-400 text-center italic">Tu agenda está libre.</div> :
                            q2Tasks.map(t => <QuadrantRow key={t.idTarea} task={t} currentQuad="q2" onQuickMove={handleMoveWrapper} onTaskClick={onTaskClick} />)
                        }
                    </div>
                </div>

                {/* Q3 */}
                <div className="bg-white rounded-xl border border-amber-100 shadow-md shadow-amber-100/50 overflow-hidden">
                    <div className="px-4 py-2 bg-gradient-to-r from-amber-50 to-white border-b border-amber-100 flex justify-between items-center">
                        <h4 className="font-bold text-amber-700 text-sm flex items-center gap-2">
                            <Users size={14} /> DELEGAR
                        </h4>
                        <span className="text-xs font-bold text-amber-600 bg-amber-100 px-2 rounded-full">{q3Tasks.length}</span>
                    </div>
                    <div>
                        {q3Tasks.length === 0 ? <div className="p-4 text-xs text-slate-400 text-center italic">Nada para delegar.</div> :
                            q3Tasks.map(t => <QuadrantRow key={t.idTarea} task={t} currentQuad="q3" onQuickMove={handleMoveWrapper} onTaskClick={onTaskClick} />)
                        }
                    </div>
                </div>

                {/* Q4 */}
                <div className="bg-white rounded-xl border border-slate-200 shadow-sm overflow-hidden opacity-90 hover:opacity-100 transition-opacity">
                    <div className="px-4 py-2 bg-gradient-to-r from-slate-100 to-white border-b border-slate-200 flex justify-between items-center">
                        <h4 className="font-bold text-slate-600 text-sm flex items-center gap-2">
                            <Trash2 size={14} /> ELIMINAR / POSPONER
                        </h4>
                        <span className="text-xs font-bold text-slate-500 bg-slate-200 px-2 rounded-full">{q4Tasks.length}</span>
                    </div>
                    <div>
                        {q4Tasks.length === 0 ? <div className="p-4 text-xs text-slate-400 text-center italic">Limpio.</div> :
                            q4Tasks.map(t => <QuadrantRow key={t.idTarea} task={t} currentQuad="q4" onQuickMove={handleMoveWrapper} onTaskClick={onTaskClick} />)
                        }
                    </div>
                </div>

            </div>

            <UserSelector
                isOpen={isSelectorOpen}
                onClose={() => setIsSelectorOpen(false)}
                onSelect={handleUserSelect}
            />
        </div>
    );
};

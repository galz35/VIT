import React, { useState } from 'react';
import { CheckSquare, Square, Plus } from 'lucide-react';
import type { Tarea } from '../../types/modelos';

interface Props {
    subtasks?: Tarea[];
    onToggle: (id: number, status: string) => void;
    onAdd: (title: string) => void;
}

export const TaskSubtasks: React.FC<Props> = ({ subtasks = [], onToggle, onAdd }) => {
    const [newSubtask, setNewSubtask] = useState('');

    const handleAdd = () => {
        if (!newSubtask.trim()) return;
        onAdd(newSubtask);
        setNewSubtask('');
    };

    return (
        <div className="bg-slate-50 rounded-xl border border-slate-200 p-4 mt-6">
            <h4 className="text-xs font-black text-slate-400 uppercase tracking-widest mb-3 flex items-center gap-2">
                <CheckSquare size={14} className="text-indigo-500" />
                Subtareas / Checklist
            </h4>

            {/* List */}
            <div className="space-y-1 mb-3">
                {subtasks.length === 0 && (
                    <p className="text-xs text-slate-400 italic">No hay subtareas. Agrega una para desglosar el trabajo.</p>
                )}
                {subtasks.map(s => {
                    const isDone = s.estado === 'Hecha';
                    return (
                        <div key={s.idTarea} className="flex items-center gap-3 p-2 hover:bg-white rounded-lg transition-colors group">
                            <button
                                onClick={() => onToggle(s.idTarea, s.estado)}
                                className={`shrink-0 transition-colors ${isDone ? 'text-emerald-500' : 'text-slate-300 hover:text-indigo-500'}`}
                            >
                                {isDone ? <CheckSquare size={18} /> : <Square size={18} />}
                            </button>
                            <span className={`text-sm font-medium ${isDone ? 'text-slate-400 line-through' : 'text-slate-700'}`}>
                                {s.titulo}
                            </span>
                        </div>
                    );
                })}
            </div>

            {/* Input */}
            <div className="flex items-center gap-2">
                <Plus size={16} className="text-slate-400 shrink-0" />
                <input
                    type="text"
                    value={newSubtask}
                    onChange={e => setNewSubtask(e.target.value)}
                    onKeyDown={e => e.key === 'Enter' && handleAdd()}
                    placeholder="Agregar nueva subtarea..."
                    className="flex-1 bg-transparent text-sm font-medium text-slate-700 placeholder:text-slate-400 outline-none"
                />
                {newSubtask && (
                    <button
                        onClick={handleAdd}
                        className="text-xs font-bold text-indigo-600 bg-indigo-50 px-2 py-1 rounded hover:bg-indigo-100"
                    >
                        Agregar
                    </button>
                )}
            </div>
        </div>
    );
};

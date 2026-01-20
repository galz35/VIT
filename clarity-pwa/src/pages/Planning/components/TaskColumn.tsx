import React from 'react';
import type { Tarea } from '../../../types/modelos';
import { TaskCard } from '../../../components/ui/TaskCard';

interface Props {
    title: string;
    tasks: Tarea[];
    id: string;
    onTaskClick?: (task: Tarea) => void;
    onAddTask?: () => void;
    variant?: 'default' | 'clean';
}

export const TaskColumn: React.FC<Props> = ({ title, tasks, id, onTaskClick, onAddTask, variant = 'default' }) => {
    const isClean = variant === 'clean';

    return (
        <div id={id} className={`flex flex-col h-full rounded-xl border overflow-hidden ${isClean ? 'bg-transparent border-transparent' : 'bg-slate-50 border-slate-200'}`}>
            <div className={`p-3 border-b flex justify-between items-center ${isClean ? 'border-transparent px-0' : 'border-slate-200 bg-white'}`}>
                <h3 className="font-bold text-slate-700 text-sm">{title}</h3>
                <div className="flex items-center gap-2">
                    <span className="bg-slate-100 text-slate-600 text-xs px-2 py-0.5 rounded-full font-medium">{tasks.length}</span>
                    {onAddTask && (
                        <button onClick={onAddTask} className="text-xs text-indigo-600 hover:text-indigo-800 font-medium transition-colors">
                            + Agregar
                        </button>
                    )}
                </div>
            </div>
            <div className={`flex-1 overflow-y-auto space-y-2 ${isClean ? '' : 'p-2'}`}>
                {tasks.map((task) => (
                    <div key={task.idTarea} onClick={() => onTaskClick?.(task)} className="cursor-pointer hover:opacity-80 transition-opacity">
                        <TaskCard tarea={task} />
                    </div>
                ))}
                {tasks.length === 0 && (
                    <div className="py-8 text-center text-slate-400 text-xs italic border-2 border-dashed border-slate-100 rounded-lg">
                        Vacío
                    </div>
                )}
            </div>
        </div>
    );
};

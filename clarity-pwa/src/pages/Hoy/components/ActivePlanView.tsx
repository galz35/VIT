import React, { useState } from 'react';
import type { Checkin, Tarea } from '../../../types/modelos';
import { CheckCircle2, Circle, MessageSquare, Send, LayoutList, KanbanSquare, Target, AlertCircle, Edit3 } from 'lucide-react';
import { useToast } from '../../../context/ToastContext';
import { clarityService } from '../../../services/clarity.service';
import { TaskDetailModal } from '../../../components/ui/TaskDetailModal';

interface Props {
    checkin: Checkin;
    onUpdate: () => void;
    onEdit: () => void;
}

type ViewMode = 'list' | 'board' | 'focus';

export const ActivePlanView: React.FC<Props> = ({ checkin, onUpdate, onEdit }) => {
    const { showToast } = useToast();
    const [viewMode, setViewMode] = useState<ViewMode>('board'); // Default to BOARD for compact overview

    // Quick Log State
    const [quickLogId, setQuickLogId] = useState<number | null>(null);
    const [quickLogText, setQuickLogText] = useState('');
    const [editingTask, setEditingTask] = useState<Tarea | null>(null);

    // Goal State (Visual fallback)
    const [goalDone, setGoalDone] = useState(false);

    // Data Filtering
    const focusTasks = checkin.tareas?.filter(t => t.tipo === 'Entrego').map(t => t.tarea!) || [];
    const advanceTasks = checkin.tareas?.filter(t => t.tipo === 'Avanzo').map(t => t.tarea!) || [];
    const extraTasks = checkin.tareas?.filter(t => t.tipo === 'Extra').map(t => t.tarea!) || [];
    const allTasks = [...focusTasks, ...advanceTasks, ...extraTasks];

    // Stats
    const total = allTasks.length + (focusTasks.length === 0 ? 1 : 0);
    const doneTasksCount = allTasks.filter(t => t.estado === 'Hecha').length;
    const done = doneTasksCount + (focusTasks.length === 0 && goalDone ? 1 : 0);
    const progressPercent = total > 0 ? Math.round((done / total) * 100) : 0;

    // --- ACTIONS ---
    const handleToggleComplete = async (task: Tarea) => {
        const newState = task.estado === 'Hecha' ? 'EnCurso' : 'Hecha';
        try {
            await clarityService.actualizarTarea(task.idTarea, { estado: newState });
            onUpdate();
            showToast(newState === 'Hecha' ? '¡Tarea completada! 🎉' : 'Tarea reactivada', 'success');
        } catch (err) { showToast('Error al actualizar', 'error'); }
    };

    const handleQuickLog = async (taskId: number) => {
        if (!quickLogText.trim()) return;
        try {
            await clarityService.postAvance(taskId, { idUsuario: checkin.idUsuario, progreso: 0, comentario: quickLogText });
            setQuickLogId(null);
            setQuickLogText('');
            showToast('Bitácora actualizada 📝', 'success');
        } catch (err) { showToast('Error al guardar', 'error'); }
    };

    // --- COMPONENTS ---

    // COMPACT TASK ROW (For Board View - easier to scan)
    const TaskRow = ({ task, variant }: { task: Tarea, variant: 'Focus' | 'Normal' | 'Extra' }) => {
        const isDone = task.estado === 'Hecha';
        const isLogging = quickLogId === task.idTarea;

        let accentColor = 'slate';
        if (variant === 'Focus') accentColor = 'rose';
        if (variant === 'Extra') accentColor = 'emerald';

        return (
            <div className={`group flex items-center gap-2 p-2 rounded-lg border transition-all ${isDone ? 'bg-slate-50 border-slate-100 opacity-60' : `bg-white border-${accentColor}-100 hover:shadow-sm`}`}>
                <button onClick={() => handleToggleComplete(task)} className="shrink-0 hover:scale-110 transition-transform">
                    {isDone ? <CheckCircle2 size={18} className="text-emerald-500 fill-emerald-50" /> : <Circle size={18} className={`text-${accentColor}-300 hover:text-emerald-500`} />}
                </button>
                <div className="flex-1 min-w-0 cursor-pointer" onClick={() => setEditingTask(task)}>
                    <p className={`text-sm font-semibold text-slate-700 truncate ${isDone ? 'line-through' : ''}`}>{task.titulo}</p>
                </div>
                <div className="flex items-center gap-1 opacity-0 group-hover:opacity-100 transition-opacity">
                    <button onClick={() => setQuickLogId(isLogging ? null : task.idTarea)} className={`p-1 rounded ${isLogging ? 'bg-indigo-100 text-indigo-600' : 'hover:bg-slate-100 text-slate-400'}`} title="Registrar Avance">
                        <MessageSquare size={14} />
                    </button>
                </div>
            </div>
        );
    };

    // Goal Card (Compact Version)
    const GoalRow = () => (
        <div className={`flex items-center gap-2 p-2 rounded-lg border transition-all cursor-pointer ${goalDone ? 'bg-emerald-50 border-emerald-200' : 'bg-rose-50/50 border-rose-100 hover:shadow-sm'}`}
            onClick={() => { setGoalDone(!goalDone); if (!goalDone) showToast('¡Objetivo cumplido! 🎉', 'success'); }}>
            <button className="shrink-0 hover:scale-110 transition-transform">
                {goalDone ? <CheckCircle2 size={18} className="text-emerald-500 fill-emerald-50" /> : <Circle size={18} className="text-rose-300 hover:text-emerald-500" />}
            </button>
            <div className="flex-1 min-w-0">
                <p className={`text-sm font-semibold text-slate-700 truncate ${goalDone ? 'line-through' : ''}`}>🎯 {checkin.entregableTexto}</p>
            </div>
        </div>
    );

    // --- LAYOUTS ---

    // COMPACT BOARD VIEW (3-Column, Minimal Scroll)
    const renderCompactBoard = () => (
        <div className="grid grid-cols-1 md:grid-cols-3 gap-4 animate-fade-in">
            {/* Column 1: Focus */}
            <div className="bg-white rounded-xl border border-rose-100 shadow-sm overflow-hidden">
                <div className="px-3 py-2 bg-rose-50 border-b border-rose-100 flex justify-between items-center">
                    <h4 className="font-bold text-rose-700 text-xs uppercase tracking-wide flex items-center gap-1">🔥 FOCO</h4>
                    <span className="text-[10px] font-black text-rose-600 bg-rose-100 px-1.5 py-0.5 rounded-full">{focusTasks.length || 1}</span>
                </div>
                <div className="p-2 space-y-1.5 max-h-48 overflow-y-auto">
                    {focusTasks.length > 0 ? focusTasks.map(t => <TaskRow key={t.idTarea} task={t} variant="Focus" />) : <GoalRow />}
                </div>
            </div>

            {/* Column 2: Advance */}
            <div className="bg-white rounded-xl border border-blue-100 shadow-sm overflow-hidden">
                <div className="px-3 py-2 bg-blue-50 border-b border-blue-100 flex justify-between items-center">
                    <h4 className="font-bold text-blue-700 text-xs uppercase tracking-wide flex items-center gap-1">🔨 PARA AVANZAR</h4>
                    <span className="text-[10px] font-black text-blue-600 bg-blue-100 px-1.5 py-0.5 rounded-full">{advanceTasks.length}</span>
                </div>
                <div className="p-2 space-y-1.5 max-h-48 overflow-y-auto">
                    {advanceTasks.length > 0 ? advanceTasks.map(t => <TaskRow key={t.idTarea} task={t} variant="Normal" />) : <p className="text-slate-400 text-xs italic p-2">Nada asignado.</p>}
                </div>
            </div>

            {/* Column 3: Extras */}
            <div className="bg-white rounded-xl border border-emerald-100 shadow-sm overflow-hidden">
                <div className="px-3 py-2 bg-emerald-50 border-b border-emerald-100 flex justify-between items-center">
                    <h4 className="font-bold text-emerald-700 text-xs uppercase tracking-wide flex items-center gap-1">⚡ EXTRAS</h4>
                    <span className="text-[10px] font-black text-emerald-600 bg-emerald-100 px-1.5 py-0.5 rounded-full">{extraTasks.length}</span>
                </div>
                <div className="p-2 space-y-1.5 max-h-48 overflow-y-auto">
                    {extraTasks.length > 0 ? extraTasks.map(t => <TaskRow key={t.idTarea} task={t} variant="Extra" />) : <p className="text-slate-400 text-xs italic p-2">Nada extra hoy.</p>}
                </div>
            </div>
        </div>
    );

    // FOCUS VIEW (Single Task Mode)
    const renderFocus = () => {
        const primary = focusTasks[0] || advanceTasks[0];
        return (
            <div className="flex flex-col items-center justify-center py-8 animate-fade-in text-center">
                {primary ? (
                    <div className="max-w-md w-full">
                        <h4 className="text-slate-400 text-xs uppercase tracking-widest font-bold mb-4">TU MISIÓN AHORA</h4>
                        <div className="bg-white rounded-2xl border border-rose-200 shadow-lg p-6">
                            <div className="flex items-start gap-3">
                                <button onClick={() => handleToggleComplete(primary)} className="shrink-0 hover:scale-110 transition-transform mt-0.5">
                                    {primary.estado === 'Hecha' ? <CheckCircle2 size={28} className="text-emerald-500 fill-emerald-50" /> : <Circle size={28} className="text-rose-300 hover:text-emerald-500" />}
                                </button>
                                <h4 className={`text-lg font-bold text-slate-800 leading-snug text-left ${primary.estado === 'Hecha' ? 'line-through text-slate-400' : ''}`}>
                                    {primary.titulo}
                                </h4>
                            </div>
                        </div>
                        {allTasks.length > 1 && <p className="mt-6 text-slate-400 text-xs">...y {allTasks.length - 1} tareas más pendientes.</p>}
                    </div>
                ) : (
                    <GoalRow />
                )}
            </div>
        );
    };

    // LIST VIEW (Detailed)
    const renderList = () => (
        <div className="space-y-4 animate-fade-in max-w-lg mx-auto">
            {/* Focus Section */}
            <div className="space-y-2">
                <h4 className="font-bold text-rose-700 text-xs uppercase tracking-wide px-1">🔥 FOCO</h4>
                {focusTasks.length > 0 ? focusTasks.map(t => <TaskRow key={t.idTarea} task={t} variant="Focus" />) : <GoalRow />}
            </div>

            {/* Advance Section */}
            {advanceTasks.length > 0 && (
                <div className="space-y-2">
                    <h4 className="font-bold text-blue-700 text-xs uppercase tracking-wide px-1">🔨 PARA AVANZAR</h4>
                    {advanceTasks.map(t => <TaskRow key={t.idTarea} task={t} variant="Normal" />)}
                </div>
            )}

            {/* Extra Section */}
            {extraTasks.length > 0 && (
                <div className="space-y-2">
                    <h4 className="font-bold text-emerald-700 text-xs uppercase tracking-wide px-1">⚡ VICTORIAS RÁPIDAS</h4>
                    {extraTasks.map(t => <TaskRow key={t.idTarea} task={t} variant="Extra" />)}
                </div>
            )}
        </div>
    );

    return (
        <div className="space-y-4 pb-8">
            {editingTask && (
                <TaskDetailModal
                    task={editingTask}
                    onClose={() => setEditingTask(null)}
                    onUpdate={() => { onUpdate(); setEditingTask(null); }}
                />
            )}

            {/* COMPACT HEADER with Stats & Toggle */}
            <div className="bg-gradient-to-r from-slate-800 to-slate-700 text-white p-4 rounded-xl shadow-lg flex items-center justify-between gap-4">
                <div className="flex items-center gap-4">
                    {/* Progress Ring */}
                    <div className="relative w-12 h-12">
                        <svg className="w-12 h-12 transform -rotate-90" viewBox="0 0 36 36">
                            <path className="text-slate-600" stroke="currentColor" strokeWidth="3" fill="none" d="M18 2.0845 a 15.9155 15.9155 0 0 1 0 31.831 a 15.9155 15.9155 0 0 1 0 -31.831" />
                            <path className="text-emerald-400" stroke="currentColor" strokeWidth="3" fill="none" strokeLinecap="round" strokeDasharray={`${progressPercent}, 100`} d="M18 2.0845 a 15.9155 15.9155 0 0 1 0 31.831 a 15.9155 15.9155 0 0 1 0 -31.831" />
                        </svg>
                        <span className="absolute inset-0 flex items-center justify-center text-xs font-bold">{progressPercent}%</span>
                    </div>
                    <div>
                        <h2 className="text-base font-bold">Tu Plan de Hoy</h2>
                        <p className="text-xs text-slate-300">{done}/{total} tareas completadas</p>
                    </div>
                </div>

                <div className="flex items-center gap-2">
                    {/* View Switcher */}
                    <div className="flex bg-slate-600/50 rounded-lg p-0.5">
                        <button onClick={() => setViewMode('board')} className={`p-1.5 rounded ${viewMode === 'board' ? 'bg-slate-500 text-white' : 'text-slate-400 hover:text-white'}`} title="Tablero">
                            <KanbanSquare size={16} />
                        </button>
                        <button onClick={() => setViewMode('list')} className={`p-1.5 rounded ${viewMode === 'list' ? 'bg-slate-500 text-white' : 'text-slate-400 hover:text-white'}`} title="Lista">
                            <LayoutList size={16} />
                        </button>
                        <button onClick={() => setViewMode('focus')} className={`p-1.5 rounded ${viewMode === 'focus' ? 'bg-slate-500 text-white' : 'text-slate-400 hover:text-white'}`} title="Modo Foco">
                            <Target size={16} />
                        </button>
                    </div>

                    <button onClick={onEdit} className="p-2 bg-white/10 hover:bg-white/20 rounded-lg transition-colors" title="Editar Plan">
                        <Edit3 size={16} />
                    </button>
                </div>
            </div>

            {/* Quick Log Input (Floating) */}
            {quickLogId && (
                <div className="bg-indigo-50 p-3 rounded-xl border border-indigo-100 flex gap-2 animate-fade-in">
                    <input
                        autoFocus value={quickLogText} onChange={(e) => setQuickLogText(e.target.value)}
                        placeholder="Escribe qué hiciste..."
                        className="flex-1 text-sm bg-white border border-indigo-100 rounded-lg px-3 py-2 outline-none focus:border-indigo-400"
                        onKeyDown={(e) => e.key === 'Enter' && handleQuickLog(quickLogId)}
                    />
                    <button onClick={() => handleQuickLog(quickLogId)} className="bg-indigo-600 text-white p-2 rounded-lg hover:bg-indigo-700">
                        <Send size={16} />
                    </button>
                    <button onClick={() => setQuickLogId(null)} className="text-slate-400 hover:text-slate-600 p-2">
                        <AlertCircle size={16} />
                    </button>
                </div>
            )}

            {/* View Content */}
            {viewMode === 'board' && renderCompactBoard()}
            {viewMode === 'list' && renderList()}
            {viewMode === 'focus' && renderFocus()}
        </div>
    );
};

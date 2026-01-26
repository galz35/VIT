import React, { useState } from 'react';
import { createPortal } from 'react-dom';
import type { Tarea } from '../../types/modelos';
import { useTaskController } from '../../hooks/useTaskController';
import { TaskHeader } from './TaskHeader';
import { TaskPlanningPanel } from './TaskPlanningPanel';
import { TaskExecutionPanel } from './TaskExecutionPanel';
import { TaskAuditLog } from './TaskAuditLog';
import { TaskABCSection } from '../ui/TaskABCSection'; // Reuse existing
import { SolicitudCambioModal } from '../ui/SolicitudCambioModal'; // Reuse existing
import { TaskSubtasks } from './TaskSubtasks';

interface Props {
    task: Tarea;
    onClose: () => void;
    onUpdate: () => void;
    mode?: 'planning' | 'execution';
}

export const TaskDetailModalV2: React.FC<Props> = ({ task, onClose, onUpdate, mode = 'execution' }) => {
    // 1. Hook de Lógica (Controller)
    const { form, meta, actions } = useTaskController(task, onClose, onUpdate);

    // 2. Estado UI Local (Tabs)
    const [activeTab, setActiveTab] = useState<'Info' | 'Foco' | 'Historial'>('Info');
    // const [requestField, setRequestField] = useState<'fechaObjetivo' | 'fechaInicioPlanificada'>('fechaObjetivo');
    // const [view, setView] = useState<'Main' | 'RequestChange'>('Main'); // Simple view switching

    // Derived
    const isStrategic = meta.planningCheck?.tipoProyecto === 'Estrategico';
    const isLocked = !!meta.planningCheck?.requiereAprobacion;

    return createPortal(
        <div
            className="fixed inset-0 bg-slate-900/60 backdrop-blur-sm z-[100] flex items-center justify-center p-4 animate-fade-in"
            onClick={(e) => { if (e.target === e.currentTarget) onClose(); }}
        >
            <div className="bg-white w-full max-w-3xl rounded-2xl shadow-2xl overflow-hidden flex flex-col max-h-[90vh] ring-1 ring-slate-900/5">

                {/* HEADER */}
                <TaskHeader
                    task={task}
                    titulo={form.titulo}
                    setTitulo={form.setTitulo}
                    onClose={onClose}
                    mode={mode}
                    isStrategic={isStrategic}
                    subtasksCount={meta.fullTask?.subtareas?.length}
                />

                {/* TABS */}
                <div className="flex px-6 border-b bg-slate-50/30 gap-6 shrink-0">
                    <button
                        onClick={() => setActiveTab('Info')}
                        className={`py-3 text-xs font-bold uppercase tracking-wider border-b-2 transition-all ${activeTab === 'Info' ? 'border-blue-600 text-blue-600' : 'border-transparent text-slate-400 hover:text-slate-600'}`}
                    >
                        Información
                    </button>
                    <button
                        onClick={() => setActiveTab('Foco')}
                        className={`py-3 text-xs font-bold uppercase tracking-wider border-b-2 transition-all ${activeTab === 'Foco' ? 'border-blue-600 text-blue-600' : 'border-transparent text-slate-400 hover:text-slate-600'}`}
                    >
                        Foco & Inteligencia
                    </button>
                    {mode === 'planning' && (
                        <button
                            onClick={() => setActiveTab('Historial')}
                            className={`py-3 text-xs font-bold uppercase tracking-wider border-b-2 transition-all ${activeTab === 'Historial' ? 'border-blue-600 text-blue-600' : 'border-transparent text-slate-400 hover:text-slate-600'}`}
                        >
                            Historial & Jerarquía
                        </button>
                    )}
                </div>

                {/* CONTENT AREA */}
                <div className="p-4 md:p-6 overflow-y-auto bg-white flex-1 relative">
                    {/* Change Request Modal Overlay (Inner) */}
                    {meta.showChangeModal && (
                        <SolicitudCambioModal
                            isOpen={true}
                            onClose={() => meta.setShowChangeModal(false)}
                            onConfirm={actions.confirmChangeRequest}
                            campo="fechaObjetivo"
                            valorAnterior=""
                            valorNuevo=""
                        />
                    )}

                    {activeTab === 'Info' && (
                        <div className="space-y-6 animate-in slide-in-from-right-2 duration-200">
                            {/* Planning Dates Section */}
                            <TaskPlanningPanel
                                task={task}
                                fechaInicioPlanificada={form.fechaInicioPlanificada}
                                setFechaInicioPlanificada={form.setFechaInicioPlanificada}
                                fechaObjetivo={form.fechaObjetivo}
                                setFechaObjetivo={form.setFechaObjetivo}
                                isLocked={isLocked}
                                onRequestChange={() => { /* setRequestField(f); TODO: Implement request logic in hook if needed deeper */ }}
                            />

                            {/* Execution Section */}
                            <TaskExecutionPanel
                                task={task}
                                fullTask={meta.fullTask}
                                descripcion={form.descripcion}
                                setDescripcion={form.setDescripcion}
                                linkEvidencia={form.linkEvidencia}
                                setLinkEvidencia={form.setLinkEvidencia}
                                progreso={form.progreso}
                                setProgreso={form.setProgreso}
                                comentario={form.comentario}
                                setComentario={form.setComentario}
                                onSave={actions.handleSaveProgress}
                                submitting={meta.submitting}
                            />

                            {/* CHECKLIST / SUBTASKS */}
                            <TaskSubtasks
                                subtasks={meta.fullTask?.subtareas}
                                onToggle={(id, status) => actions.toggleSubtaskCompletion(id, status)}
                                onAdd={(title) => actions.addSubtask(title)}
                            />
                        </div>
                    )}

                    {activeTab === 'Foco' && (
                        <div className="animate-in slide-in-from-right-2 duration-200">
                            <TaskABCSection task={task} onUpdate={onUpdate} />
                        </div>
                    )}

                    {activeTab === 'Historial' && (
                        <div className="animate-in slide-in-from-right-2 duration-200">
                            {/* Hierarchy (Simple view for now, could be its own component) */}
                            {mode === 'planning' && (
                                <div className="mb-6 p-4 bg-slate-50 rounded-xl border border-slate-200">
                                    <div className="flex justify-between items-center mb-2">
                                        <h4 className="text-xs font-bold text-slate-500 uppercase">Estructura</h4>
                                        <button onClick={() => {
                                            const sub = prompt('Nombre Subtarea:');
                                            if (sub) actions.addSubtask(sub);
                                        }} className="text-[10px] bg-blue-100 text-blue-700 px-2 py-1 rounded font-bold hover:bg-blue-200">
                                            + Subtarea
                                        </button>
                                    </div>
                                </div>
                            )}

                            <TaskAuditLog
                                auditLogs={meta.auditLogs}
                                creationDate={task.fechaCreacion}
                                creatorName={task.creador?.nombre}
                            />
                        </div>
                    )}
                </div>
            </div>
        </div>,
        document.body
    );
};

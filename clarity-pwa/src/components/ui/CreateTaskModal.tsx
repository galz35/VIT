import React, { useState, useEffect } from 'react';
import { useAuth } from '../../context/AuthContext';
import { clarityService } from '../../services/clarity.service';
import { X, Calendar, User, AlignLeft, Flag, BarChart2, AlertCircle, Search } from 'lucide-react';
import { useToast } from '../../context/ToastContext';
import type { Prioridad, Esfuerzo, Usuario, TipoTarea } from '../../types/modelos';

interface CreateTaskModalProps {
    projectId?: number;
    onClose: () => void;
    onSuccess: () => void;
    defaultAssigneeId?: number;
}

interface TeamMemberInfo {
    usuario: Pick<Usuario, 'idUsuario' | 'nombre'>;
}

export const CreateTaskModal: React.FC<CreateTaskModalProps> = ({ projectId, onClose, onSuccess, defaultAssigneeId }) => {
    const { user } = useAuth();
    // Fetch team members to assign task to
    const [teamMembers, setTeamMembers] = useState<Pick<Usuario, 'idUsuario' | 'nombre'>[]>([]);

    // Form State
    const [title, setTitle] = useState('');
    const [description, setDescription] = useState('');
    const [startDate, setStartDate] = useState(new Date().toISOString().split('T')[0]);
    const [endDate, setEndDate] = useState('');
    const [assigneeId, setAssigneeId] = useState<number | undefined>(defaultAssigneeId);
    const [assigneeSearch, setAssigneeSearch] = useState('');
    const [showAssigneeDropdown, setShowAssigneeDropdown] = useState(false);
    const [priority, setPriority] = useState<Prioridad>('Media');
    const [effort, setEffort] = useState<Esfuerzo>('M');
    const [tipo, setTipo] = useState<TipoTarea>('Administrativa');

    // Loading \u0026 Error State
    const [submitting, setSubmitting] = useState(false);
    const [errors, setErrors] = useState<Record<string, string>>({});
    const { showToast } = useToast();


    useEffect(() => {
        // Fetch team members (Hacky: using useEquipo logic or just fetching from somewhere)
        // For now, let's fetch from the team list page logic or just assume current user + hardcoded list for demo
        // Ideally we need a `clarityService.getTeamMembers()`
        const fetchTeam = async () => {
            // Mocking fetching team members by reusing the endpoint that returns hierarchy
            // Ideally back-end should provide a clean list relevant to the project or user
            try {
                const data = await clarityService.getEquipoHoy(new Date().toISOString().split('T')[0]) as { miembros?: TeamMemberInfo[] } | undefined;
                setTeamMembers(data?.miembros?.map((item) => item.usuario) || []);
            } catch (e) { setTeamMembers([]); }
        };
        fetchTeam();
    }, []);

    const validate = () => {
        const newErrors: Record<string, string> = {};
        if (!title.trim()) newErrors.title = 'El título es requerido';
        if (title.length > 200) newErrors.title = 'El título es demasiado largo';
        if (startDate && endDate && endDate < startDate) {
            newErrors.endDate = 'La fecha objetivo no puede ser anterior al inicio';
        }
        setErrors(newErrors);
        return Object.keys(newErrors).length === 0;
    };

    const handleSubmit = async (e: React.FormEvent) => {
        e.preventDefault();
        if (!user || !validate()) return;

        setSubmitting(true);
        try {
            await clarityService.postTareaRapida({
                idUsuario: user.idUsuario,
                idProyecto: projectId,
                titulo: title.trim(),
                descripcion: description,
                fechaInicioPlanificada: startDate,
                fechaObjetivo: endDate || undefined,
                idResponsable: assigneeId,
                prioridad: priority,
                esfuerzo: effort,
                tipo: tipo
            });
            showToast('Tarea creada con éxito', 'success');
            onSuccess();
        } catch (error) {
            showToast('Error al crear la tarea', 'error');
        } finally {
            setSubmitting(false);
        }
    };

    return (
        <div className="fixed inset-0 z-[100] flex items-center justify-center bg-black/60 backdrop-blur-sm p-4 animate-in fade-in duration-200">
            <div className="w-full max-w-lg bg-white rounded-xl shadow-2xl flex flex-col max-h-[90vh] overflow-hidden">
                <div className="flex justify-between items-center p-4 border-b border-slate-100 bg-slate-50/50">
                    <h2 className="font-bold text-lg text-slate-800">Nueva Tarea</h2>
                    <button onClick={onClose} className="p-2 hover:bg-slate-200 rounded-full text-slate-500">
                        <X size={20} />
                    </button>
                </div>

                <div className="flex-1 overflow-y-auto p-6">
                    <form id="create-task-form" onSubmit={handleSubmit} className="space-y-4">
                        {/* Title */}
                        <div>
                            <label className="block text-xs font-bold text-slate-500 uppercase mb-1">Título de la Tarea</label>
                            <input
                                autoFocus
                                required
                                className="w-full text-lg border-b-2 border-slate-200 px-0 py-2 focus:border-indigo-600 outline-none bg-transparent transition-colors font-bold text-slate-700 placeholder-slate-300"
                                placeholder="Ej: Implementar Login con Google..."
                                value={title}
                                onChange={e => {
                                    setTitle(e.target.value);
                                    if (errors.title) setErrors(prev => ({ ...prev, title: '' }));
                                }}
                            />
                            {errors.title && (
                                <p className="text-rose-500 text-[10px] font-bold mt-1 flex items-center gap-1 uppercase">
                                    <AlertCircle size={10} /> {errors.title}
                                </p>
                            )}
                        </div>

                        {/* Description */}
                        <div>
                            <label className="block text-xs font-bold text-slate-500 uppercase mb-1 flex items-center gap-2">
                                <AlignLeft size={14} /> Descripción
                            </label>
                            <textarea
                                className="w-full border border-slate-200 rounded-lg px-3 py-2 focus:ring-2 focus:ring-indigo-100 focus:border-indigo-400 outline-none transition-all text-sm h-24 resize-none"
                                placeholder="Detalles, criterios de aceptación, notas..."
                                value={description}
                                onChange={e => setDescription(e.target.value)}
                            />
                        </div>

                        <div className="grid grid-cols-2 gap-4">
                            {/* Dates */}
                            <div>
                                <label className="block text-xs font-bold text-slate-500 uppercase mb-1 flex items-center gap-2">
                                    <Calendar size={14} /> Inicio Planeado
                                </label>
                                <input
                                    type="date"
                                    className="w-full border border-slate-200 rounded-lg px-3 py-2 text-sm focus:border-indigo-400 outline-none"
                                    value={startDate}
                                    onChange={e => setStartDate(e.target.value)}
                                />
                            </div>
                            <div>
                                <label className="block text-xs font-bold text-slate-500 uppercase mb-1 flex items-center gap-2">
                                    <Calendar size={14} /> Fecha Objetivo
                                </label>
                                <input
                                    type="date"
                                    className="w-full border border-slate-200 rounded-lg px-3 py-2 text-sm focus:border-indigo-400 outline-none"
                                    value={endDate}
                                    onChange={e => {
                                        setEndDate(e.target.value);
                                        if (errors.endDate) setErrors(prev => ({ ...prev, endDate: '' }));
                                    }}
                                />
                                {errors.endDate && (
                                    <p className="text-rose-500 text-[10px] font-bold mt-1 flex items-center gap-1 uppercase">
                                        <AlertCircle size={10} /> {errors.endDate}
                                    </p>
                                )}
                            </div>
                        </div>

                        <div className="grid grid-cols-2 gap-4">
                            {/* Assignee - Searchable */}
                            <div className="relative">
                                <label className="block text-xs font-bold text-slate-500 uppercase mb-1 flex items-center gap-2">
                                    <User size={14} /> Asignar A
                                </label>
                                <div className="relative">
                                    <input
                                        type="text"
                                        className="w-full border border-slate-200 rounded-lg px-3 py-2 text-sm focus:border-indigo-400 outline-none bg-white pr-8"
                                        placeholder="Buscar persona..."
                                        value={assigneeSearch}
                                        onChange={e => {
                                            setAssigneeSearch(e.target.value);
                                            setShowAssigneeDropdown(true);
                                        }}
                                        onFocus={() => setShowAssigneeDropdown(true)}
                                    />
                                    <Search size={14} className="absolute right-3 top-1/2 -translate-y-1/2 text-slate-400" />
                                </div>
                                {showAssigneeDropdown && (
                                    <>
                                        <div className="fixed inset-0 z-10" onClick={() => setShowAssigneeDropdown(false)}></div>
                                        <div className="absolute top-full left-0 right-0 mt-1 bg-white border border-slate-200 rounded-lg shadow-xl max-h-48 overflow-y-auto z-20">
                                            <button
                                                type="button"
                                                onClick={() => {
                                                    setAssigneeId(undefined);
                                                    setAssigneeSearch('Yo mismo');
                                                    setShowAssigneeDropdown(false);
                                                }}
                                                className={`w-full text-left px-3 py-2 text-sm hover:bg-indigo-50 ${!assigneeId ? 'bg-indigo-100 text-indigo-700 font-bold' : ''}`}
                                            >
                                                👤 Mí mismo
                                            </button>
                                            {teamMembers
                                                .filter(m => m.nombre.toLowerCase().includes(assigneeSearch.toLowerCase()) || assigneeSearch === 'Yo mismo')
                                                .slice(0, 10)
                                                .map(m => (
                                                    <button
                                                        type="button"
                                                        key={m.idUsuario}
                                                        onClick={() => {
                                                            setAssigneeId(m.idUsuario);
                                                            setAssigneeSearch(m.nombre);
                                                            setShowAssigneeDropdown(false);
                                                        }}
                                                        className={`w-full text-left px-3 py-2 text-sm hover:bg-indigo-50 ${assigneeId === m.idUsuario ? 'bg-indigo-100 text-indigo-700 font-bold' : ''}`}
                                                    >
                                                        {m.nombre}
                                                    </button>
                                                ))}
                                            {teamMembers.filter(m => m.nombre.toLowerCase().includes(assigneeSearch.toLowerCase())).length === 0 && assigneeSearch !== 'Yo mismo' && (
                                                <div className="px-3 py-2 text-xs text-slate-400">No se encontraron resultados</div>
                                            )}
                                        </div>
                                    </>
                                )}
                            </div>

                            {/* Priority */}
                            <div>
                                <label className="block text-xs font-bold text-slate-500 uppercase mb-1 flex items-center gap-2">
                                    <Flag size={14} /> Prioridad
                                </label>
                                <div className="flex gap-2">
                                    {['Baja', 'Media', 'Alta'].map(p => (
                                        <button
                                            type="button"
                                            key={p}
                                            onClick={() => setPriority(p as Prioridad)}
                                            className={`flex-1 py-1.5 text-xs font-bold rounded-md border ${priority === p
                                                ? (p === 'Alta' ? 'bg-rose-100 text-rose-700 border-rose-200' : p === 'Media' ? 'bg-amber-100 text-amber-700 border-amber-200' : 'bg-blue-100 text-blue-700 border-blue-200')
                                                : 'bg-white text-slate-500 border-slate-200 hover:bg-slate-50'}`}
                                        >
                                            {p}
                                        </button>
                                    ))}
                                </div>
                            </div>
                        </div>

                        {/* Tipo Selector */}
                        <div>
                            <label className="block text-xs font-bold text-slate-500 uppercase mb-1 flex items-center gap-2">
                                <AlignLeft size={14} /> Tipo de Tarea
                            </label>
                            <div className="flex gap-2 flex-wrap">
                                {['Administrativa', 'Logistica', 'Estrategica', 'AMX', 'Otros'].map(t => (
                                    <button
                                        type="button"
                                        key={t}
                                        onClick={() => setTipo(t as TipoTarea)}
                                        className={`px-3 py-1.5 text-xs font-bold rounded-md border flex-1 ${tipo === t
                                            ? 'bg-purple-100 text-purple-700 border-purple-200'
                                            : 'bg-white text-slate-500 border-slate-200 hover:bg-slate-50'}`}
                                    >
                                        {t}
                                    </button>
                                ))}
                            </div>
                        </div>

                        {/* Effort Selector */}
                        <div>
                            <label className="block text-xs font-bold text-slate-500 uppercase mb-1 flex items-center gap-2">
                                <BarChart2 size={14} /> Esfuerzo Estimado
                            </label>
                            <div className="flex gap-2">
                                {['S', 'M', 'L'].map(e => (
                                    <button
                                        type="button"
                                        key={e}
                                        onClick={() => setEffort(e as Esfuerzo)}
                                        className={`flex-1 py-1.5 text-xs font-bold rounded-md border ${effort === e
                                            ? 'bg-indigo-100 text-indigo-700 border-indigo-200'
                                            : 'bg-white text-slate-500 border-slate-200 hover:bg-slate-50'}`}
                                    >
                                        {e === 'S' ? 'S (Rápido)' : e === 'M' ? 'M (Medio)' : 'L (Largo)'}
                                    </button>
                                ))}
                            </div>
                        </div>
                    </form>
                </div>

                <div className="p-4 border-t border-slate-100 bg-slate-50 flex justify-end gap-3">
                    <button onClick={onClose} className="px-4 py-2 text-slate-500 font-bold hover:bg-slate-200 rounded-lg text-sm">Cancelar</button>
                    <button
                        type="submit"
                        form="create-task-form"
                        disabled={submitting || !title.trim()}
                        className="px-6 py-2 bg-indigo-600 text-white font-bold rounded-lg hover:bg-indigo-700 disabled:opacity-50 shadow-md shadow-indigo-200 text-sm flex items-center gap-2"
                    >
                        {submitting ? (
                            <>
                                <div className="w-4 h-4 border-2 border-white/30 border-t-white rounded-full animate-spin"></div>
                                <span>Creando...</span>
                            </>
                        ) : (
                            <span>Crear Tarea</span>
                        )}
                    </button>
                </div>
            </div>
        </div>
    );
};

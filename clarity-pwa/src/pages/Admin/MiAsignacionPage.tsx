import React, { useEffect, useState } from 'react';
import {
    Folder, ChevronDown, ChevronRight, Clock, AlertTriangle,
    CheckCircle2, Calendar, ExternalLink, ListTodo,
    RefreshCw, Filter
} from 'lucide-react';
import { clarityService } from '../../services/clarity.service';
import { useToast } from '../../context/ToastContext';

interface Tarea {
    idTarea: number;
    idProyecto: number;
    titulo: string;
    descripcion: string;
    estado: string;
    prioridad: string;
    progreso: number;
    fechaObjetivo: string;
    fechaInicioPlanificada: string;
    diasAtraso: number;
    esAtrasada: boolean;
    proyectoNombre: string;
}

interface Proyecto {
    idProyecto: number;
    nombre: string;
    estado: string;
    tipo: string;
    gerencia: string;
    subgerencia: string;
    area: string;
    fechaInicio: string;
    fechaFin: string;
    progresoProyecto: number;
    misTareas: Tarea[];
}

interface Resumen {
    totalProyectos: number;
    totalTareas: number;
    tareasAtrasadas: number;
    tareasHoy: number;
    tareasCompletadas: number;
}

const MiAsignacionPage: React.FC = () => {
    const { showToast } = useToast();
    const [loading, setLoading] = useState(true);
    const [proyectos, setProyectos] = useState<Proyecto[]>([]);
    const [resumen, setResumen] = useState<Resumen | null>(null);
    const [expandedProjects, setExpandedProjects] = useState<Set<number>>(new Set());
    const [filtroEstado, setFiltroEstado] = useState<string>('pendientes');

    const loadData = async () => {
        setLoading(true);
        try {
            const data = await clarityService.getMiAsignacion(filtroEstado);
            setProyectos(data.proyectos || []);
            setResumen(data.resumen || null);

            // Expandir automáticamente proyectos con tareas atrasadas
            const projectsWithOverdue = (data.proyectos || [])
                .filter((p: Proyecto) => p.misTareas?.some(t => t.esAtrasada))
                .map((p: Proyecto) => p.idProyecto);
            setExpandedProjects(new Set(projectsWithOverdue));
        } catch (error) {
            console.error(error);
            showToast('Error al cargar datos', 'error');
        } finally {
            setLoading(false);
        }
    };

    useEffect(() => {
        loadData();
    }, [filtroEstado]);

    const toggleProject = (idProyecto: number) => {
        setExpandedProjects(prev => {
            const next = new Set(prev);
            if (next.has(idProyecto)) {
                next.delete(idProyecto);
            } else {
                next.add(idProyecto);
            }
            return next;
        });
    };

    const expandAll = () => {
        setExpandedProjects(new Set(proyectos.map(p => p.idProyecto)));
    };

    const collapseAll = () => {
        setExpandedProjects(new Set());
    };

    const formatDate = (dateStr: string) => {
        if (!dateStr) return '-';
        return new Date(dateStr).toLocaleDateString('es-NI', {
            day: '2-digit',
            month: 'short',
            year: 'numeric'
        });
    };

    const getEstadoColor = (estado: string) => {
        const colors: Record<string, string> = {
            'Hecha': 'bg-emerald-100 text-emerald-700',
            'Completada': 'bg-emerald-100 text-emerald-700',
            'En Progreso': 'bg-blue-100 text-blue-700',
            'Pendiente': 'bg-amber-100 text-amber-700',
            'Bloqueada': 'bg-rose-100 text-rose-700',
        };
        return colors[estado] || 'bg-slate-100 text-slate-600';
    };

    const getPrioridadIcon = (prioridad: string) => {
        if (prioridad === 'Alta' || prioridad === 'Crítica') {
            return <AlertTriangle className="w-3 h-3 text-rose-500" />;
        }
        return null;
    };

    const renderTarea = (tarea: Tarea) => (
        <div
            key={tarea.idTarea}
            className={`p-4 rounded-xl border transition-all hover:shadow-md cursor-pointer ${tarea.esAtrasada
                ? 'bg-rose-50/50 border-rose-200 hover:border-rose-300'
                : 'bg-white border-slate-200 hover:border-slate-300'
                }`}
            onClick={() => window.open(`/app/planning/plan-trabajo?projectId=${tarea.idProyecto}&taskId=${tarea.idTarea}`, '_blank')}
        >
            <div className="flex items-start justify-between gap-3">
                <div className="flex-1 min-w-0">
                    <div className="flex items-center gap-2 mb-1">
                        {getPrioridadIcon(tarea.prioridad)}
                        <span className="font-semibold text-slate-800 truncate">{tarea.titulo}</span>
                    </div>

                    <div className="flex items-center gap-3 text-xs text-slate-500">
                        <span className={`px-2 py-0.5 rounded-full font-medium ${getEstadoColor(tarea.estado)}`}>
                            {tarea.estado}
                        </span>

                        <span className="flex items-center gap-1">
                            <Calendar className="w-3 h-3" />
                            {formatDate(tarea.fechaObjetivo)}
                        </span>

                        {tarea.esAtrasada && (
                            <span className="flex items-center gap-1 text-rose-600 font-bold">
                                <Clock className="w-3 h-3" />
                                {tarea.diasAtraso}d atraso
                            </span>
                        )}
                    </div>
                </div>

                <div className="flex flex-col items-end gap-2">
                    <div className="flex items-center gap-2">
                        <div className="w-20 h-2 bg-slate-200 rounded-full overflow-hidden">
                            <div
                                className="h-full bg-gradient-to-r from-blue-500 to-indigo-500 transition-all"
                                style={{ width: `${tarea.progreso || 0}%` }}
                            />
                        </div>
                        <span className="text-xs font-bold text-slate-600 w-8">{tarea.progreso || 0}%</span>
                    </div>

                    <ExternalLink className="w-4 h-4 text-slate-400" />
                </div>
            </div>
        </div>
    );

    const renderProyecto = (proyecto: Proyecto) => {
        const isExpanded = expandedProjects.has(proyecto.idProyecto);
        const tareasAtrasadas = proyecto.misTareas?.filter(t => t.esAtrasada).length || 0;
        const totalTareas = proyecto.misTareas?.length || 0;

        return (
            <div
                key={proyecto.idProyecto}
                className="bg-white rounded-2xl border border-slate-200 overflow-hidden shadow-sm hover:shadow-md transition-shadow"
            >
                {/* Header del Proyecto */}
                <div
                    className="p-4 cursor-pointer hover:bg-slate-50 transition-colors"
                    onClick={() => toggleProject(proyecto.idProyecto)}
                >
                    <div className="flex items-center justify-between">
                        <div className="flex items-center gap-3">
                            {isExpanded
                                ? <ChevronDown className="w-5 h-5 text-slate-400" />
                                : <ChevronRight className="w-5 h-5 text-slate-400" />
                            }
                            <Folder className="w-5 h-5 text-indigo-500" />
                            <div>
                                <h3 className="font-bold text-slate-800">{proyecto.nombre}</h3>
                                <p className="text-xs text-slate-500">
                                    {proyecto.gerencia || proyecto.area || 'Sin área'} • {proyecto.tipo || 'General'}
                                </p>
                            </div>
                        </div>

                        <div className="flex items-center gap-4">
                            {tareasAtrasadas > 0 && (
                                <span className="flex items-center gap-1 px-2 py-1 bg-rose-100 text-rose-700 rounded-lg text-xs font-bold">
                                    <AlertTriangle className="w-3 h-3" />
                                    {tareasAtrasadas} atrasada{tareasAtrasadas > 1 ? 's' : ''}
                                </span>
                            )}

                            <span className="text-sm font-medium text-slate-600">
                                {totalTareas} tarea{totalTareas !== 1 ? 's' : ''}
                            </span>

                            <div className="flex items-center gap-2">
                                <div className="w-16 h-2 bg-slate-200 rounded-full overflow-hidden">
                                    <div
                                        className="h-full bg-gradient-to-r from-emerald-400 to-emerald-600"
                                        style={{ width: `${proyecto.progresoProyecto || 0}%` }}
                                    />
                                </div>
                                <span className="text-xs font-bold text-slate-500">{Math.round(proyecto.progresoProyecto || 0)}%</span>
                            </div>
                        </div>
                    </div>
                </div>

                {/* Lista de Tareas (Expandida) */}
                {isExpanded && proyecto.misTareas && proyecto.misTareas.length > 0 && (
                    <div className="px-4 pb-4 space-y-2 border-t border-slate-100 pt-3">
                        {proyecto.misTareas.map(tarea => renderTarea(tarea))}

                        <button
                            onClick={(e) => {
                                e.stopPropagation();
                                window.open(`/app/planning/plan-trabajo?projectId=${proyecto.idProyecto}`, '_blank');
                            }}
                            className="w-full mt-2 py-2 text-sm text-indigo-600 font-medium hover:bg-indigo-50 rounded-lg transition-colors"
                        >
                            Ver Proyecto Completo →
                        </button>
                    </div>
                )}

                {isExpanded && (!proyecto.misTareas || proyecto.misTareas.length === 0) && (
                    <div className="px-4 pb-4 text-center text-slate-400 text-sm">
                        No tienes tareas asignadas en este proyecto
                    </div>
                )}
            </div>
        );
    };

    return (
        <div className="min-h-screen bg-gradient-to-br from-slate-50 via-white to-indigo-50/30 p-6">
            {/* Header */}
            <div className="max-w-6xl mx-auto mb-8">
                <div className="flex items-center justify-between mb-6">
                    <div>
                        <h1 className="text-3xl font-black text-slate-800 mb-1">Mi Asignación</h1>
                        <p className="text-slate-500">Proyectos y tareas asignadas a ti</p>
                    </div>

                    <button
                        onClick={loadData}
                        disabled={loading}
                        className="flex items-center gap-2 px-4 py-2 bg-white border border-slate-200 rounded-xl hover:bg-slate-50 transition-colors disabled:opacity-50"
                    >
                        <RefreshCw className={`w-4 h-4 ${loading ? 'animate-spin' : ''}`} />
                        Actualizar
                    </button>
                </div>

                {/* Stats Cards */}
                {resumen && (
                    <div className="grid grid-cols-2 md:grid-cols-5 gap-4 mb-6">
                        <div className="bg-white rounded-2xl p-4 border border-slate-200 shadow-sm">
                            <div className="flex items-center gap-3">
                                <div className="p-2 bg-indigo-100 rounded-xl">
                                    <Folder className="w-5 h-5 text-indigo-600" />
                                </div>
                                <div>
                                    <p className="text-2xl font-black text-slate-800">{resumen.totalProyectos}</p>
                                    <p className="text-xs text-slate-500">Proyectos</p>
                                </div>
                            </div>
                        </div>

                        <div className="bg-white rounded-2xl p-4 border border-slate-200 shadow-sm">
                            <div className="flex items-center gap-3">
                                <div className="p-2 bg-blue-100 rounded-xl">
                                    <ListTodo className="w-5 h-5 text-blue-600" />
                                </div>
                                <div>
                                    <p className="text-2xl font-black text-slate-800">{resumen.totalTareas}</p>
                                    <p className="text-xs text-slate-500">Tareas</p>
                                </div>
                            </div>
                        </div>

                        <div className="bg-white rounded-2xl p-4 border border-rose-200 shadow-sm">
                            <div className="flex items-center gap-3">
                                <div className="p-2 bg-rose-100 rounded-xl">
                                    <AlertTriangle className="w-5 h-5 text-rose-600" />
                                </div>
                                <div>
                                    <p className="text-2xl font-black text-rose-600">{resumen.tareasAtrasadas}</p>
                                    <p className="text-xs text-slate-500">Atrasadas</p>
                                </div>
                            </div>
                        </div>

                        <div className="bg-white rounded-2xl p-4 border border-amber-200 shadow-sm">
                            <div className="flex items-center gap-3">
                                <div className="p-2 bg-amber-100 rounded-xl">
                                    <Clock className="w-5 h-5 text-amber-600" />
                                </div>
                                <div>
                                    <p className="text-2xl font-black text-amber-600">{resumen.tareasHoy}</p>
                                    <p className="text-xs text-slate-500">Para Hoy</p>
                                </div>
                            </div>
                        </div>

                        <div className="bg-white rounded-2xl p-4 border border-emerald-200 shadow-sm">
                            <div className="flex items-center gap-3">
                                <div className="p-2 bg-emerald-100 rounded-xl">
                                    <CheckCircle2 className="w-5 h-5 text-emerald-600" />
                                </div>
                                <div>
                                    <p className="text-2xl font-black text-emerald-600">{resumen.tareasCompletadas}</p>
                                    <p className="text-xs text-slate-500">Completadas</p>
                                </div>
                            </div>
                        </div>
                    </div>
                )}

                {/* Filtros y Acciones */}
                <div className="flex items-center justify-between mb-4">
                    <div className="flex items-center gap-3">
                        <Filter className="w-4 h-4 text-slate-400" />
                        <select
                            value={filtroEstado}
                            onChange={(e) => setFiltroEstado(e.target.value)}
                            className="px-3 py-2 bg-white border border-slate-200 rounded-xl text-sm focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500"
                        >
                            <option value="pendientes">Solo Pendientes</option>
                            <option value="todas">Todas las Tareas</option>
                            <option value="En Progreso">En Progreso</option>
                            <option value="Hecha">Completadas</option>
                        </select>
                    </div>

                    <div className="flex items-center gap-2">
                        <button
                            onClick={expandAll}
                            className="px-3 py-1.5 text-xs text-slate-600 hover:bg-slate-100 rounded-lg transition-colors"
                        >
                            Expandir Todo
                        </button>
                        <button
                            onClick={collapseAll}
                            className="px-3 py-1.5 text-xs text-slate-600 hover:bg-slate-100 rounded-lg transition-colors"
                        >
                            Colapsar Todo
                        </button>
                    </div>
                </div>
            </div>

            {/* Lista de Proyectos */}
            <div className="max-w-6xl mx-auto space-y-4">
                {loading ? (
                    <div className="flex items-center justify-center py-20">
                        <RefreshCw className="w-8 h-8 text-indigo-500 animate-spin" />
                    </div>
                ) : proyectos.length === 0 ? (
                    <div className="text-center py-20 bg-white rounded-2xl border border-slate-200">
                        <Folder className="w-16 h-16 text-slate-300 mx-auto mb-4" />
                        <h3 className="text-xl font-bold text-slate-600 mb-2">Sin Asignaciones</h3>
                        <p className="text-slate-400">No tienes tareas asignadas en ningún proyecto</p>
                    </div>
                ) : (
                    proyectos.map(proyecto => renderProyecto(proyecto))
                )}
            </div>
        </div>
    );
};

export default MiAsignacionPage;

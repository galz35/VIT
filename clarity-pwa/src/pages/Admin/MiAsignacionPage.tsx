import React, { useEffect, useState } from 'react';
import { Clock, AlertTriangle, CheckCircle2, Folder, RefreshCw } from 'lucide-react';
import { clarityService } from '../../services/clarity.service';
import { useToast } from '../../context/ToastContext';

interface Tarea {
    idTarea: number;
    idProyecto: number;
    titulo: string;
    estado: string;
    prioridad: string;
    progreso: number;
    fechaObjetivo: string;
    diasAtraso: number;
    esAtrasada: boolean;
    proyectoNombre: string;
}

interface Proyecto {
    idProyecto: number;
    nombre: string;
    misTareas: Tarea[];
}

const MiAsignacionPage: React.FC = () => {
    const { showToast } = useToast();
    const [loading, setLoading] = useState(true);
    const [proyectos, setProyectos] = useState<Proyecto[]>([]);
    const [resumen, setResumen] = useState<any>(null);

    const loadData = async () => {
        setLoading(true);
        try {
            const data = await clarityService.getMiAsignacion('pendientes');
            setProyectos(data.proyectos || []);
            setResumen(data.resumen || null);
        } catch (error) {
            console.error(error);
            showToast('Error al cargar datos', 'error');
        } finally {
            setLoading(false);
        }
    };

    useEffect(() => {
        loadData();
    }, []);

    const formatDate = (dateStr: string) => {
        if (!dateStr) return '-';
        return new Date(dateStr).toLocaleDateString('es-NI', {
            day: '2-digit',
            month: 'short'
        });
    };

    const abrirTarea = (tarea: Tarea) => {
        window.open(`/app/planning/plan-trabajo?projectId=${tarea.idProyecto}&taskId=${tarea.idTarea}`, '_blank');
    };

    if (loading) {
        return (
            <div className="min-h-screen flex items-center justify-center bg-slate-50">
                <RefreshCw className="w-8 h-8 text-indigo-500 animate-spin" />
            </div>
        );
    }

    return (
        <div className="min-h-screen bg-slate-50 p-4">
            {/* Header Simple */}
            <div className="max-w-5xl mx-auto mb-6">
                <div className="flex items-center justify-between mb-4">
                    <h1 className="text-2xl font-bold text-slate-800">📋 Mis Tareas Asignadas</h1>
                    <button
                        onClick={loadData}
                        className="p-2 hover:bg-white rounded-lg transition-colors"
                    >
                        <RefreshCw className={`w-5 h-5 ${loading ? 'animate-spin' : ''}`} />
                    </button>
                </div>

                {/* Stats Compactos */}
                {resumen && (
                    <div className="grid grid-cols-4 gap-3 mb-4">
                        <div className="bg-white rounded-lg p-3 border border-slate-200">
                            <div className="text-2xl font-bold text-slate-800">{resumen.totalTareas}</div>
                            <div className="text-xs text-slate-500">Tareas</div>
                        </div>
                        <div className="bg-white rounded-lg p-3 border border-rose-200">
                            <div className="text-2xl font-bold text-rose-600">{resumen.tareasAtrasadas}</div>
                            <div className="text-xs text-slate-500">Atrasadas</div>
                        </div>
                        <div className="bg-white rounded-lg p-3 border border-amber-200">
                            <div className="text-2xl font-bold text-amber-600">{resumen.tareasHoy}</div>
                            <div className="text-xs text-slate-500">Hoy</div>
                        </div>
                        <div className="bg-white rounded-lg p-3 border border-emerald-200">
                            <div className="text-2xl font-bold text-emerald-600">{resumen.tareasCompletadas}</div>
                            <div className="text-xs text-slate-500">Hechas</div>
                        </div>
                    </div>
                )}
            </div>

            {/* Lista de Tareas por Proyecto */}
            <div className="max-w-5xl mx-auto space-y-6">
                {proyectos.length === 0 ? (
                    <div className="text-center py-12 bg-white rounded-lg border border-slate-200">
                        <Folder className="w-12 h-12 text-slate-300 mx-auto mb-3" />
                        <p className="text-slate-500">No tienes tareas pendientes</p>
                    </div>
                ) : (
                    proyectos.map((proyecto) => (
                        <div key={proyecto.idProyecto} className="bg-white rounded-lg border border-slate-200 overflow-hidden">
                            {/* Header del Proyecto */}
                            <div className="bg-slate-50 px-4 py-3 border-b border-slate-200">
                                <div className="flex items-center gap-2">
                                    <Folder className="w-4 h-4 text-indigo-500" />
                                    <h2 className="font-bold text-slate-800">{proyecto.nombre}</h2>
                                    <span className="ml-auto text-xs text-slate-500">
                                        {proyecto.misTareas.length} tarea{proyecto.misTareas.length !== 1 ? 's' : ''}
                                    </span>
                                </div>
                            </div>

                            {/* Tareas */}
                            <div className="divide-y divide-slate-100">
                                {proyecto.misTareas.map((tarea) => (
                                    <div
                                        key={tarea.idTarea}
                                        onClick={() => abrirTarea(tarea)}
                                        className={`p-4 cursor-pointer hover:bg-slate-50 transition-colors ${tarea.esAtrasada ? 'bg-rose-50/30' : ''
                                            }`}
                                    >
                                        <div className="flex items-start justify-between gap-3">
                                            <div className="flex-1 min-w-0">
                                                <div className="flex items-center gap-2 mb-1">
                                                    {tarea.esAtrasada && (
                                                        <AlertTriangle className="w-4 h-4 text-rose-500 flex-shrink-0" />
                                                    )}
                                                    <span className="font-medium text-slate-800 truncate">
                                                        {tarea.titulo}
                                                    </span>
                                                </div>

                                                <div className="flex items-center gap-3 text-xs text-slate-500">
                                                    <span className="px-2 py-0.5 bg-slate-100 rounded">
                                                        {tarea.estado}
                                                    </span>

                                                    <span className="flex items-center gap-1">
                                                        <Clock className="w-3 h-3" />
                                                        {formatDate(tarea.fechaObjetivo)}
                                                    </span>

                                                    {tarea.esAtrasada && (
                                                        <span className="text-rose-600 font-bold">
                                                            {tarea.diasAtraso}d atraso
                                                        </span>
                                                    )}
                                                </div>
                                            </div>

                                            <div className="flex items-center gap-2">
                                                <div className="w-16 h-1.5 bg-slate-200 rounded-full overflow-hidden">
                                                    <div
                                                        className="h-full bg-indigo-500"
                                                        style={{ width: `${tarea.progreso || 0}%` }}
                                                    />
                                                </div>
                                                <span className="text-xs font-bold text-slate-600 w-8 text-right">
                                                    {tarea.progreso || 0}%
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                ))}
                            </div>
                        </div>
                    ))
                )}
            </div>
        </div>
    );
};

export default MiAsignacionPage;

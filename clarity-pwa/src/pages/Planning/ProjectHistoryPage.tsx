
import React, { useEffect, useState } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import { ChevronLeft, Calendar, User, ArrowRight, Activity, Clock, FileText, CheckCircle, AlertTriangle } from 'lucide-react';
import { format, isToday, isYesterday } from 'date-fns';
import { es } from 'date-fns/locale';
import { clarityService } from '../../services/clarity.service';

interface TimelineItem {
    idAudit: number;
    fecha: string;
    usuario: string;
    tareaTitulo?: string;
    accion: string;
    recurso: string;
    recursoId: string;
    datosNuevos: string | null;
    datosAnteriores: string | null;
}

export const ProjectHistoryPage: React.FC = () => {
    const { id } = useParams<{ id: string }>();
    const navigate = useNavigate();
    const [logs, setLogs] = useState<TimelineItem[]>([]);
    const [loading, setLoading] = useState(true);
    const [page, setPage] = useState(1);
    const [hasMore, setHasMore] = useState(true);
    const [projectTitle, setProjectTitle] = useState('Cargando...');

    useEffect(() => {
        if (!id) return;
        fetchLogs(1, true);
        fetchProjectInfo();
    }, [id]);

    const fetchProjectInfo = async () => {
        try {
            const p = await clarityService.getProyecto(Number(id));
            if (p) setProjectTitle(p.nombre);
        } catch (error) {
            console.error('Error fetching project info:', error);
            setProjectTitle('Proyecto Desconocido');
        }
    };

    const fetchLogs = async (p: number, reset = false) => {
        if (!id) return;
        setLoading(true);
        try {
            const res: any = await clarityService.getProyectoHistorial(Number(id), p, 50);
            const items = res.items || [];

            if (reset) {
                setLogs(items);
            } else {
                setLogs(prev => [...prev, ...items]);
            }

            setHasMore(items.length === 50);
            setPage(p);
        } catch (error) {
            console.error('Error fetching timeline:', error);
        } finally {
            setLoading(false);
        }
    };

    const loadMore = () => {
        if (!loading && hasMore) fetchLogs(page + 1);
    };

    // Helper para agrupar por fechas
    const groupLogsByDate = (items: TimelineItem[]) => {
        const groups: Record<string, TimelineItem[]> = {};
        items.forEach(item => {
            const date = new Date(item.fecha);
            const key = format(date, 'yyyy-MM-dd');
            if (!groups[key]) groups[key] = [];
            groups[key].push(item);
        });
        return groups;
    };

    const renderDateHeader = (dateStr: string) => {
        const date = new Date(dateStr + 'T12:00:00'); // Fix TZ issues
        let label = format(date, "EEEE d 'de' MMMM, yyyy", { locale: es });

        if (isToday(date)) label = "Hoy";
        if (isYesterday(date)) label = "Ayer";

        return (
            <div className="sticky top-0 z-10 py-2 bg-slate-50/95 backdrop-blur-sm border-b border-slate-200 mb-6 mt-4 flex items-center gap-3">
                <div className="bg-indigo-100 text-indigo-700 p-1.5 rounded-lg">
                    <Calendar size={16} />
                </div>
                <h3 className="font-bold text-slate-700 capitalize text-sm">{label}</h3>
            </div>
        );
    };

    const parseDiff = (item: TimelineItem) => {
        try {
            if (!item.datosNuevos) return null;
            const nuevo = JSON.parse(item.datosNuevos);
            const diff = nuevo.diff || nuevo; // Support standardized diff format

            // Filter out metadata keys
            const keys = Object.keys(diff).filter(k => !['id', 'fecha', 'source', 'updates'].includes(k));
            if (keys.length === 0) return null;

            return (
                <div className="mt-3 bg-slate-50 rounded border border-slate-100 overflow-hidden text-xs">
                    {keys.map(key => {
                        const val = diff[key];
                        const isDiffObj = val && typeof val === 'object' && 'from' in val && 'to' in val;
                        const oldValue = isDiffObj ? val.from : '???';
                        const newValue = isDiffObj ? val.to : val;

                        return (
                            <div key={key} className="grid grid-cols-[1fr,auto,1fr] gap-2 p-2 border-b border-slate-100 last:border-0 hover:bg-white transition-colors items-center">
                                <div className="text-slate-500 font-medium truncate text-right pr-2">
                                    <span className="bg-slate-200 px-1 py-0.5 rounded text-[10px] text-slate-600 mr-2 uppercase tracking-wider">{key}</span>
                                    <span className="line-through decoration-rose-400 text-slate-400">{String(oldValue).substring(0, 50)}</span>
                                </div>
                                <ArrowRight size={12} className="text-slate-300" />
                                <div className="text-emerald-700 font-bold truncate">
                                    {String(newValue).substring(0, 50)}
                                </div>
                            </div>
                        );
                    })}
                </div>
            );
        } catch {
            return null;
        }
    };

    const getIcon = (accion: string) => {
        const a = accion.toLowerCase();
        if (a.includes('cread')) return <div className="bg-emerald-100 text-emerald-600 p-2 rounded-full"><Activity size={16} /></div>;
        if (a.includes('elimin')) return <div className="bg-rose-100 text-rose-600 p-2 rounded-full"><AlertTriangle size={16} /></div>;
        if (a.includes('completad') || a.includes('hecha')) return <div className="bg-indigo-100 text-indigo-600 p-2 rounded-full"><CheckCircle size={16} /></div>;
        return <div className="bg-slate-100 text-slate-500 p-2 rounded-full"><FileText size={16} /></div>;
    };

    const grouped = groupLogsByDate(logs);
    const sortedDates = Object.keys(grouped).sort((a, b) => new Date(b).getTime() - new Date(a).getTime());

    return (
        <div className="min-h-screen bg-slate-50 flex flex-col">
            {/* Header */}
            <div className="bg-white border-b border-slate-200 px-6 py-4 flex items-center gap-4 shadow-sm sticky top-0 z-20">
                <button
                    onClick={() => navigate(-1)}
                    className="p-2 hover:bg-slate-100 rounded-full transition-colors text-slate-500"
                >
                    <ChevronLeft size={20} />
                </button>
                <div>
                    <h1 className="text-xl font-bold text-slate-800">Línea de Tiempo del Proyecto</h1>
                    <p className="text-xs text-slate-500 font-medium flex items-center gap-1">
                        <Activity size={12} /> {projectTitle}
                    </p>
                </div>
            </div>

            {/* Content */}
            <div className="flex-1 max-w-3xl w-full mx-auto p-6">
                {loading && page === 1 ? (
                    <div className="text-center py-20 text-slate-400">Cargando historial...</div>
                ) : (
                    <div className="relative border-l-2 border-slate-200 ml-4 md:ml-6 space-y-8 pb-20">
                        {sortedDates.map(date => (
                            <div key={date} className="pl-6 md:pl-8 relative">
                                {/* Dot for date group */}
                                <div className="absolute -left-[9px] top-6 w-4 h-4 bg-white border-2 border-indigo-400 rounded-full z-10 shadow-sm" />

                                {renderDateHeader(date)}

                                <div className="space-y-6">
                                    {grouped[date].map((item, idx) => (
                                        <div key={item.idAudit} className="relative group">
                                            {/* Connector line for items */}
                                            {idx !== grouped[date].length - 1 && (
                                                <div className="absolute left-[calc(-1.5rem-1px)] top-10 bottom-0 w-px bg-slate-200" />
                                            )}

                                            <div className="bg-white p-4 rounded-xl border border-slate-200 shadow-sm hover:shadow-md transition-all">
                                                <div className="flex items-start gap-4">
                                                    {getIcon(item.accion)}

                                                    <div className="flex-1 min-w-0">
                                                        <div className="flex justify-between items-start">
                                                            <div>
                                                                <span className="text-[10px] font-bold text-slate-400 uppercase tracking-wide flex items-center gap-1 mb-0.5">
                                                                    <Clock size={10} /> {format(new Date(item.fecha), 'HH:mm')}
                                                                </span>
                                                                <h4 className="font-bold text-slate-700 text-sm">
                                                                    {item.accion.replace(/_/g, ' ')}
                                                                </h4>
                                                            </div>
                                                            <div className="flex items-center gap-2 bg-slate-50 px-2 py-1 rounded-full border border-slate-100">
                                                                <User size={12} className="text-slate-400" />
                                                                <span className="text-xs font-medium text-slate-600">{item.usuario}</span>
                                                            </div>
                                                        </div>

                                                        <div className="mt-2 text-sm text-slate-600">
                                                            <span className="font-medium text-indigo-600 bg-indigo-50 px-1.5 py-0.5 rounded text-xs mr-2">
                                                                {item.recurso}
                                                            </span>
                                                            {item.tareaTitulo || `ID #${item.recursoId}`}
                                                        </div>

                                                        {/* Diff Section */}
                                                        {parseDiff(item)}
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    ))}
                                </div>
                            </div>
                        ))}

                        {logs.length === 0 && (
                            <div className="p-10 text-center text-slate-400 italic bg-white rounded-xl border border-dashed border-slate-300 mt-10">
                                No hay actividad registrada para este proyecto.
                            </div>
                        )}

                        {hasMore && (
                            <div className="text-center pt-8 pl-8">
                                <button
                                    onClick={loadMore}
                                    disabled={loading}
                                    className="px-6 py-2 bg-white border border-slate-200 text-slate-600 font-bold text-sm rounded-full shadow-sm hover:bg-slate-50 transition-colors disabled:opacity-50"
                                >
                                    {loading ? 'Cargando más...' : 'Cargar historial antiguo'}
                                </button>
                            </div>
                        )}
                    </div>
                )}
            </div>
        </div>
    );
};

export default ProjectHistoryPage;

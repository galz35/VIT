
import React, { useState, useEffect, useMemo } from 'react';
import { useNavigate } from 'react-router-dom';
import { clarityService } from '../../services/clarity.service';
import { planningService } from '../../services/planning.service';
import type { Proyecto } from '../../types/modelos';
import { format } from 'date-fns';
import { es } from 'date-fns/locale';
import {
    Search, Calendar, LayoutList, Shield, Users,
    Briefcase, ChevronRight,
    BarChart3, AlertCircle, Clock, ChevronLeft
} from 'lucide-react';
import { useToast } from '../../context/ToastContext';
import { useAuth } from '../../context/AuthContext';
import { DelegacionModal } from '../../components/acceso/DelegacionModal';
import { MiEquipoPage } from './MiEquipoPage';
import { TaskDetailModalV2 } from '../../components/task-detail-v2/TaskDetailModalV2';

// -- COMPONENTE INTERNO: Tabla de Alertas Paginada y Filtrable --
const AlertsTable = ({ tasks, title, type, onTaskClick }: { tasks: any[]; title: string; type: 'danger' | 'success'; onTaskClick: (t: any) => void }) => {
    const [page, setPage] = useState(1);
    const [term, setTerm] = useState('');
    const itemsPerPage = 5;

    // Filtro local
    const filtered = useMemo(() => tasks.filter(t =>
        t.titulo.toLowerCase().includes(term.toLowerCase()) ||
        (t.asignado || '').toLowerCase().includes(term.toLowerCase()) ||
        (t.proyectoNombre || '').toLowerCase().includes(term.toLowerCase())
    ), [tasks, term]);

    // Paginación
    const totalPages = Math.ceil(filtered.length / itemsPerPage);
    const currentData = filtered.slice((page - 1) * itemsPerPage, page * itemsPerPage);

    // Tema de colores
    const theme = type === 'danger'
        ? { bg: 'bg-rose-50', text: 'text-rose-700', border: 'border-rose-100', icon: 'text-rose-500', badge: 'bg-rose-100 text-rose-700' }
        : { bg: 'bg-emerald-50', text: 'text-emerald-700', border: 'border-emerald-100', icon: 'text-emerald-500', badge: 'bg-emerald-100 text-emerald-700' };

    return (
        <div className={`bg-white rounded-2xl border ${theme.border} shadow-sm overflow-hidden flex flex-col h-full`}>
            {/* Header Tabla */}
            <div className="p-4 border-b border-slate-100 flex flex-col gap-4">
                <div className="flex items-center justify-between">
                    <div className="flex items-center gap-3">
                        <div className={`p-2 rounded-lg ${theme.bg} ${theme.text}`}>
                            {type === 'danger' ? <AlertCircle size={20} /> : <Clock size={20} />}
                        </div>
                        <div>
                            <h3 className="font-bold text-slate-800 text-sm">{title}</h3>
                            <p className="text-[10px] text-slate-400 font-bold uppercase tracking-wider">{filtered.length} Tareas</p>
                        </div>
                    </div>
                </div>
                {/* Search Bar */}
                <div className="relative w-full">
                    <Search className="absolute left-3 top-1/2 -translate-y-1/2 text-slate-400" size={14} />
                    <input
                        type="text"
                        placeholder="Buscar por tarea, responsable, proyecto..."
                        className="w-full pl-9 pr-4 py-2 bg-slate-50 border border-slate-200 rounded-xl text-xs font-medium outline-none focus:border-indigo-400 focus:ring-2 focus:ring-indigo-50 transition-all"
                        value={term}
                        onChange={e => { setTerm(e.target.value); setPage(1); }}
                    />
                </div>
            </div>

            {/* Tabla */}
            <div className="overflow-x-auto flex-1">
                <table className="w-full text-left border-collapse">
                    <thead>
                        <tr className="text-[10px] uppercase font-black text-slate-400 border-b border-slate-50 bg-slate-50/30">
                            <th className="px-4 py-3 w-[45%]">Descripción Tarea</th>
                            <th className="px-4 py-3">Responsable</th>
                            <th className="px-4 py-3 text-right">Fecha Objetiva</th>
                        </tr>
                    </thead>
                    <tbody className="divide-y divide-slate-50">
                        {currentData.length > 0 ? currentData.map((t, i) => (
                            <tr
                                key={i}
                                onClick={() => onTaskClick(t)}
                                className="hover:bg-slate-50 transition-colors group cursor-pointer"
                            >
                                <td className="px-4 py-3 align-top">
                                    <div className="flex flex-col">
                                        <span className="text-xs font-bold text-slate-700 line-clamp-2 leading-tight mb-0.5">{t.titulo}</span>
                                        <span className="text-[10px] text-slate-400 font-medium">{t.proyectoNombre || 'Sin Proyecto'}</span>
                                    </div>
                                </td>
                                <td className="px-4 py-3 align-top">
                                    <div className="flex items-center gap-2">
                                        <div className={`w-6 h-6 rounded-full ${theme.bg} flex items-center justify-center text-[9px] font-black ${theme.text} shrink-0`}>
                                            {(t.asignado || 'U').charAt(0)}
                                        </div>
                                        <span className="text-[11px] font-medium text-slate-600 truncate max-w-[100px]">{t.asignado}</span>
                                    </div>
                                </td>
                                <td className="px-4 py-3 text-right align-top">
                                    <span className={`inline-block text-[10px] font-bold px-2 py-0.5 rounded ${theme.badge} whitespace-nowrap`}>
                                        {t.fechaObjetivo ? format(new Date(t.fechaObjetivo), 'dd MMM', { locale: es }) : '--'}
                                    </span>
                                </td>
                                <div className="hidden group-hover:block absolute right-2 mt-2">
                                    <button
                                        className="text-[10px] font-bold text-indigo-600 hover:text-indigo-800 bg-white shadow py-1 px-2 rounded-lg"
                                        onClick={(e) => { e.stopPropagation(); onTaskClick(t); }}
                                    >
                                        Ver
                                    </button>
                                </div>
                            </tr>
                        )) : (
                            <tr><td colSpan={3} className="py-12 text-center text-xs text-slate-400 italic">No se encontraron resultados</td></tr>
                        )}
                    </tbody>
                </table>
            </div>

            {/* Pagination Footer */}
            {totalPages > 1 && (
                <div className="px-4 py-2 border-t border-slate-50 flex justify-between items-center bg-slate-50/30">
                    <span className="text-[10px] font-bold text-slate-400">Página {page} de {totalPages}</span>
                    <div className="flex gap-1">
                        <button disabled={page === 1} onClick={() => setPage(p => p - 1)} className="p-1 hover:bg-white rounded border border-transparent hover:border-slate-200 disabled:opacity-30 transition-all text-slate-500"><ChevronLeft size={14} /></button>
                        <button disabled={page === totalPages} onClick={() => setPage(p => p + 1)} className="p-1 hover:bg-white rounded border border-transparent hover:border-slate-200 disabled:opacity-30 transition-all text-slate-500"><ChevronRight size={14} /></button>
                    </div>
                </div>
            )}
        </div>
    );
};

export const DashboardManager: React.FC = () => {
    const navigate = useNavigate();
    const { user } = useAuth();
    const { showToast } = useToast();

    // -- STATE --
    const [activeTab, setActiveTab] = useState<'projects' | 'team' | 'alerts'>('projects');
    const [isDelegationModalOpen, setIsDelegationModalOpen] = useState(false);

    // Data State
    const [projects, setProjects] = useState<Proyecto[]>([]);
    const [loading, setLoading] = useState(true);

    const [searchTerm, setSearchTerm] = useState('');
    const [currentPage, setCurrentPage] = useState(1);
    const itemsPerPage = 5; // User requested 5 or 10

    // Due Tasks Summary State
    const [dueTasks, setDueTasks] = useState<{ today: any[], overdue: any[] }>({ today: [], overdue: [] });
    // Selection for Modal
    const [selectedTask, setSelectedTask] = useState<any>(null);

    // -- LOAD DATA METHODS --
    const loadProjects = async () => {
        setLoading(true);
        try {
            const result = await clarityService.getProyectos({
                limit: 50,
                nombre: searchTerm
            });

            if (result) {
                let items = result.items || [];
                if (items.length === 0 && !searchTerm) {
                    const myProjects = await planningService.getMyProjects();
                    items = myProjects?.map(p => ({
                        idProyecto: p.id,
                        nombre: p.nombre,
                        gerencia: p.gerencia,
                        subgerencia: p.subgerencia,
                        area: p.area,
                        estado: p.estado,
                        fechaInicio: p.fechaInicio,
                        fechaFin: p.fechaFin,
                        progreso: p.progress,
                        tareas: []
                    })) || [];
                }
                setProjects(items);
            }
        } catch (error) {
            console.error(error);
            showToast('Error cargando proyectos', 'error');
        } finally {
            setLoading(false);
        }
    };

    const loadAlerts = async () => {
        try {
            const data = await clarityService.getDashboardAlerts();
            if (data) {
                setDueTasks({ today: data.today || [], overdue: data.overdue || [] });
            }
        } catch (error) {
            console.error('Error loading dashboard alerts', error);
        }
    };

    // -- EFFECTS --
    useEffect(() => {
        loadProjects();
    }, [searchTerm]);

    useEffect(() => {
        loadAlerts();
    }, []);

    // -- HANDLERS --
    const handleTaskClick = (taskAlert: any) => {
        // Mapear alerta a estructura compatible con Tarea si es necesario
        // El modal espera { id, nombre... } pero taskAlert tiene { idTarea, titulo... }
        // Hacemos un mapeo básico para que el modal funcione o falle elegantemente.
        const mappedTask = {
            ...taskAlert,
            id: taskAlert.idTarea,
            nombre: taskAlert.titulo,
            // Si faltan datos críticos, el modal podría necesitar un refetch dentro,
            // pero por ahora pasamos lo que tenemos.
        };
        setSelectedTask(mappedTask);
    };

    const handleTaskUpdate = () => {
        loadAlerts();
        loadProjects();
        // No cerramos el modal automáticamente aquí para permitir seguir editando,
        // o cerramos si es lo esperado. El usuario solo pidió "ver informacion".
        // Si guarda cambios, actualizamos el fondo.
    };

    // -- KPIS & FILTERS --
    const [columnFilters, setColumnFilters] = useState({ area: '', estado: '' });

    const stats = useMemo(() => {
        const total = projects.length;
        // Contar áreas únicas (excluyendo nulos)
        const uniqueAreas = new Set(projects.map(p => p.area).filter(Boolean)).size;
        return { total, uniqueAreas };
    }, [projects]);

    const filteredProjects = useMemo(() => {
        return projects.filter(p => {
            const term = searchTerm.toLowerCase();
            const areaFilter = columnFilters.area.toLowerCase();
            const statusFilter = columnFilters.estado.toLowerCase();

            const matchesSearch = p.nombre.toLowerCase().includes(term) ||
                (p.gerencia || '').toLowerCase().includes(term);

            const matchesArea = !areaFilter || (p.area || '').toLowerCase().includes(areaFilter) ||
                (p.gerencia || '').toLowerCase().includes(areaFilter); // Buscamos en area o gerencia para mayor flexibilidad

            const matchesStatus = !statusFilter || (p.estado || '').toLowerCase().includes(statusFilter);

            return matchesSearch && matchesArea && matchesStatus;
        });
    }, [projects, searchTerm, columnFilters]);

    // -- PAGINATION LOGIC --
    const totalPages = Math.ceil(filteredProjects.length / itemsPerPage);
    const paginatedProjects = useMemo(() => {
        const start = (currentPage - 1) * itemsPerPage;
        return filteredProjects.slice(start, start + itemsPerPage);
    }, [filteredProjects, currentPage]);

    // -- RENDER ALERT TABLES (New & Improved) --
    const renderAlertsTab = () => (
        <div className="grid grid-cols-1 lg:grid-cols-2 gap-8 animate-in fade-in slide-in-from-bottom-4 duration-500 items-start">
            <AlertsTable
                title="Tareas Atrasadas (Críticas)"
                tasks={dueTasks.overdue}
                type="danger"
                onTaskClick={handleTaskClick}
            />
            <AlertsTable
                title="Entregas de Hoy"
                tasks={dueTasks.today}
                type="success"
                onTaskClick={handleTaskClick}
            />
        </div>
    );

    // -- RENDER TABLE --
    const renderTable = () => (
        <div className="bg-white rounded-2xl border border-slate-200 shadow-sm overflow-hidden animate-in fade-in duration-500">
            {/* Toolbar */}
            <div className="px-6 py-4 border-b border-slate-100 flex flex-col sm:flex-row justify-between items-center gap-4 bg-slate-50/50">
                <div className="flex items-center gap-2">
                    <div className="bg-white p-1.5 rounded-lg border border-slate-200 text-slate-500 shadow-sm">
                        <LayoutList size={16} />
                    </div>
                    <span className="text-xs font-black uppercase tracking-widest text-slate-500">Portafolio de Proyectos</span>
                    <span className="bg-indigo-50 text-indigo-600 text-[10px] font-black px-2 py-0.5 rounded-full border border-indigo-100">
                        {projects.length}
                    </span>
                </div>

                <div className="relative w-full sm:w-64">
                    <Search className="absolute left-3 top-1/2 -translate-y-1/2 text-slate-400" size={14} />
                    <input
                        type="text"
                        placeholder="Buscar..."
                        className="w-full pl-9 pr-4 py-2 bg-white border border-slate-200 rounded-xl text-xs font-bold outline-none focus:border-indigo-400 focus:ring-4 focus:ring-indigo-50 transition-all"
                        value={searchTerm}
                        onChange={e => setSearchTerm(e.target.value)}
                    />
                </div>
            </div>

            {/* Table */}
            <div className="overflow-x-auto">
                <table className="w-full text-left border-collapse">
                    <thead>
                        {/* Headers */}
                        <tr className="bg-white border-b border-slate-100 text-[10px] font-black text-slate-400 uppercase tracking-widest">
                            <th className="px-6 py-4 w-[40%]">Detalle Proyecto</th>
                            <th className="px-6 py-4 w-[25%]">
                                <div className="space-y-2">
                                    <span>Area / Gerencia</span>
                                    <input
                                        type="text"
                                        placeholder="Filtrar..."
                                        className="w-full px-2 py-1 bg-slate-50 border border-slate-200 rounded text-[10px] font-normal text-slate-600 focus:border-indigo-400 outline-none"
                                        value={columnFilters.area}
                                        onChange={e => setColumnFilters(prev => ({ ...prev, area: e.target.value }))}
                                    />
                                </div>
                            </th>
                            <th className="px-6 py-4 w-[20%] text-center">Avance</th>
                            <th className="px-6 py-4 w-[15%] text-right">
                                <div className="space-y-2 flex flex-col items-end">
                                    <span>Estado</span>
                                    <select
                                        className="w-24 px-1 py-1 bg-slate-50 border border-slate-200 rounded text-[10px] font-normal text-slate-600 focus:border-indigo-400 outline-none"
                                        value={columnFilters.estado}
                                        onChange={e => setColumnFilters(prev => ({ ...prev, estado: e.target.value }))}
                                    >
                                        <option value="">Todos</option>
                                        <option value="EnCurso">En Curso</option>
                                        <option value="Pendiente">Pendiente</option>
                                        <option value="Completado">Hecho</option>
                                        <option value="Detenido">Detenidos</option>
                                    </select>
                                </div>
                            </th>
                            <th className="px-6 py-4 w-10"></th>
                        </tr>
                    </thead>
                    <tbody className="divide-y divide-slate-50">
                        {loading ? (
                            <tr>
                                <td colSpan={5} className="py-24 text-center">
                                    <div className="flex flex-col items-center gap-2">
                                        <div className="w-6 h-6 border-2 border-indigo-600 border-t-transparent rounded-full animate-spin"></div>
                                        <span className="text-xs font-bold text-slate-400">Cargando datos...</span>
                                    </div>
                                </td>
                            </tr>
                        ) : projects.length === 0 ? (
                            <tr>
                                <td colSpan={5} className="py-16 text-center text-slate-400 text-xs font-medium italic">
                                    No se encontraron proyectos activos
                                </td>
                            </tr>
                        ) : (
                            paginatedProjects.map((p) => (
                                <tr
                                    key={p.idProyecto}
                                    onClick={() => navigate(`/app/planning/plan-trabajo?projectId=${p.idProyecto}`)}
                                    className="hover:bg-slate-50 transition-colors cursor-pointer group"
                                >
                                    <td className="px-6 py-4">
                                        <div className="flex flex-col">
                                            <span className="text-[13px] font-bold text-slate-700 group-hover:text-indigo-600 transition-colors mb-1">
                                                {p.nombre}
                                            </span>
                                            <div className="flex items-center gap-2 text-[10px] text-slate-400 font-semibold uppercase">
                                                <Calendar size={10} />
                                                {p.fechaInicio ? format(new Date(p.fechaInicio), 'dd MMM yyyy', { locale: es }) : '--'}
                                                -
                                                {p.fechaFin ? format(new Date(p.fechaFin), 'dd MMM yyyy', { locale: es }) : '--'}
                                            </div>
                                        </div>
                                    </td>
                                    <td className="px-6 py-4">
                                        <div className="flex flex-col">
                                            <span className="text-[11px] font-bold text-slate-600">{p.area || 'General'}</span>
                                            <span className="text-[10px] text-slate-400 font-medium truncate max-w-[150px]">{p.subgerencia || '-'}</span>
                                        </div>
                                    </td>
                                    <td className="px-6 py-4">
                                        <div className="flex flex-col items-center w-full max-w-[120px] mx-auto">
                                            <div className="flex justify-between w-full mb-1">
                                                <span className="text-[10px] font-bold text-slate-400">Total</span>
                                                <span className={`text-[10px] font-black ${(p.progreso || 0) === 100 ? 'text-emerald-600' : 'text-indigo-600'}`}>
                                                    {p.progreso || 0}%
                                                </span>
                                            </div>
                                            <div className="w-full h-1.5 bg-slate-100 rounded-full overflow-hidden">
                                                <div
                                                    className={`h-full rounded-full transition-all duration-500 ${(p.progreso || 0) === 100 ? 'bg-emerald-500' : 'bg-indigo-500'}`}
                                                    style={{ width: `${p.progreso || 0}%` }}
                                                />
                                            </div>
                                        </div>
                                    </td>
                                    <td className="px-6 py-4 text-right">
                                        <span className={`inline-flex items-center px-2 py-1 rounded-md text-[10px] font-black uppercase border tracking-wide ${p.estado === 'EnEjecucion' || p.estado === 'Confirmado' ? 'bg-emerald-50 text-emerald-600 border-emerald-100' :
                                            p.estado === 'Cerrado' ? 'bg-slate-100 text-slate-500 border-slate-200' :
                                                'bg-indigo-50 text-indigo-600 border-indigo-100'
                                            }`}>
                                            {p.estado}
                                        </span>
                                    </td>
                                    <td className="px-6 py-4 text-right text-slate-300">
                                        <ChevronRight size={16} className="group-hover:text-indigo-400 transition-colors" />
                                    </td>
                                </tr>
                            ))
                        )}
                    </tbody>
                </table>
            </div>

            <div className="bg-slate-50 border-t border-slate-100 px-6 py-3 flex justify-between items-center">
                <div className="flex items-center gap-4">
                    <span className="text-[10px] text-slate-400 font-bold uppercase tracking-wider">
                        Mostrando {((currentPage - 1) * itemsPerPage) + 1} - {Math.min(currentPage * itemsPerPage, projects.length)} de {projects.length}
                    </span>
                </div>
                <div className="flex items-center gap-2">
                    <button
                        onClick={() => setCurrentPage(p => Math.max(1, p - 1))}
                        disabled={currentPage === 1}
                        className="p-1 rounded-lg hover:bg-white border border-transparent hover:border-slate-200 text-slate-400 hover:text-indigo-600 disabled:opacity-30 disabled:hover:bg-transparent transition-all"
                    >
                        <ChevronLeft size={18} />
                    </button>
                    <div className="bg-white px-3 py-1 rounded-md border border-slate-200 text-xs font-bold text-slate-600 shadow-sm">
                        {currentPage}
                    </div>
                    <button
                        onClick={() => setCurrentPage(p => Math.min(totalPages, p + 1))}
                        disabled={currentPage === totalPages || totalPages === 0}
                        className="p-1 rounded-lg hover:bg-white border border-transparent hover:border-slate-200 text-slate-400 hover:text-indigo-600 disabled:opacity-30 disabled:hover:bg-transparent transition-all"
                    >
                        <ChevronRight size={18} />
                    </button>
                </div>
            </div>
        </div>
    );

    return (
        <div className="min-h-screen bg-[#fcfcfd] font-sans pb-24">
            {/* Header */}
            <header className="bg-white border-b border-slate-200 sticky top-0 z-30 shadow-sm backdrop-blur-md bg-white/95">
                <div className="max-w-6xl mx-auto px-6 py-4">
                    <div className="flex flex-col md:flex-row justify-between items-center gap-4">
                        <div className="flex items-center gap-3">
                            <div className="p-2.5 bg-slate-900 rounded-xl shadow-lg shadow-slate-200 text-white">
                                <BarChart3 size={20} />
                            </div>
                            <div>
                                <h1 className="text-lg font-black text-slate-800 tracking-tight">Panel de Control</h1>
                                <p className="text-[10px] font-bold text-slate-400 uppercase tracking-widest">Gestión Estratégica</p>
                            </div>
                        </div>

                        {/* TABS NAVIGATION */}
                        <div className="flex bg-slate-100 p-1 rounded-xl overflow-x-auto max-w-full">
                            <button
                                onClick={() => setActiveTab('projects')}
                                className={`relative px-4 py-2 text-xs font-black uppercase tracking-wider transition-all whitespace-nowrap
                                ${activeTab === 'projects' ? 'text-indigo-600 bg-white rounded-lg shadow-sm' : 'text-slate-400 hover:text-slate-600'}`}
                            >
                                Proyectos
                            </button>

                            <button
                                onClick={() => setActiveTab('team')}
                                className={`relative px-4 py-2 text-xs font-black uppercase tracking-wider transition-all whitespace-nowrap
                                ${activeTab === 'team' ? 'text-indigo-600 bg-white rounded-lg shadow-sm' : 'text-slate-400 hover:text-slate-600'}`}
                            >
                                Equipo
                            </button>

                            <button
                                onClick={() => setActiveTab('alerts')}
                                className={`relative px-4 py-3 text-xs font-black uppercase tracking-wider transition-all flex items-center gap-2 whitespace-nowrap
                                ${activeTab === 'alerts' ? 'text-rose-600 bg-white rounded-lg shadow-sm' : 'text-slate-400 hover:text-rose-500'}`}
                            >
                                Revisión de Tareas
                                {(dueTasks.overdue.length + dueTasks.today.length) > 0 && (
                                    <span className="bg-rose-100 text-rose-600 px-1.5 py-0.5 rounded text-[9px] font-black border border-rose-200">
                                        {dueTasks.overdue.length + dueTasks.today.length}
                                    </span>
                                )}
                                {activeTab === 'alerts' && (
                                    <span className="absolute bottom-0 left-0 w-full h-0.5 bg-rose-500 rounded-t-full shadow-sm shadow-rose-200"></span>
                                )}
                            </button>
                        </div>
                    </div>
                </div>
            </header>

            <main className="max-w-6xl mx-auto px-6 py-8">
                {activeTab === 'projects' && (
                    <div className="space-y-6">
                        {/* KPI Cards */}
                        <div className="grid grid-cols-2 md:grid-cols-4 gap-4 animate-in slide-in-from-bottom-4 duration-700">
                            <div className="bg-white p-4 rounded-2xl border border-slate-100 shadow-sm flex items-center justify-between col-span-2 md:col-span-1">
                                <div>
                                    <p className="text-[10px] font-bold text-slate-400 uppercase tracking-widest">Total Proyectos</p>
                                    <p className="text-2xl font-black text-slate-800">{stats.total}</p>
                                </div>
                                <div className="p-3 bg-indigo-50 text-indigo-600 rounded-xl">
                                    <Briefcase size={20} />
                                </div>
                            </div>
                            <div className="bg-white p-4 rounded-2xl border border-slate-100 shadow-sm flex items-center justify-between col-span-2 md:col-span-1">
                                <div>
                                    <p className="text-[10px] font-bold text-slate-400 uppercase tracking-widest">Áreas Involucradas</p>
                                    <p className="text-2xl font-black text-slate-800">{stats.uniqueAreas}</p>
                                </div>
                                <div className="p-3 bg-emerald-50 text-emerald-600 rounded-xl">
                                    <Users size={20} />
                                </div>
                            </div>
                        </div>

                        {renderTable()}
                    </div>
                )}
                {activeTab === 'team' && <MiEquipoPage />}
                {activeTab === 'alerts' && renderAlertsTab()}
            </main>

            {/* Delegation Button */}
            <button
                onClick={() => setIsDelegationModalOpen(true)}
                className="fixed bottom-8 right-8 w-12 h-12 bg-slate-900 text-white rounded-full flex items-center justify-center shadow-2xl hover:scale-110 transition-all z-50 group"
            >
                <Shield size={20} className="group-hover:rotate-12 transition-transform" />
            </button>

            <DelegacionModal
                isOpen={isDelegationModalOpen}
                onClose={() => setIsDelegationModalOpen(false)}
                carnetJefe={user?.carnet || ''}
            />

            {/* TASK DETAIL POPUP */}
            {selectedTask && (
                <TaskDetailModalV2
                    task={selectedTask}
                    onClose={() => setSelectedTask(null)}
                    onUpdate={handleTaskUpdate}
                    mode="execution" // Modo ejecución para gestión rápida
                />
            )}
        </div>
    );
};

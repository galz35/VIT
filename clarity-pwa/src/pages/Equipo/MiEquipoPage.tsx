/**
 * MiEquipoPage - Gestión 360° de Colaboradores
 * 
 * Integra datos de Acceso (Empleados) y Clarity (Tareas/Planificación)
 * para proporcionar una vista completa de la gestión del equipo.
 */
import React, { useState, useEffect } from 'react';
import { Search, User, Building2, ChevronUp, ChevronDown, Eye, AlertCircle, Calendar as CalendarIcon, ListTodo, History, CheckCircle2, Mail, Phone, RefreshCw, Plus, ArrowRight, LayoutGrid, X } from 'lucide-react';
import { accesoService } from '../../services/acceso.service';
import { clarityService } from '../../services/clarity.service';
import { useAuth } from '../../context/AuthContext';
import type { Empleado } from '../../types/acceso';
import type { Tarea } from '../../types/modelos';
import { CreateTaskModal } from '../../components/ui/CreateTaskModal';
import { Link, useNavigate } from 'react-router-dom';

type SortField = 'nombre' | 'departamento' | 'cargo';
type SortDir = 'asc' | 'desc';

export const MiEquipoPage: React.FC = () => {
    const navigate = useNavigate();
    const { user } = useAuth();
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState<string | null>(null);
    const [empleados, setEmpleados] = useState<Empleado[]>([]);

    // Mapeo de Correo -> Clarity ID
    const [clarityMap, setClarityMap] = useState<Map<string, number>>(new Map());

    // Search & Sort
    const [searchTerm, setSearchTerm] = useState('');
    const [sortField, setSortField] = useState<SortField>('nombre');
    const [sortDir, setSortDir] = useState<SortDir>('asc');

    // Selected employee detail
    const [selectedEmpleado, setSelectedEmpleado] = useState<Empleado | null>(null);
    const [selectedTasks, setSelectedTasks] = useState<Tarea[]>([]);
    const [loadingDetails, setLoadingDetails] = useState(false);
    const [activeTab, setActiveTab] = useState<'resumen' | 'agenda' | 'plan' | 'bloqueos' | 'bitacora' | 'calendario'>('resumen');

    // Task Creation
    const [isCreateTaskOpen, setIsCreateTaskOpen] = useState(false);

    // Derived Data helper
    const getOrgLocation = (e: Empleado) => {
        // Retorna la ubicación más específica disponible usando campos unificados
        return e.departamento || e.orgDepartamento || e.orgGerencia || 'Sin Departamento';
    };

    // Initial Load
    useEffect(() => {
        const init = async () => {
            if (!user?.correo) return;
            setLoading(true);
            try {
                // 1. Get My Carnet
                const carnetRes = await accesoService.getEmpleadoPorCorreo(user.correo);
                const carnet = carnetRes.data?.data?.empleado?.carnet;

                if (carnet) {
                    // 2. Parallel Fetch: Visible Employees AND Clarity Team
                    const [teamList, teamPayload] = await Promise.all([
                        clarityService.getMyTeam(), // NEW: Direct planning team call
                        clarityService.getEquipoHoy(new Date().toISOString().split('T')[0])
                    ]);

                    // Process Empleados
                    setEmpleados(teamList || []);

                    // Process Clarity Map (Email -> ID)
                    const map = new Map<string, number>();

                    // teamPayload is already the data object (EquipoHoyResponse or Array)
                    let teamMembers: any[] = [];
                    if (teamPayload && typeof teamPayload === 'object' && 'miembros' in teamPayload) {
                        teamMembers = (teamPayload as any).miembros || [];
                    } else if (Array.isArray(teamPayload)) {
                        teamMembers = teamPayload;
                    }

                    teamMembers.forEach((m: any) => {
                        // m.usuario exists in EquipoMemberStatus
                        if (m.usuario?.correo && m.usuario?.idUsuario) {
                            map.set(m.usuario.correo.toLowerCase(), m.usuario.idUsuario);
                        }
                    });
                    setClarityMap(map);
                }
            } catch (err: any) {
                console.error(err);
                setError('Error cargando información del equipo.');
            } finally {
                setLoading(false);
            }
        };
        init();
    }, [user?.correo]);

    // Derived Data
    const getClarityId = (email?: string | null) => {
        if (!email) return undefined;
        return clarityMap.get(email.toLowerCase());
    }

    const handleSelectEmpleado = async (emp: Empleado) => {
        setSelectedEmpleado(emp);
        setLoadingDetails(true);
        setActiveTab('resumen'); // Reset tab
        setSelectedTasks([]);

        const id = emp.idUsuario || getClarityId(emp.correo);
        if (id) {
            try {
                const tasks = await clarityService.getTareasUsuario(id);
                setSelectedTasks(tasks || []);
            } catch (e) {
                console.error("Error fetching tasks", e);
            }
        }
        setLoadingDetails(false);
    };

    // Tabs Logic
    const getTasksByTab = () => {
        if (!selectedTasks) return [];
        switch (activeTab) {
            case 'agenda':
                // Show upcoming and active tasks
                return selectedTasks.filter(t => t.estado !== 'Hecha' && t.estado !== 'Descartada')
                    .sort((a, b) => new Date(a.fechaObjetivo || '9999-12-31').getTime() - new Date(b.fechaObjetivo || '9999-12-31').getTime());
            case 'bloqueos': return selectedTasks.filter(t => t.estado === 'Bloqueada');
            case 'bitacora':
                // Show ALL tasks activity sorted by date
                return [...selectedTasks].sort((a, b) => new Date(b.fechaInicioPlanificada || '').getTime() - new Date(a.fechaInicioPlanificada || '').getTime());
            default: return selectedTasks;
        }
    };

    // Filter & Sort Main Table
    const filteredEmpleados = empleados
        .filter(e => {
            const term = searchTerm.toLowerCase();
            return (e.nombreCompleto || '').toLowerCase().includes(term) ||
                (e.carnet || '').toLowerCase().includes(term) ||
                (e.correo || '').toLowerCase().includes(term) ||
                (e.cargo || '').toLowerCase().includes(term) ||
                (getOrgLocation(e)).toLowerCase().includes(term);
        })
        .sort((a, b) => {
            let cmp = 0;
            switch (sortField) {
                case 'nombre': cmp = (a.nombreCompleto || '').localeCompare(b.nombreCompleto || ''); break;
                case 'departamento': cmp = (a.departamento || '').localeCompare(b.departamento || ''); break;
                case 'cargo': cmp = (a.cargo || '').localeCompare(b.cargo || ''); break;
            }
            return sortDir === 'asc' ? cmp : -cmp;
        });

    const handleSort = (field: SortField) => {
        if (sortField === field) setSortDir(sortDir === 'asc' ? 'desc' : 'asc');
        else { setSortField(field); setSortDir('asc'); }
    };

    // Helpers
    const isOverdue = (dateStr?: string) => dateStr && new Date(dateStr) < new Date(new Date().setHours(0, 0, 0, 0));
    const isToday = (dateStr?: string) => {
        if (!dateStr) return false;
        const d = new Date(dateStr);
        const today = new Date();
        return d.getDate() === today.getDate() && d.getMonth() === today.getMonth() && d.getFullYear() === today.getFullYear();
    };

    // Timeline view removed as requested

    return (
        <div className="min-h-screen bg-slate-50 p-4 lg:p-6 pb-20">
            {/* --- HEADER --- */}
            <div className="flex flex-col lg:flex-row justify-between items-start lg:items-center mb-6 gap-4">
                <div>
                    <h1 className="text-2xl font-black text-slate-800 flex items-center gap-2">
                        <User className="w-8 h-8 text-indigo-600" />
                        Mi Equipo
                    </h1>

                </div>

                <div className="flex flex-wrap gap-2 w-full lg:w-auto">
                    <div className="relative flex-1 lg:flex-none">
                        <Search className="absolute left-3 top-1/2 -translate-y-1/2 text-slate-400" size={16} />
                        <input
                            type="text"
                            placeholder="Buscar por nombre, cargo..."
                            value={searchTerm}
                            onChange={e => setSearchTerm(e.target.value)}
                            className="pl-9 pr-4 py-2 text-sm border border-slate-200 rounded-xl w-full lg:w-64 focus:ring-2 focus:ring-indigo-500 outline-none shadow-sm"
                        />
                    </div>
                </div>
            </div>

            {error && (
                <div className="mb-4 p-4 bg-red-50 border border-red-200 rounded-xl flex items-center gap-2 text-red-700 text-sm font-bold animate-pulse">
                    <AlertCircle size={16} />
                    {error}
                </div>
            )}

            {/* --- TABLE --- */}
            <div className="bg-white rounded-2xl shadow-sm border border-slate-200 overflow-hidden">
                <div className="overflow-x-auto max-h-[calc(100vh-280px)]">
                    <table className="w-full text-sm">
                        <thead className="bg-slate-50 text-slate-500 font-bold border-b border-slate-200 sticky top-0 z-10 text-xs uppercase tracking-wider">
                            <tr>
                                <th className="px-4 py-3 text-left cursor-pointer hover:bg-slate-100 transition-colors" onClick={() => handleSort('nombre')}>
                                    <div className="flex items-center gap-1">Nombre {sortField === 'nombre' && (sortDir === 'asc' ? <ChevronUp size={12} /> : <ChevronDown size={12} />)}</div>
                                </th>
                                <th className="px-4 py-3 text-left cursor-pointer hover:bg-slate-100 transition-colors hidden md:table-cell" onClick={() => handleSort('departamento')}>
                                    <div className="flex items-center gap-1"><Building2 size={12} /> Departamento</div>
                                </th>
                                <th className="px-4 py-3 text-left hidden lg:table-cell">Cargo</th>
                                <th className="px-4 py-3 text-left hidden sm:table-cell">Contacto</th>
                                <th className="px-4 py-3 text-left hidden lg:table-cell">Área</th>
                                <th className="px-4 py-3 text-left hidden xl:table-cell">Gerencia</th>
                                <th className="px-4 py-3 text-right">Acción</th>
                            </tr>
                        </thead>
                        <tbody className="divide-y divide-slate-50">
                            {loading && <tr><td colSpan={7} className="p-12 text-center text-slate-400 font-medium animate-pulse">Cargando directorio...</td></tr>}
                            {!loading && filteredEmpleados.length === 0 && <tr><td colSpan={7} className="p-12 text-center text-slate-400 italic">No se encontraron colaboradores</td></tr>}

                            {!loading && filteredEmpleados.map(e => (
                                <tr
                                    key={e.carnet}
                                    className={`hover:bg-indigo-50/50 transition-colors cursor-pointer group ${selectedEmpleado?.carnet === e.carnet ? 'bg-indigo-50' : ''}`}
                                    onClick={() => handleSelectEmpleado(e)}
                                >
                                    <td className="px-4 py-3">
                                        <div className="flex items-center gap-3">
                                            <div className="w-9 h-9 rounded-full bg-slate-200 text-slate-600 font-bold flex items-center justify-center text-xs shadow-sm ring-2 ring-white">
                                                {(e.nombreCompleto || e.carnet || 'E').substring(0, 2).toUpperCase()}
                                            </div>
                                            <div>
                                                <p className="font-bold text-slate-800">{e.nombreCompleto || 'Sin Nombre Desconocido'}</p>
                                                <p className="text-xs text-slate-400 font-mono hidden sm:block">{e.carnet || 'Sin Carnet'}</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td className="px-4 py-3 hidden md:table-cell">
                                        <span className="px-2 py-1 bg-slate-100 rounded-lg text-xs font-medium text-slate-600 truncate max-w-[200px] block" title={getOrgLocation(e)}>
                                            {getOrgLocation(e)}
                                        </span>
                                    </td>
                                    <td className="px-4 py-3 hidden lg:table-cell text-slate-600 text-xs">{e.cargo || 'Colaborador'}</td>
                                    <td className="px-4 py-3 hidden sm:table-cell">
                                        {e.correo && <div className="text-xs text-indigo-600 font-medium truncate max-w-[150px]">{e.correo}</div>}
                                    </td>
                                    <td className="px-4 py-3 hidden lg:table-cell text-xs text-slate-500">{e.area || '-'}</td>
                                    <td className="px-4 py-3 hidden xl:table-cell text-xs text-slate-500">{e.gerencia || '-'}</td>
                                    <td className="px-4 py-3 text-right">
                                        <button className="p-2 text-slate-400 hover:text-indigo-600 hover:bg-white rounded-lg transition-all">
                                            <Eye size={18} />
                                        </button>
                                    </td>
                                </tr>
                            ))}
                        </tbody>
                    </table>
                </div>
            </div>

            {/* --- DRAWER --- */}
            {selectedEmpleado && (
                <div className="fixed inset-0 z-50 flex justify-end bg-slate-900/40 backdrop-blur-sm" onClick={() => setSelectedEmpleado(null)}>
                    <div className="w-full max-w-2xl bg-white h-full shadow-2xl flex flex-col animate-in slide-in-from-right duration-300" onClick={e => e.stopPropagation()}>

                        {/* Drawer Header */}
                        <div className="bg-slate-900 text-white p-6 relative overflow-hidden">
                            <div className="absolute top-0 right-0 p-32 bg-indigo-600 rounded-full blur-3xl opacity-20 -mr-16 -mt-16 pointer-events-none"></div>

                            <button
                                onClick={() => setSelectedEmpleado(null)}
                                className="absolute top-4 right-4 p-2 bg-white/10 hover:bg-white/20 text-white rounded-xl transition-all z-20 flex items-center gap-2 group border border-white/10"
                            >
                                <span className="text-[10px] font-black uppercase tracking-widest opacity-0 group-hover:opacity-100 transition-all">Cerrar</span>
                                <X size={20} />
                            </button>

                            <div className="flex gap-5 items-center relative z-10">
                                <div className="w-20 h-20 rounded-2xl bg-gradient-to-br from-indigo-500 to-purple-600 flex items-center justify-center text-3xl font-black shadow-lg ring-4 ring-white/10">
                                    {(selectedEmpleado.nombreCompleto || 'E').substring(0, 2).toUpperCase()}
                                </div>
                                <div className="flex-1 min-w-0">
                                    <h2 className="text-2xl font-bold truncate leading-tight">{selectedEmpleado.nombreCompleto || 'Colaborador'}</h2>
                                    <p className="text-indigo-200 text-xs font-bold uppercase tracking-wide mb-1">Plan de Trabajo y Gestión</p>
                                    <p className="text-slate-400 text-sm truncate mb-3">{selectedEmpleado.cargo} • {getOrgLocation(selectedEmpleado)}</p>

                                    <div className="flex gap-2 flex-wrap">
                                        {(selectedEmpleado.idUsuario || getClarityId(selectedEmpleado.correo)) && (
                                            <button
                                                onClick={() => navigate(`/app/agenda/${selectedEmpleado.idUsuario || getClarityId(selectedEmpleado.correo)}`)}
                                                className="px-3 py-1.5 bg-indigo-500 hover:bg-indigo-400 text-white rounded-lg text-xs font-bold flex items-center gap-2 transition-colors shadow-lg shadow-indigo-500/30"
                                            >
                                                <CalendarIcon size={14} /> Ver Agenda Completa
                                            </button>
                                        )}
                                        {selectedEmpleado.correo && (
                                            <a href={`mailto:${selectedEmpleado.correo}`} className="px-3 py-1.5 bg-white/10 hover:bg-white/20 rounded-lg text-xs font-bold flex items-center gap-2 transition-colors">
                                                <Mail size={14} /> Email
                                            </a>
                                        )}
                                        {selectedEmpleado.telefono && (
                                            <a href={`tel:${selectedEmpleado.telefono}`} className="px-3 py-1.5 bg-white/10 hover:bg-white/20 rounded-lg text-xs font-bold flex items-center gap-2 transition-colors">
                                                <Phone size={14} /> Llamar
                                            </a>
                                        )}
                                    </div>
                                </div>
                            </div>

                            {/* Navigation Tabs */}
                            <div className="flex gap-1 mt-8 overflow-x-auto no-scrollbar mask-gradient-r">
                                {[
                                    { id: 'resumen', icon: <User size={14} />, label: 'Resumen' },
                                    { id: 'agenda', icon: <ListTodo size={14} />, label: 'Agenda' },
                                    { id: 'plan', icon: <LayoutGrid size={14} />, label: 'Plan' },
                                    { id: 'bitacora', icon: <History size={14} />, label: 'Bitácora' }
                                ].map(tab => (
                                    <button
                                        key={tab.id}
                                        onClick={() => setActiveTab(tab.id as any)}
                                        className={`px-4 py-2 rounded-t-lg text-xs font-bold flex items-center gap-2 transition-all border-t border-x ${activeTab === tab.id
                                            ? 'bg-slate-50 text-indigo-600 border-slate-50'
                                            : 'bg-white/5 text-slate-400 border-transparent hover:bg-white/10'
                                            }`}
                                    >
                                        {tab.icon} {tab.label}
                                    </button>
                                ))}
                            </div>
                        </div>

                        {/* Drawer Content */}
                        <div className="flex-1 overflow-y-auto bg-slate-50 p-6">
                            {loadingDetails ? (
                                <div className="flex flex-col items-center justify-center h-64 text-slate-400 gap-3">
                                    <RefreshCw className="animate-spin" size={32} />
                                    <p className="text-sm font-medium">Sincronizando con Clarity...</p>
                                </div>
                            ) : !(selectedEmpleado.idUsuario || getClarityId(selectedEmpleado.correo)) && activeTab !== 'resumen' ? (
                                <div className="text-center py-12 p-6 bg-white rounded-xl border border-dashed border-slate-300">
                                    <div className="w-12 h-12 bg-slate-100 rounded-full flex items-center justify-center mx-auto mb-3 text-slate-400">
                                        <User size={24} />
                                    </div>
                                    <h3 className="font-bold text-slate-700">Usuario no conectado</h3>
                                    <p className="text-sm text-slate-500 mt-1 max-w-xs mx-auto">
                                        Este colaborador no tiene una cuenta activa en Clarity vinculada a su correo corporativo.
                                    </p>
                                </div>
                            ) : (
                                <>
                                    {/* AGENDA TAB - Fixed to be useful */}
                                    {activeTab === 'agenda' && (
                                        <div className="space-y-6">
                                            <div className="flex justify-between items-center bg-indigo-50 p-4 rounded-xl border border-indigo-100">
                                                <div>
                                                    <h3 className="font-bold text-indigo-900">Agenda Activa</h3>
                                                    <p className="text-xs text-indigo-600">Tareas pendientes y próximas</p>
                                                </div>
                                                <button
                                                    onClick={() => setIsCreateTaskOpen(true)}
                                                    className="px-4 py-2 bg-indigo-600 hover:bg-indigo-700 text-white text-xs font-bold rounded-lg shadow-sm shadow-indigo-200 flex items-center gap-2 transition-colors"
                                                >
                                                    <Plus size={16} /> Nueva Tarea
                                                </button>
                                            </div>

                                            <div className="space-y-2">
                                                {getTasksByTab().length === 0 ? (
                                                    <div className="text-center py-12 text-slate-400 italic">No hay tareas pendientes</div>
                                                ) : (
                                                    getTasksByTab().map(t => {
                                                        const overdue = isOverdue(t.fechaObjetivo);
                                                        const today = isToday(t.fechaObjetivo);
                                                        return (
                                                            <div key={t.idTarea} className={`bg-white p-4 rounded-xl border shadow-sm transition-all hover:shadow-md flex items-start gap-3 ${overdue ? 'border-red-200 bg-red-50/30' : today ? 'border-indigo-200' : 'border-slate-100'}`}>
                                                                <div className={`mt-1 w-2 h-2 rounded-full shrink-0 ${overdue ? 'bg-red-500' : today ? 'bg-indigo-500' : 'bg-slate-300'}`}></div>
                                                                <div className="flex-1 min-w-0">
                                                                    <div className="flex justify-between items-start">
                                                                        <h4 className={`font-bold text-sm ${overdue ? 'text-red-700' : 'text-slate-700'}`}>{t.titulo}</h4>
                                                                        <span className="text-[10px] font-mono text-slate-400 bg-slate-50 px-1.5 py-0.5 rounded">
                                                                            #{t.idTarea}
                                                                        </span>
                                                                    </div>
                                                                    <p className="text-xs text-slate-500 truncate mt-0.5">{t.proyecto?.nombre || 'Sin Proyecto'}</p>
                                                                    <div className="mt-2 flex items-center gap-3">
                                                                        {t.fechaObjetivo && (
                                                                            <span className={`text-[10px] font-bold flex items-center gap-1 ${overdue ? 'text-red-600' : 'text-slate-400'}`}>
                                                                                <CalendarIcon size={10} />
                                                                                {new Date(t.fechaObjetivo).toLocaleDateString()}
                                                                            </span>
                                                                        )}
                                                                        <span className={`px-2 py-0.5 rounded-full text-[9px] font-bold ${t.prioridad === 'Alta' ? 'bg-orange-100 text-orange-700' : 'bg-slate-100 text-slate-500'
                                                                            }`}>
                                                                            {t.prioridad}
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        );
                                                    })
                                                )}
                                            </div>
                                        </div>
                                    )}



                                    {/* PLAN TAB - Quick Links */}
                                    {activeTab === 'plan' && (selectedEmpleado.idUsuario || getClarityId(selectedEmpleado.correo)) && (
                                        <div className="space-y-4">
                                            <div className="bg-white p-6 rounded-xl border border-slate-200 text-center shadow-sm">
                                                <h3 className="font-bold text-slate-800 mb-2">Planificación Detallada</h3>
                                                <p className="text-sm text-slate-500 mb-6">Gestiona sprints, carga de trabajo y objetivos detallados.</p>
                                                <Link
                                                    to={`/app/equipo/planning/${selectedEmpleado.idUsuario || getClarityId(selectedEmpleado.correo)}`}
                                                    className="inline-flex items-center gap-2 px-6 py-3 bg-indigo-600 text-white font-bold rounded-xl hover:bg-indigo-700 transition-colors shadow-lg shadow-indigo-200"
                                                >
                                                    Abrir Tablero de Planificación <ArrowRight size={16} />
                                                </Link>
                                            </div>
                                        </div>
                                    )}

                                    {/* BITACORA TAB - History */}
                                    {activeTab === 'bitacora' && (
                                        <div className="space-y-4">
                                            <h3 className="font-bold text-slate-700 text-sm uppercase tracking-wide mb-2">Historial Reciente</h3>
                                            <div className="relative border-l-2 border-slate-100 ml-3 space-y-6">
                                                {getTasksByTab().length === 0 ? (
                                                    <p className="text-center text-slate-400 text-sm py-4 italic">Sin historial reciente</p>
                                                ) : (
                                                    getTasksByTab().slice(0, 20).map(t => {
                                                        let icon = <ListTodo size={8} className="text-slate-700" />;
                                                        let colorClass = "bg-slate-100 border-slate-500";
                                                        let statusText = "Actualizada el";

                                                        if (t.estado === 'Hecha') {
                                                            icon = <CheckCircle2 size={8} className="text-emerald-700" />;
                                                            colorClass = "bg-emerald-100 border-emerald-500";
                                                            statusText = "Completada el";
                                                        } else if (t.estado === 'Bloqueada') {
                                                            icon = <AlertCircle size={8} className="text-rose-700" />;
                                                            colorClass = "bg-rose-100 border-rose-500";
                                                            statusText = "Bloqueada el";
                                                        } else if (t.estado === 'EnCurso') {
                                                            icon = <History size={8} className="text-blue-700" />;
                                                            colorClass = "bg-blue-100 border-blue-500";
                                                            statusText = "En progreso desde el";
                                                        }

                                                        return (
                                                            <div key={t.idTarea} className="pl-6 relative">
                                                                <div className={`absolute -left-[9px] top-0 w-4 h-4 rounded-full border-2 flex items-center justify-center ${colorClass}`}>
                                                                    {icon}
                                                                </div>
                                                                <div className="bg-white p-3 rounded-lg border border-slate-100 shadow-sm">
                                                                    <div className="flex justify-between items-start">
                                                                        <p className="font-bold text-slate-700 text-sm">{t.titulo}</p>
                                                                        <span className="text-[10px] font-mono text-slate-400">{t.estado}</span>
                                                                    </div>
                                                                    <p className="text-xs text-slate-500 mt-1">{statusText} {new Date(t.fechaInicioPlanificada || '').toLocaleDateString()}</p>
                                                                </div>
                                                            </div>
                                                        );
                                                    })
                                                )}
                                            </div>
                                        </div>
                                    )}

                                    {/* RESUMEN TAB - Quick Stats */}
                                    {activeTab === 'resumen' && (
                                        <div className="space-y-6">
                                            <div className="grid grid-cols-2 gap-4">
                                                <div className="bg-white p-4 rounded-xl border border-slate-100 shadow-sm">
                                                    <p className="text-xs text-slate-400 font-bold uppercase">Pendientes</p>
                                                    <p className="text-3xl font-black text-slate-800">{selectedTasks.filter(t => t.estado !== 'Hecha').length}</p>
                                                </div>
                                                <div className="bg-white p-4 rounded-xl border border-slate-100 shadow-sm">
                                                    <p className="text-xs text-slate-400 font-bold uppercase">Completadas</p>
                                                    <p className="text-3xl font-black text-emerald-600">{selectedTasks.filter(t => t.estado === 'Hecha').length}</p>
                                                </div>
                                            </div>

                                            {/* Overdue Warning */}
                                            {selectedTasks.some(t => isOverdue(t.fechaObjetivo) && t.estado !== 'Hecha') && (
                                                <div className="bg-red-50 p-4 rounded-xl border border-red-100 flex items-start gap-3">
                                                    <AlertCircle className="text-red-600 mt-0.5" size={20} />
                                                    <div>
                                                        <h4 className="font-bold text-red-800 text-sm">Tareas Atrasadas Detectadas</h4>
                                                        <p className="text-xs text-red-600 mt-1">
                                                            Este usuario tiene {selectedTasks.filter(t => isOverdue(t.fechaObjetivo) && t.estado !== 'Hecha').length} tareas fuera de fecha.
                                                        </p>
                                                        <button
                                                            onClick={() => setActiveTab('agenda')}
                                                            className="mt-2 text-xs font-bold text-red-700 underline"
                                                        >
                                                            Revisar Agenda
                                                        </button>
                                                    </div>
                                                </div>
                                            )}
                                        </div>
                                    )}
                                </>
                            )}
                        </div>
                    </div>
                </div>
            )}

            {/* Modal for Creating Task */}
            {isCreateTaskOpen && selectedEmpleado && (selectedEmpleado.idUsuario || getClarityId(selectedEmpleado.correo)) && (
                <CreateTaskModal
                    projectId={0}
                    onClose={() => setIsCreateTaskOpen(false)}
                    onSuccess={() => {
                        setIsCreateTaskOpen(false);
                        if (selectedEmpleado) handleSelectEmpleado(selectedEmpleado); // Refresh
                    }}
                    defaultAssigneeId={selectedEmpleado.idUsuario || getClarityId(selectedEmpleado.correo)}
                />
            )}
        </div>
    );
};

export default MiEquipoPage;

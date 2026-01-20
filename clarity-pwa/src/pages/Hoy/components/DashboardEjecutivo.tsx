import React, { useState, useEffect } from 'react';
import { clarityService } from '../../../services/clarity.service';
import { TrendingUp, TrendingDown, AlertTriangle, Users, Target, Clock, BarChart3, Loader2, Flame, CheckCircle2, AlertCircle, ChevronRight } from 'lucide-react';


interface Props {
    userId: number;
}

interface OrgStats {
    totalUsuarios: number;
    usuariosActivos: number;
    participacionHoy: number;
    totalTareas: number;
    tareasCompletadasHoy: number;
    tareasBloqueadas: number;
    tareasAtrasadas: number;
    proyectosEnRiesgo: { nombre: string; atrasadas: number; bloqueadas: number }[];
    personasSobrecargadas: { nombre: string; pendientes: number; area: string }[];
    bloqueosCriticos: { motivo: string; dias: number; tarea: string }[];
    tendenciaSemanal: number; // % vs semana pasada
}

export const DashboardEjecutivo: React.FC<Props> = ({ userId }) => {
    const [loading, setLoading] = useState(true);
    const [stats, setStats] = useState<OrgStats | null>(null);

    useEffect(() => {
        loadStats();
    }, [userId]);

    const loadStats = async () => {
        setLoading(true);
        try {
            const data = await clarityService.getDashboardKPIs();
            if (data) {
                setStats(data);
            }
        } catch (e) {
            console.error(e);
        } finally {
            setLoading(false);
        }
    };

    if (loading) {
        return (
            <div className="bg-white rounded-xl p-8 shadow-sm border border-gray-200 text-center">
                <Loader2 className="animate-spin mx-auto text-indigo-500 mb-2" size={32} />
                <p className="text-gray-400 text-sm">Cargando dashboard ejecutivo...</p>
            </div>
        );
    }

    if (!stats) return null;

    const healthScore = 100 - (stats.tareasAtrasadas * 5) - (stats.tareasBloqueadas * 10) - (stats.bloqueosCriticos.length * 15);
    const healthColor = healthScore >= 80 ? 'text-green-500' : healthScore >= 50 ? 'text-amber-500' : 'text-red-500';
    const healthBg = healthScore >= 80 ? 'bg-green-50' : healthScore >= 50 ? 'bg-amber-50' : 'bg-red-50';

    return (
        <div className="space-y-6">
            {/* Header Premium */}
            <div className="bg-gradient-to-r from-slate-900 via-slate-800 to-slate-900 text-white p-6 rounded-2xl shadow-xl">
                <div className="flex items-center justify-between">
                    <div>
                        <h1 className="text-2xl font-black flex items-center gap-3">
                            <BarChart3 size={28} /> Dashboard Ejecutivo
                        </h1>
                        <p className="text-slate-400 mt-1">Vista de alto nivel de la organización</p>
                    </div>
                    <div className={`text-center p-4 rounded-xl ${healthBg}`}>
                        <p className={`text-4xl font-black ${healthColor}`}>{Math.max(0, healthScore)}%</p>
                        <p className="text-xs text-gray-600 font-bold uppercase">Salud Org.</p>
                    </div>
                </div>
            </div>

            {/* KPIs Principales */}
            <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
                <div className="bg-white rounded-xl p-5 border border-gray-200 shadow-sm">
                    <div className="flex items-center gap-2 text-blue-500 mb-2">
                        <Users size={18} />
                        <span className="text-xs font-bold uppercase text-gray-400">Equipo</span>
                    </div>
                    <p className="text-3xl font-black text-gray-800">{stats.usuariosActivos}</p>
                    <p className="text-xs text-gray-400">de {stats.totalUsuarios} usuarios</p>
                </div>

                <div className="bg-white rounded-xl p-5 border border-gray-200 shadow-sm">
                    <div className="flex items-center gap-2 text-green-500 mb-2">
                        <CheckCircle2 size={18} />
                        <span className="text-xs font-bold uppercase text-gray-400">Completadas Hoy</span>
                    </div>
                    <p className="text-3xl font-black text-green-600">{stats.tareasCompletadasHoy}</p>
                    <div className="flex items-center gap-1 text-xs">
                        {stats.tendenciaSemanal >= 0 ? (
                            <><TrendingUp size={12} className="text-green-500" /> +{stats.tendenciaSemanal}%</>
                        ) : (
                            <><TrendingDown size={12} className="text-red-500" /> {stats.tendenciaSemanal}%</>
                        )}
                        <span className="text-gray-400">vs prom.</span>
                    </div>
                </div>

                <div className="bg-white rounded-xl p-5 border border-gray-200 shadow-sm">
                    <div className="flex items-center gap-2 text-amber-500 mb-2">
                        <Clock size={18} />
                        <span className="text-xs font-bold uppercase text-gray-400">Atrasadas</span>
                    </div>
                    <p className={`text-3xl font-black ${stats.tareasAtrasadas > 0 ? 'text-amber-600' : 'text-gray-300'}`}>
                        {stats.tareasAtrasadas}
                    </p>
                    <p className="text-xs text-gray-400">requieren atención</p>
                </div>

                <div className="bg-white rounded-xl p-5 border border-gray-200 shadow-sm">
                    <div className="flex items-center gap-2 text-red-500 mb-2">
                        <AlertTriangle size={18} />
                        <span className="text-xs font-bold uppercase text-gray-400">Bloqueadas</span>
                    </div>
                    <p className={`text-3xl font-black ${stats.tareasBloqueadas > 0 ? 'text-red-600' : 'text-gray-300'}`}>
                        {stats.tareasBloqueadas}
                    </p>
                    <p className="text-xs text-gray-400">impedimentos activos</p>
                </div>
            </div>

            {/* Paneles de Riesgo */}
            <div className="grid md:grid-cols-3 gap-4">
                {/* Proyectos en Riesgo */}
                <div className="bg-white rounded-xl border border-gray-200 shadow-sm overflow-hidden">
                    <div className="px-4 py-3 bg-red-50 border-b border-red-100 flex items-center justify-between">
                        <h3 className="text-sm font-bold text-red-700 flex items-center gap-2">
                            <Target size={14} /> Proyectos en Riesgo
                        </h3>
                        <span className="text-xs bg-red-500 text-white px-2 py-0.5 rounded-full font-bold">
                            {stats.proyectosEnRiesgo.length}
                        </span>
                    </div>
                    <div className="divide-y divide-gray-100 max-h-[200px] overflow-y-auto">
                        {stats.proyectosEnRiesgo.length === 0 ? (
                            <div className="p-4 text-center text-green-600">
                                <CheckCircle2 size={24} className="mx-auto mb-2" />
                                <p className="text-sm font-bold">Sin proyectos en riesgo</p>
                            </div>
                        ) : stats.proyectosEnRiesgo.map((p, i) => (
                            <div key={i} className="p-3 hover:bg-gray-50">
                                <p className="font-bold text-gray-800 text-sm truncate">{p.nombre}</p>
                                <div className="flex gap-3 mt-1 text-xs">
                                    <span className="text-amber-600">{p.atrasadas} atrasadas</span>
                                    <span className="text-red-600">{p.bloqueadas} bloqueadas</span>
                                </div>
                            </div>
                        ))}
                    </div>
                </div>

                {/* Personas Sobrecargadas */}
                <div className="bg-white rounded-xl border border-gray-200 shadow-sm overflow-hidden">
                    <div className="px-4 py-3 bg-amber-50 border-b border-amber-100 flex items-center justify-between">
                        <h3 className="text-sm font-bold text-amber-700 flex items-center gap-2">
                            <Flame size={14} /> Personas Sobrecargadas
                        </h3>
                        <span className="text-xs bg-amber-500 text-white px-2 py-0.5 rounded-full font-bold">
                            {stats.personasSobrecargadas.length}
                        </span>
                    </div>
                    <div className="divide-y divide-gray-100 max-h-[200px] overflow-y-auto">
                        {stats.personasSobrecargadas.length === 0 ? (
                            <div className="p-4 text-center text-green-600">
                                <CheckCircle2 size={24} className="mx-auto mb-2" />
                                <p className="text-sm font-bold">Cargas balanceadas</p>
                            </div>
                        ) : stats.personasSobrecargadas.map((p, i) => (
                            <div key={i} className="p-3 hover:bg-gray-50 flex items-center justify-between">
                                <div>
                                    <p className="font-bold text-gray-800 text-sm">{p.nombre}</p>
                                    <p className="text-xs text-gray-400">{p.area}</p>
                                </div>
                                <span className="px-2 py-1 bg-amber-100 text-amber-700 text-xs font-black rounded">
                                    {p.pendientes} tareas
                                </span>
                            </div>
                        ))}
                    </div>
                </div>

                {/* Bloqueos Críticos */}
                <div className="bg-white rounded-xl border border-gray-200 shadow-sm overflow-hidden">
                    <div className="px-4 py-3 bg-purple-50 border-b border-purple-100 flex items-center justify-between">
                        <h3 className="text-sm font-bold text-purple-700 flex items-center gap-2">
                            <AlertCircle size={14} /> Bloqueos Críticos (&gt;48h)
                        </h3>
                        <span className="text-xs bg-purple-500 text-white px-2 py-0.5 rounded-full font-bold">
                            {stats.bloqueosCriticos.length}
                        </span>
                    </div>
                    <div className="divide-y divide-gray-100 max-h-[200px] overflow-y-auto">
                        {stats.bloqueosCriticos.length === 0 ? (
                            <div className="p-4 text-center text-green-600">
                                <CheckCircle2 size={24} className="mx-auto mb-2" />
                                <p className="text-sm font-bold">Sin bloqueos críticos</p>
                            </div>
                        ) : stats.bloqueosCriticos.map((b, i) => (
                            <div key={i} className="p-3 hover:bg-gray-50">
                                <div className="flex items-start justify-between gap-2">
                                    <div className="flex-1 min-w-0">
                                        <p className="font-bold text-gray-800 text-sm truncate">{b.tarea}</p>
                                        <p className="text-xs text-gray-500 truncate">{b.motivo}</p>
                                    </div>
                                    <span className="px-2 py-1 bg-red-100 text-red-700 text-xs font-black rounded shrink-0">
                                        {b.dias} días
                                    </span>
                                </div>
                            </div>
                        ))}
                    </div>
                </div>
            </div>

            {/* Resumen de Acciones */}
            <div className="bg-gradient-to-r from-indigo-600 to-purple-600 text-white p-5 rounded-xl">
                <h3 className="font-bold mb-4 flex items-center gap-2">
                    <ChevronRight size={18} /> Acciones Recomendadas
                </h3>
                <div className="grid md:grid-cols-3 gap-4 text-sm">
                    {stats.tareasAtrasadas > 0 && (
                        <div className="bg-white/10 p-3 rounded-lg">
                            <p className="font-bold">📅 Revisar {stats.tareasAtrasadas} tareas atrasadas</p>
                            <p className="text-xs text-white/70">Pueden afectar entregas</p>
                        </div>
                    )}
                    {stats.bloqueosCriticos.length > 0 && (
                        <div className="bg-white/10 p-3 rounded-lg">
                            <p className="font-bold">⚠️ Resolver {stats.bloqueosCriticos.length} bloqueos críticos</p>
                            <p className="text-xs text-white/70">Más de 48h sin resolver</p>
                        </div>
                    )}
                    {stats.personasSobrecargadas.length > 0 && (
                        <div className="bg-white/10 p-3 rounded-lg">
                            <p className="font-bold">👥 Reasignar carga de {stats.personasSobrecargadas.length} personas</p>
                            <p className="text-xs text-white/70">Evitar burnout</p>
                        </div>
                    )}
                    {stats.tareasAtrasadas === 0 && stats.bloqueosCriticos.length === 0 && stats.personasSobrecargadas.length === 0 && (
                        <div className="bg-white/10 p-3 rounded-lg col-span-3 text-center">
                            <p className="font-bold text-lg">🎉 ¡Excelente! La organización está en buen estado</p>
                            <p className="text-xs text-white/70">Mantén el ritmo y celebra los logros</p>
                        </div>
                    )}
                </div>
            </div>
        </div>
    );
};

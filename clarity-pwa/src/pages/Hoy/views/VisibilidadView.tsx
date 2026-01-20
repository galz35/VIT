/**
 * VisibilidadView - Mi Visibilidad y Acceso
 * 
 * Permite al usuario ver:
 * - A quién puede ver (basado en su carnet)
 * - Quién tiene acceso a sus datos
 * - Sus delegaciones activas (entrantes y salientes)
 */
import React, { useState, useEffect } from 'react';
import { Eye, Users, ShieldCheck, UserPlus, Info, RefreshCw } from 'lucide-react';
import { useAuth } from '../../../context/AuthContext';
import { accesoService } from '../../../services/acceso.service';
import type { Empleado, DelegacionVisibilidad } from '../../../types/acceso';

export const VisibilidadView: React.FC = () => {
    const { user } = useAuth();
    const carnet = user?.idUsuario?.toString() || ''; // Asumiendo que idUsuario es el carnet para este contexto, o ajustarlo

    const [loading, setLoading] = useState(true);
    const [error, setError] = useState<string | null>(null);

    const [misEscritorios, setMisEscritorios] = useState<Empleado[]>([]);
    const [quienMeVe, setQuienMeVe] = useState<any[]>([]);
    const [delegacionesDadas, setDelegacionesDadas] = useState<DelegacionVisibilidad[]>([]);
    const [delegacionesRecibidas, setDelegacionesRecibidas] = useState<DelegacionVisibilidad[]>([]);

    const loadData = async () => {
        if (!carnet) return;
        setLoading(true);
        setError(null);
        try {
            const [resVis, resQuien, resDelDadas, resDelRecibidas] = await Promise.all([
                accesoService.getVisibilidadEmpleados(carnet),
                accesoService.getQuienPuedeVer(carnet),
                accesoService.getDelegacionesPorDelegante(carnet),
                accesoService.getDelegacionesPorDelegado(carnet)
            ]);

            // Manejar respuestas que pueden ser arrays o objetos con propiedad 'empleados'/'accesos'
            const visData = resVis.data?.data;
            const quienData = resQuien.data?.data;
            setMisEscritorios(Array.isArray(visData) ? visData : visData?.empleados || []);
            setQuienMeVe(Array.isArray(quienData) ? quienData : quienData?.accesos || []);
            setDelegacionesDadas(resDelDadas.data?.data || []);
            setDelegacionesRecibidas(resDelRecibidas.data?.data || []);
        } catch (err: any) {
            setError(err.response?.data?.message || err.message || 'Error cargando datos de visibilidad');
        } finally {
            setLoading(false);
        }
    };

    useEffect(() => {
        loadData();
    }, [carnet]);

    if (loading) {
        return (
            <div className="flex flex-col items-center justify-center p-12 text-slate-500">
                <RefreshCw className="w-8 h-8 animate-spin mb-4 text-indigo-500" />
                <p>Calculando tu red de visibilidad...</p>
            </div>
        );
    }

    return (
        <div className="space-y-6">
            {error && (
                <div className="bg-red-50 dark:bg-red-900/10 border border-red-200 dark:border-red-800/30 p-4 rounded-xl text-red-700 dark:text-red-400 text-sm">
                    {error}
                </div>
            )}
            <div className="bg-gradient-to-r from-indigo-600 to-purple-600 rounded-2xl p-6 text-white shadow-lg">
                <div className="flex items-center gap-4 mb-4">
                    <div className="p-3 bg-white/20 rounded-xl backdrop-blur-sm">
                        <ShieldCheck className="w-8 h-8" />
                    </div>
                    <div>
                        <h2 className="text-xl font-bold">Resumen de Seguridad</h2>
                        <p className="text-indigo-100 text-sm">Consulta quién puede ver tu actividad y a quién puedes supervisar tú.</p>
                    </div>
                </div>

                <div className="grid grid-cols-1 md:grid-cols-3 gap-4 mt-6">
                    <div className="bg-white/10 rounded-xl p-4 backdrop-blur-sm border border-white/10">
                        <p className="text-xs uppercase font-bold text-indigo-200 mb-1">Visibilidad Activa</p>
                        <p className="text-2xl font-black">{(misEscritorios?.length || 0)} <span className="text-sm font-normal opacity-80">empleados</span></p>
                    </div>
                    <div className="bg-white/10 rounded-xl p-4 backdrop-blur-sm border border-white/10">
                        <p className="text-xs uppercase font-bold text-indigo-200 mb-1">Acceso a mis datos</p>
                        <p className="text-2xl font-black">{(quienMeVe?.length || 0)} <span className="text-sm font-normal opacity-80">usuarios</span></p>
                    </div>
                    <div className="bg-white/10 rounded-xl p-4 backdrop-blur-sm border border-white/10">
                        <p className="text-xs uppercase font-bold text-indigo-200 mb-1">Delegaciones</p>
                        <p className="text-2xl font-black">{(delegacionesDadas?.length || 0) + (delegacionesRecibidas?.length || 0)} <span className="text-sm font-normal opacity-80">activas</span></p>
                    </div>
                </div>
            </div>

            <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
                {/* Quién puede verme */}
                <section className="bg-white dark:bg-slate-800 rounded-2xl p-6 shadow-sm border border-slate-100 dark:border-slate-700">
                    <div className="flex items-center gap-2 mb-4">
                        <Eye className="w-5 h-5 text-indigo-500" />
                        <h3 className="font-bold text-slate-800 dark:text-white">Quién puede ver mis datos</h3>
                    </div>
                    <div className="space-y-3">
                        {quienMeVe.length > 0 ? (
                            quienMeVe.map((acc, idx) => (
                                <div key={idx} className="flex items-center gap-3 p-3 bg-slate-50 dark:bg-slate-900/50 rounded-xl border border-slate-100 dark:border-slate-800">
                                    <div className="w-10 h-10 bg-indigo-100 dark:bg-indigo-900/30 rounded-full flex items-center justify-center text-indigo-600 font-bold">
                                        {acc.nombre?.charAt(0) || 'U'}
                                    </div>
                                    <div className="flex-1 min-w-0">
                                        <p className="font-bold text-slate-800 dark:text-slate-200 text-sm truncate">{acc.nombre || acc.carnet}</p>
                                        <p className="text-xs text-indigo-500 font-medium">{acc.razon}</p>
                                    </div>
                                </div>
                            ))
                        ) : (
                            <p className="text-sm text-slate-500 italic py-4 text-center">Nadie tiene acceso especial a tus datos fuera de los administradores del sistema.</p>
                        )}
                    </div>
                </section>

                {/* Delegaciones */}
                <section className="bg-white dark:bg-slate-800 rounded-2xl p-6 shadow-sm border border-slate-100 dark:border-slate-700">
                    <div className="flex items-center gap-2 mb-4">
                        <UserPlus className="w-5 h-5 text-purple-500" />
                        <h3 className="font-bold text-slate-800 dark:text-white">Delegaciones de Visibilidad</h3>
                    </div>

                    <div className="space-y-4">
                        {/* Salientes */}
                        <div>
                            <p className="text-xs font-bold text-slate-400 uppercase mb-2">He delegado mi visibilidad a:</p>
                            <div className="space-y-2">
                                {delegacionesDadas.length > 0 ? (
                                    delegacionesDadas.map(d => (
                                        <div key={d.id} className="p-3 bg-purple-50 dark:bg-purple-900/10 rounded-xl border border-purple-100 dark:border-purple-800/30 flex justify-between items-center">
                                            <span className="font-medium text-slate-700 dark:text-slate-300">{d.carnetDelegado}</span>
                                            <span className="text-xs bg-purple-100 dark:bg-purple-900/30 text-purple-700 dark:text-purple-300 px-2 py-1 rounded-full">{d.motivo || 'General'}</span>
                                        </div>
                                    ))
                                ) : (
                                    <p className="text-xs text-slate-400 italic">No has delegado tu acceso a nadie.</p>
                                )}
                            </div>
                        </div>

                        {/* Entrantes */}
                        <div>
                            <p className="text-xs font-bold text-slate-400 uppercase mb-2">Tengo acceso delegado de:</p>
                            <div className="space-y-2">
                                {delegacionesRecibidas.length > 0 ? (
                                    delegacionesRecibidas.map(d => (
                                        <div key={d.id} className="p-3 bg-emerald-50 dark:bg-emerald-900/10 rounded-xl border border-emerald-100 dark:border-emerald-800/30 flex justify-between items-center">
                                            <span className="font-medium text-slate-700 dark:text-slate-300">{d.carnetDelegante}</span>
                                            <span className="text-xs bg-emerald-100 dark:bg-emerald-900/30 text-emerald-700 dark:text-emerald-300 px-2 py-1 rounded-full">Activa</span>
                                        </div>
                                    ))
                                ) : (
                                    <p className="text-xs text-slate-400 italic">Nadie ha delegado su acceso a ti.</p>
                                )}
                            </div>
                        </div>
                    </div>
                </section>

                {/* Mi Visibilidad (Preview) */}
                <section className="lg:col-span-2 bg-white dark:bg-slate-800 rounded-2xl p-6 shadow-sm border border-slate-100 dark:border-slate-700">
                    <div className="flex items-center justify-between mb-4">
                        <div className="flex items-center gap-2">
                            <Users className="w-5 h-5 text-blue-500" />
                            <h3 className="font-bold text-slate-800 dark:text-white">Empleados que puedo ver ({misEscritorios.length})</h3>
                        </div>
                        <button
                            onClick={loadData}
                            className="p-2 text-slate-400 hover:text-indigo-500 transition-colors"
                        >
                            <RefreshCw size={18} />
                        </button>
                    </div>

                    <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-3">
                        {misEscritorios.slice(0, 6).map(emp => (
                            <div key={emp.carnet} className="flex items-center gap-3 p-3 bg-slate-50 dark:bg-slate-900/50 rounded-xl border border-slate-100 dark:border-slate-800">
                                <div className="w-8 h-8 bg-blue-100 dark:bg-blue-900/30 rounded-full flex items-center justify-center text-blue-600 font-bold text-xs">
                                    {emp.nombreCompleto?.charAt(0) || 'E'}
                                </div>
                                <div className="flex-1 min-w-0">
                                    <p className="font-bold text-slate-800 dark:text-slate-200 text-xs truncate">{emp.nombreCompleto || emp.carnet}</p>
                                    <p className="text-[10px] text-slate-500 truncate">{emp.cargo || emp.carnet}</p>
                                </div>
                            </div>
                        ))}
                        {misEscritorios.length > 6 && (
                            <div className="flex items-center justify-center p-3 border border-dashed border-slate-300 dark:border-slate-700 rounded-xl">
                                <p className="text-xs text-slate-400">Y {misEscritorios.length - 6} más...</p>
                            </div>
                        )}
                        {misEscritorios.length === 0 && (
                            <div className="col-span-full py-8 text-center bg-slate-50 dark:bg-slate-900/50 rounded-xl">
                                <Info className="w-8 h-8 text-slate-300 mx-auto mb-2" />
                                <p className="text-sm text-slate-400">Solo puedes ver tu propia información.</p>
                            </div>
                        )}
                    </div>
                </section>
            </div>

            <div className="bg-amber-50 dark:bg-amber-900/10 border border-amber-100 dark:border-amber-800/30 rounded-xl p-4 flex gap-3 italic">
                <Info className="w-5 h-5 text-amber-500 shrink-0 mt-0.5" />
                <p className="text-xs text-amber-800 dark:text-amber-200 leading-relaxed">
                    <strong>Nota de Privacidad:</strong> La visibilidad se calcula automáticamente según la jerarquía organizacional cargada por el departamento de Recursos Humanos. Si consideras que hay errores en tu red de visibilidad, por favor contacta a soporte o a tu administrador de sistema.
                </p>
            </div>
        </div>
    );
};

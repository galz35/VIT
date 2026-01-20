
import React, { useState } from 'react';
import { CheckCircle2, X, Sparkles, Bell, User, BookOpen, ArrowRight } from 'lucide-react';
import { NotificationsSetup } from './NotificationsSetup';
import { useNotifications } from '../../hooks/useNotifications';

interface Props {
    userName: string;
    onComplete: () => void;
    onSkip: () => void;
}

type Step = 'welcome' | 'profile' | 'notifications' | 'tutorial' | 'complete';

export const OnboardingWizard: React.FC<Props> = ({ userName, onComplete, onSkip }) => {
    const [currentStep, setCurrentStep] = useState<Step>('welcome');
    useNotifications();

    const steps = [
        { id: 'welcome', label: 'Bienvenida', icon: Sparkles },
        { id: 'profile', label: 'Perfil', icon: User },
        { id: 'notifications', label: 'Alertas', icon: Bell },
        { id: 'tutorial', label: 'Uso', icon: BookOpen },
        { id: 'complete', label: 'Listo', icon: CheckCircle2 }
    ];

    const currentIndex = steps.findIndex(s => s.id === currentStep);

    const nextStep = () => {
        const nextIndex = currentIndex + 1;
        if (nextIndex < steps.length) {
            setCurrentStep(steps[nextIndex].id as Step);
        }
    };

    const prevStep = () => {
        const prevIndex = currentIndex - 1;
        if (prevIndex >= 0) {
            setCurrentStep(steps[prevIndex].id as Step);
        }
    };

    const handleComplete = () => {
        localStorage.setItem('clarity_onboarding_complete', 'true');
        onComplete();
    };

    return (
        <div className="fixed inset-0 bg-slate-900/40 backdrop-blur-sm flex items-center justify-center z-[100] p-4 animate-in fade-in duration-300">
            <div className="bg-white rounded-[28px] w-full max-w-lg shadow-2xl overflow-hidden flex flex-col scale-in-center animate-in zoom-in-95 duration-200 border border-slate-200">

                {/* Header - Simpler and Professional */}
                <div className="px-8 py-6 border-b border-slate-100 flex items-center justify-between bg-slate-50/50">
                    <div className="flex items-center gap-3">
                        <div className="w-10 h-10 bg-indigo-600 text-white rounded-2xl flex items-center justify-center shadow-lg shadow-indigo-100">
                            <Sparkles size={20} />
                        </div>
                        <div>
                            <h2 className="text-lg font-black text-slate-900 tracking-tight">Bienvenido a Clarity</h2>
                            <p className="text-[10px] font-bold text-slate-400 uppercase tracking-widest mt-0.5">Configuración Inicial</p>
                        </div>
                    </div>
                    <button
                        onClick={onSkip}
                        className="p-2 text-slate-400 hover:text-slate-600 hover:bg-slate-200/50 rounded-full transition-all group flex items-center gap-1.5"
                        title="Omitir tutorial"
                    >
                        <span className="text-[10px] font-black uppercase tracking-tight opacity-0 group-hover:opacity-100 transition-opacity">Cerrar</span>
                        <X size={20} />
                    </button>
                </div>

                {/* Progress bar - Clean */}
                <div className="flex w-full h-1">
                    {steps.map((step, idx) => (
                        <div
                            key={step.id}
                            className={`flex-1 transition-all duration-500 ${idx <= currentIndex ? 'bg-indigo-600' : 'bg-slate-100'}`}
                        />
                    ))}
                </div>

                {/* Content */}
                <div className="p-8 min-h-[340px] flex flex-col justify-center overflow-y-auto">
                    {currentStep === 'welcome' && (
                        <div className="text-center animate-in slide-in-from-bottom-4 duration-500">
                            <div className="w-24 h-24 bg-indigo-50 rounded-[32px] flex items-center justify-center mx-auto mb-6 border border-indigo-100">
                                <Sparkles className="text-indigo-600" size={48} />
                            </div>
                            <h3 className="text-2xl font-black text-slate-800 mb-3">
                                ¡Hola, {userName}! 👋
                            </h3>
                            <p className="text-slate-500 font-medium leading-relaxed max-w-sm mx-auto">
                                Estamos listos para ayudarte a organizar tu portafolio,<br />
                                gestionar riesgos y potenciar a tu equipo.
                            </p>
                        </div>
                    )}

                    {currentStep === 'profile' && (
                        <div className="space-y-6 animate-in slide-in-from-bottom-4 duration-500">
                            <div className="flex items-center gap-3 mb-2">
                                <User className="text-indigo-600" size={24} />
                                <h3 className="text-xl font-black text-slate-800">Confirmación de Perfil</h3>
                            </div>
                            <div className="bg-slate-50 border border-slate-200 rounded-[24px] p-6 space-y-4">
                                <div className="flex items-center gap-4">
                                    <div className="w-16 h-16 rounded-[20px] bg-slate-900 flex items-center justify-center text-white font-black text-2xl shadow-xl">
                                        {userName.charAt(0)}
                                    </div>
                                    <div>
                                        <p className="font-black text-slate-800 text-lg">{userName}</p>
                                        <p className="text-xs text-indigo-600 font-bold uppercase tracking-wide">Acceso Gerencial Activo</p>
                                    </div>
                                    <div className="ml-auto w-10 h-10 bg-emerald-50 text-emerald-600 rounded-full flex items-center justify-center border border-emerald-100">
                                        <CheckCircle2 size={24} />
                                    </div>
                                </div>
                                <p className="text-xs text-slate-400 font-medium italic">
                                    Tu cargo y jerarquía han sido sincronizados con el sistema central.
                                </p>
                            </div>
                        </div>
                    )}

                    {currentStep === 'notifications' && (
                        <div className="space-y-6 animate-in slide-in-from-bottom-4 duration-500">
                            <div className="flex items-center gap-3 mb-2">
                                <Bell className="text-indigo-600" size={24} />
                                <h3 className="text-xl font-black text-slate-800">Alertas Inteligentes</h3>
                            </div>
                            <p className="text-slate-500 font-medium">
                                Recibe notificaciones inmediatas sobre bloqueos de equipo o proyectos en riesgo.
                            </p>
                            <div className="bg-indigo-50/50 border border-indigo-100 rounded-[24px] p-2">
                                <NotificationsSetup />
                            </div>
                        </div>
                    )}

                    {currentStep === 'tutorial' && (
                        <div className="space-y-6 animate-in slide-in-from-bottom-4 duration-500">
                            <div className="flex items-center gap-3 mb-2">
                                <BookOpen className="text-indigo-600" size={24} />
                                <h3 className="text-xl font-black text-slate-800">Conceptos Clave</h3>
                            </div>
                            <div className="grid grid-cols-1 gap-3">
                                {[
                                    { icon: '🎯', title: 'Portafolio', desc: 'Control centralizado de todos tus proyectos activos.' },
                                    { icon: '👥', title: 'Estado Equipo', desc: 'Visibilidad real sobre la carga y el ánimo de tu equipo.' },
                                    { icon: '🚫', title: 'Bloqueos', desc: 'Gestiona impedimentos que detienen la operación.' },
                                    { icon: '📊', title: 'Inteligencia', desc: 'Dashboards automáticos para toma de decisiones.' }
                                ].map((item, idx) => (
                                    <div key={idx} className="flex items-center gap-4 p-4 bg-white border border-slate-100 rounded-2xl shadow-sm hover:border-indigo-200 transition-colors">
                                        <span className="text-2xl grayscale group-hover:grayscale-0 transition-all">{item.icon}</span>
                                        <div>
                                            <p className="font-black text-slate-800 text-sm tracking-tight">{item.title}</p>
                                            <p className="text-[11px] text-slate-400 font-bold">{item.desc}</p>
                                        </div>
                                    </div>
                                ))}
                            </div>
                        </div>
                    )}

                    {currentStep === 'complete' && (
                        <div className="text-center animate-in zoom-in-95 duration-500">
                            <div className="w-24 h-24 bg-emerald-50 rounded-[32px] flex items-center justify-center mx-auto mb-6 border border-emerald-100">
                                <CheckCircle2 className="text-emerald-500" size={48} />
                            </div>
                            <h3 className="text-2xl font-black text-slate-800 mb-3">
                                ¡Configuración Exitosa! 🎉
                            </h3>
                            <p className="text-slate-500 font-medium max-w-sm mx-auto leading-relaxed">
                                Tu centro de comando de Clarity está listo.<br />
                                Comencemos a transformar la gestión.
                            </p>
                        </div>
                    )}
                </div>

                {/* Footer - Clear Action Buttons */}
                <div className="px-8 py-6 bg-slate-50/80 border-t border-slate-100 flex justify-between items-center">
                    <button
                        onClick={currentIndex === 0 ? onSkip : prevStep}
                        className="text-xs font-black text-slate-400 hover:text-slate-600 uppercase tracking-widest transition-colors"
                    >
                        {currentIndex === 0 ? 'Ignorar por ahora' : 'Anterior'}
                    </button>

                    <button
                        onClick={currentStep === 'complete' ? handleComplete : nextStep}
                        className="px-8 py-3 bg-slate-900 text-white rounded-2xl font-black text-sm hover:bg-indigo-600 transition-all shadow-xl shadow-slate-200 flex items-center gap-3 group"
                    >
                        {currentStep === 'complete' ? 'Comenzar Ahora' : 'Siguiente'}
                        <ArrowRight size={18} className="group-hover:translate-x-1 transition-transform" />
                    </button>
                </div>
            </div>
        </div>
    );
};

export const useOnboarding = () => {
    const [showOnboarding, setShowOnboarding] = useState(false);

    React.useEffect(() => {
        const completed = localStorage.getItem('clarity_onboarding_complete');
        if (!completed) {
            setShowOnboarding(true);
        }
    }, []);

    const completeOnboarding = () => {
        localStorage.setItem('clarity_onboarding_complete', 'true');
        setShowOnboarding(false);
    };

    const skipOnboarding = () => {
        localStorage.setItem('clarity_onboarding_complete', 'skipped');
        setShowOnboarding(false);
    };

    const resetOnboarding = () => {
        localStorage.removeItem('clarity_onboarding_complete');
        setShowOnboarding(true);
    };

    return { showOnboarding, completeOnboarding, skipOnboarding, resetOnboarding };
};

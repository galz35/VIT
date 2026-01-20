import React from 'react';
import { Bell, BellOff, Check, X } from 'lucide-react';
import { useNotifications, NotificationTemplates } from '../../hooks/useNotifications';

interface Props {
    onClose?: () => void;
}

export const NotificationsSetup: React.FC<Props> = ({ onClose }) => {
    const { permission, isSupported, requestPermission, sendNotification } = useNotifications();

    const handleEnableNotifications = async () => {
        const granted = await requestPermission();
        if (granted) {
            // Send a test notification
            sendNotification({
                title: '🎉 ¡Notificaciones Activadas!',
                body: 'Recibirás alertas de tareas y recordatorios',
            });
        }
    };

    const handleTestNotification = () => {
        sendNotification(NotificationTemplates.checkinReminder());
    };

    if (!isSupported) {
        return (
            <div className="bg-amber-50 dark:bg-amber-900/30 border border-amber-200 dark:border-amber-700 rounded-xl p-4">
                <div className="flex items-start gap-3">
                    <BellOff className="text-amber-500 shrink-0" size={20} />
                    <div>
                        <h4 className="font-bold text-amber-700 dark:text-amber-400">Navegador no compatible</h4>
                        <p className="text-sm text-amber-600 dark:text-amber-300">
                            Tu navegador no soporta notificaciones push. Intenta con Chrome, Firefox o Edge.
                        </p>
                    </div>
                </div>
            </div>
        );
    }

    return (
        <div className="bg-white dark:bg-slate-800 rounded-xl border border-gray-200 dark:border-slate-700 shadow-lg overflow-hidden">
            {/* Header */}
            <div className="px-4 py-3 bg-indigo-50 dark:bg-indigo-900/30 border-b border-indigo-100 dark:border-indigo-800 flex items-center justify-between">
                <h3 className="font-bold text-indigo-700 dark:text-indigo-300 flex items-center gap-2">
                    <Bell size={16} /> Notificaciones
                </h3>
                {onClose && (
                    <button onClick={onClose} className="text-gray-400 hover:text-gray-600 dark:hover:text-gray-300">
                        <X size={16} />
                    </button>
                )}
            </div>

            <div className="p-4 space-y-4">
                {/* Status */}
                <div className={`flex items-center gap-3 p-3 rounded-lg ${permission === 'granted'
                        ? 'bg-green-50 dark:bg-green-900/20'
                        : permission === 'denied'
                            ? 'bg-red-50 dark:bg-red-900/20'
                            : 'bg-gray-50 dark:bg-slate-700'
                    }`}>
                    {permission === 'granted' ? (
                        <>
                            <Check className="text-green-500" size={20} />
                            <div>
                                <p className="font-bold text-green-700 dark:text-green-400">Notificaciones Activas</p>
                                <p className="text-xs text-green-600 dark:text-green-300">Recibirás alertas de tareas</p>
                            </div>
                        </>
                    ) : permission === 'denied' ? (
                        <>
                            <BellOff className="text-red-500" size={20} />
                            <div>
                                <p className="font-bold text-red-700 dark:text-red-400">Notificaciones Bloqueadas</p>
                                <p className="text-xs text-red-600 dark:text-red-300">
                                    Habilítalas desde la configuración del navegador
                                </p>
                            </div>
                        </>
                    ) : (
                        <>
                            <Bell className="text-gray-400" size={20} />
                            <div>
                                <p className="font-bold text-gray-700 dark:text-gray-300">Notificaciones Desactivadas</p>
                                <p className="text-xs text-gray-500 dark:text-gray-400">
                                    Actívalas para recibir recordatorios
                                </p>
                            </div>
                        </>
                    )}
                </div>

                {/* Actions */}
                <div className="flex gap-2">
                    {permission !== 'granted' && permission !== 'denied' && (
                        <button
                            onClick={handleEnableNotifications}
                            className="flex-1 py-2 px-4 bg-indigo-600 text-white rounded-lg font-bold text-sm hover:bg-indigo-700 transition-colors flex items-center justify-center gap-2"
                        >
                            <Bell size={16} />
                            Activar Notificaciones
                        </button>
                    )}
                    {permission === 'granted' && (
                        <button
                            onClick={handleTestNotification}
                            className="flex-1 py-2 px-4 bg-gray-100 dark:bg-slate-700 text-gray-700 dark:text-gray-300 rounded-lg font-bold text-sm hover:bg-gray-200 dark:hover:bg-slate-600 transition-colors"
                        >
                            Enviar Prueba
                        </button>
                    )}
                </div>

                {/* Info */}
                <div className="text-xs text-gray-400 dark:text-gray-500 space-y-1">
                    <p>📅 Recordatorios de tareas próximas a vencer</p>
                    <p>⚠️ Alertas de tareas atrasadas</p>
                    <p>🚫 Notificaciones de bloqueos críticos</p>
                    <p>☀️ Recordatorio de check-in diario</p>
                </div>
            </div>
        </div>
    );
};

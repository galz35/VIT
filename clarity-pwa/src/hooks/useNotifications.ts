import { useState, useEffect, useCallback } from 'react';

interface NotificationOptions {
    title: string;
    body: string;
    icon?: string;
    tag?: string;
    requireInteraction?: boolean;
    data?: any;
}

interface UseNotificationsReturn {
    permission: NotificationPermission | 'default';
    isSupported: boolean;
    requestPermission: () => Promise<boolean>;
    sendNotification: (options: NotificationOptions) => void;
    scheduleReminder: (taskTitle: string, minutes: number) => void;
}

export const useNotifications = (): UseNotificationsReturn => {
    const [permission, setPermission] = useState<NotificationPermission | 'default'>('default');
    const [isSupported, setIsSupported] = useState(false);

    useEffect(() => {
        // Check if notifications are supported
        const supported = 'Notification' in window;
        setIsSupported(supported);

        if (supported) {
            setPermission(Notification.permission);
        }
    }, []);

    const requestPermission = useCallback(async (): Promise<boolean> => {
        if (!isSupported) return false;

        try {
            const result = await Notification.requestPermission();
            setPermission(result);
            return result === 'granted';
        } catch {
            return false;
        }
    }, [isSupported]);

    const sendNotification = useCallback((options: NotificationOptions) => {
        if (!isSupported || permission !== 'granted') return;

        try {
            const notification = new Notification(options.title, {
                body: options.body,
                icon: options.icon || '/momentus-logo2.png',
                tag: options.tag,
                requireInteraction: options.requireInteraction,
                data: options.data
            });

            notification.onclick = () => {
                window.focus();
                notification.close();

                // Navigate to task if data provided
                if (options.data?.taskId) {
                    window.location.href = `/app/hoy`;
                }
            };

            // Auto-close after 10 seconds
            setTimeout(() => notification.close(), 10000);
        } catch (e) {
            console.error('Notification error:', e);
        }
    }, [isSupported, permission]);

    const scheduleReminder = useCallback((taskTitle: string, minutes: number) => {
        if (!isSupported || permission !== 'granted') return;

        const timeoutId = setTimeout(() => {
            sendNotification({
                title: '⏰ Recordatorio de Tarea',
                body: `Es hora de: ${taskTitle}`,
                requireInteraction: true
            });
        }, minutes * 60 * 1000);

        // Store timeout to allow cancellation (in real app, would use IndexedDB)
        localStorage.setItem(`reminder_${Date.now()}`, JSON.stringify({
            taskTitle,
            timeoutId: timeoutId.toString(),
            scheduledFor: Date.now() + minutes * 60 * 1000
        }));
    }, [isSupported, permission, sendNotification]);

    return {
        permission,
        isSupported,
        requestPermission,
        sendNotification,
        scheduleReminder
    };
};

// Notification Templates
export const NotificationTemplates = {
    taskOverdue: (taskTitle: string) => ({
        title: '⚠️ Tarea Atrasada',
        body: `"${taskTitle}" está vencida y necesita atención`,
        requireInteraction: true
    }),

    taskDueToday: (taskTitle: string) => ({
        title: '📅 Tarea vence hoy',
        body: `No olvides completar: "${taskTitle}"`,
    }),

    blockerCreated: (blockerText: string) => ({
        title: '🚫 Nuevo Bloqueo Reportado',
        body: blockerText,
        requireInteraction: true
    }),

    checkinReminder: () => ({
        title: '☀️ Buenos días',
        body: '¿Ya hiciste tu check-in de hoy?',
    }),

    dailySummary: (completed: number, pending: number) => ({
        title: '📊 Resumen del Día',
        body: `Completaste ${completed} tareas. Quedan ${pending} pendientes.`,
    })
};

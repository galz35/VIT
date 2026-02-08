import { registerSW } from 'virtual:pwa-register';
import { alerts } from '../utils/alerts';

export function registerPWA() {
    const updateSW = registerSW({
        async onNeedRefresh() {
            if (await alerts.confirm('Nueva Versión', 'Hay una nueva versión disponible. ¿Deseas recargar la aplicación para actualizar?', 'info')) {
                updateSW(true);
            }
        },
        onOfflineReady() {
            console.log('App lista para trabajar offline');
        },
    });
}

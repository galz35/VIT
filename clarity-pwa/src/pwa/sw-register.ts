import { registerSW } from 'virtual:pwa-register';

export function registerPWA() {
    const updateSW = registerSW({
        onNeedRefresh() {
            if (confirm('Nueva versión disponible. ¿Recargar?')) {
                updateSW(true);
            }
        },
        onOfflineReady() {
            console.log('App lista para trabajar offline');
        },
    });
}

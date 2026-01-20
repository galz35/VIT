import axios, { AxiosError, type InternalAxiosRequestConfig } from 'axios';

const API_URL = import.meta.env.VITE_API_URL || 'http://localhost:3000/api';

// Configuración de retry
const MAX_RETRIES = 2;
const RETRY_DELAY = 1000;

// Interfaz para tracking de retries y refresh
interface CustomAxiosConfig extends InternalAxiosRequestConfig {
    _retryCount?: number;
    _isRetry?: boolean;
}

export const api = axios.create({
    baseURL: API_URL,
    headers: {
        'Content-Type': 'application/json',
    },
    timeout: 30000,
});

// Variables para manejar el refresh token concurrente
let isRefreshing = false;
interface QueueItem {
    resolve: (token: string) => void;
    reject: (error: Error) => void;
}

let failedQueue: QueueItem[] = [];

const processQueue = (error: Error | null, token: string | null = null) => {
    failedQueue.forEach(prom => {
        if (error) {
            prom.reject(error);
        } else if (token) {
            prom.resolve(token);
        }
    });
    failedQueue = [];
};

// Interceptor de request: agregar token
api.interceptors.request.use((config) => {
    const token = localStorage.getItem('clarity_token');
    const selectedCountry = localStorage.getItem('clarity_selected_country');

    if (token) {
        config.headers.Authorization = `Bearer ${token}`;
    }
    if (selectedCountry) {
        config.headers['x-country'] = selectedCountry;
    }
    return config;
});

// Interceptor de response: manejo de errores, refresh token y retry
api.interceptors.response.use(
    (response) => response,
    async (error: AxiosError) => {
        const config = error.config as CustomAxiosConfig;

        // 1. Error de red o timeout - intentar retry
        if (!error.response && config && (config._retryCount ?? 0) < MAX_RETRIES) {
            config._retryCount = (config._retryCount ?? 0) + 1;
            await new Promise(resolve => setTimeout(resolve, RETRY_DELAY));
            return api.request(config);
        }

        if (error.response) {
            const status = error.response.status;

            // LOG ERROR FOR DEBUGGING
            console.error(`[API ERROR] ${status} ${config?.url}`, error.response.data);

            // 2. Manejo de Token Expirado (401)
            if (status === 401 && !config._isRetry) {
                console.warn('[API] Token expirado o inválido (401). Intentando refresh...');
                if (isRefreshing) {
                    return new Promise((resolve, reject) => {
                        failedQueue.push({ resolve, reject });
                    }).then(token => {
                        config.headers.Authorization = `Bearer ${token}`;
                        return api.request(config);
                    }).catch(err => {
                        return Promise.reject(err);
                    });
                }

                config._isRetry = true;
                isRefreshing = true;

                const refreshToken = localStorage.getItem('clarity_refresh_token');

                if (refreshToken) {
                    try {
                        console.log('[API] Iniciando petición de refresco de token...');
                        const { data } = await axios.post(`${API_URL}/auth/refresh`, { refreshToken });
                        console.log('[API] Token refrescado exitosamente.');

                        // Si la respuesta sigue el formato ApiResponse
                        const newTokens = data.data;
                        const accessToken = newTokens.access_token;
                        const newRefreshToken = newTokens.refresh_token;

                        localStorage.setItem('clarity_token', accessToken);
                        localStorage.setItem('clarity_refresh_token', newRefreshToken);

                        api.defaults.headers.common['Authorization'] = `Bearer ${accessToken}`;
                        config.headers.Authorization = `Bearer ${accessToken}`;

                        processQueue(null, accessToken);
                        isRefreshing = false;

                        return api.request(config);
                    } catch (refreshError) {
                        console.error('[API] Falló el refresh token', refreshError);
                        processQueue(refreshError instanceof Error ? refreshError : new Error('Refresh failed'), null);
                        isRefreshing = false;

                        // Falló el refresh - logout
                        localStorage.removeItem('clarity_token');
                        localStorage.removeItem('clarity_refresh_token');
                        localStorage.removeItem('clarity_user');

                        if (!window.location.pathname.includes('/login')) {
                            window.location.href = '/login';
                        }
                        return Promise.reject(refreshError);
                    }
                } else {
                    console.warn('[API] No hay refresh token disponible. Redirigiendo a login.');
                    // No hay refresh token - logout
                    isRefreshing = false;
                    localStorage.removeItem('clarity_token');
                    localStorage.removeItem('clarity_user');
                    if (!window.location.pathname.includes('/login')) {
                        window.location.href = '/login';
                    }
                }
            }

            // 3. Reintentar para errores de servidor (5xx)
            if ([500, 502, 503, 504].includes(status)) {
                if (config && (config._retryCount ?? 0) < MAX_RETRIES) {
                    config._retryCount = (config._retryCount ?? 0) + 1;
                    await new Promise(resolve => setTimeout(resolve, RETRY_DELAY * 2));
                    return api.request(config);
                }
            }
        }

        return Promise.reject(error);
    }
);

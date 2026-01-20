import { api } from './api';

export interface SolicitudCambio {
    idSolicitud: number;
    idTarea: number;
    tarea: any;
    idUsuarioSolicitante: number;
    usuarioSolicitante: any;
    campoAfectado: string;
    valorAnterior: string;
    valorNuevo: string;
    motivo: string;
    estado: 'Pendiente' | 'Aprobado' | 'Rechazado';
    fechaSolicitud: string;
}

export const planningService = {
    /**
     * Verifica si una tarea puede ser editada directamente o requiere aprobación.
     */
    checkPermission: async (idTarea: number): Promise<{ puedeEditar: boolean, requiereAprobacion: boolean, tipoProyecto: string }> => {
        const response = await api.post('/planning/check-permission', { idTarea });
        return response.data.data;
    },

    /**
     * Crea una solicitud de cambio para una tarea estratégica.
     */
    requestChange: async (idTarea: number, campo: string, valorNuevo: string, motivo: string): Promise<SolicitudCambio> => {
        const response = await api.post('/planning/request-change', { idTarea, campo, valorNuevo, motivo });
        return response.data.data;
    },

    /**
     * Obtiene las solicitudes pendientes (para Jefes).
     */
    getPendingRequests: async (): Promise<SolicitudCambio[]> => {
        const response = await api.get('/planning/pending');
        return response.data.data;
    },

    /**
     * Resuelve una solicitud (Aprobar/Rechazar).
     */
    resolveRequest: async (idSolicitud: number, accion: 'Aprobar' | 'Rechazar'): Promise<SolicitudCambio> => {
        const response = await api.post('/planning/resolve', { idSolicitud, accion });
        return response.data.data;
    }
};

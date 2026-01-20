/**
 * useEquipoAcceso - Hook para obtener empleados visibles usando el módulo acceso
 * 
 * Este hook reemplaza useEquipo para visibilidad de empleados usando el nuevo sistema
 * basado en carnet en lugar de idUsuario.
 */
import { useState, useEffect, useCallback } from 'react';
import { accesoService } from '../services/acceso.service';
import type { Empleado } from '../types/acceso';

export interface EquipoMemberAcceso {
    empleado: Empleado;
    // Campos adicionales que se pueden agregar después
    bloqueosActivos?: number;
    tareasVencidas?: number;
    estado?: 'Pendiente' | 'AlDia' | 'ConBloqueos';
}

export const useEquipoAcceso = (miCarnet: string) => {
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState<string | null>(null);
    const [empleadosVisibles, setEmpleadosVisibles] = useState<Empleado[]>([]);
    const [totalVisibles, setTotalVisibles] = useState(0);

    const fetchEmpleadosVisibles = useCallback(async () => {
        if (!miCarnet) {
            setEmpleadosVisibles([]);
            setTotalVisibles(0);
            setLoading(false);
            return;
        }

        try {
            setLoading(true);
            setError(null);

            const response = await accesoService.getVisibilidadEmpleados(miCarnet);

            if (response.data?.data) {
                const data = response.data.data;
                if (Array.isArray(data)) {
                    setEmpleadosVisibles(data);
                    setTotalVisibles(data.length);
                } else if (data.empleados) {
                    setEmpleadosVisibles(data.empleados);
                    setTotalVisibles(data.total || data.empleados.length);
                }
            } else {
                setEmpleadosVisibles([]);
                setTotalVisibles(0);
            }
        } catch (err: any) {
            console.error('[useEquipoAcceso] Error:', err);
            setError(err.message || 'Error cargando empleados visibles');
            setEmpleadosVisibles([]);
            setTotalVisibles(0);
        } finally {
            setLoading(false);
        }
    }, [miCarnet]);

    useEffect(() => {
        fetchEmpleadosVisibles();
    }, [fetchEmpleadosVisibles]);

    return {
        loading,
        error,
        empleadosVisibles,
        totalVisibles,
        refetch: fetchEmpleadosVisibles
    };
};

/**
 * useVerificarVisibilidad - Hook para verificar si puedo ver a un empleado específico
 */
export const useVerificarVisibilidad = () => {
    const [loading, setLoading] = useState(false);

    const verificar = async (miCarnet: string, carnetObjetivo: string): Promise<boolean> => {
        if (!miCarnet || !carnetObjetivo) return false;

        try {
            setLoading(true);
            const response = await accesoService.verificarPuedeVer(miCarnet, carnetObjetivo);
            const data = response.data?.data;
            if (typeof data === 'boolean') return data;
            if (typeof data === 'object' && data !== null && 'puedeVer' in data) {
                return data.puedeVer === true;
            }
            return false;
        } catch {
            return false;
        } finally {
            setLoading(false);
        }
    };

    return { verificar, loading };
};

export default useEquipoAcceso;

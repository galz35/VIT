import React from 'react';
import { useNavigate } from 'react-router-dom';
import type { EquipoMemberStatus } from '../../../hooks/useEquipo';
import { StatusPill } from '../../../components/ui/StatusPill';

interface Props {
    member: EquipoMemberStatus;
}

export const UserRow: React.FC<Props> = ({ member }) => {
    const { usuario, checkin, estado } = member;
    const navigate = useNavigate();

    return (
        <div
            onClick={() => navigate(`/app/equipo/planning/${usuario.idUsuario}`)}
            className="flex items-center justify-between p-3 bg-white border border-slate-200 rounded-lg shadow-sm hover:shadow-md transition-shadow cursor-pointer"
        >
            <div className="flex items-center gap-3">
                <div className="w-10 h-10 rounded-full bg-slate-100 flex items-center justify-center text-slate-500 font-bold text-sm">
                    {usuario.nombre.charAt(0)}
                </div>
                <div>
                    <h4 className="text-sm font-semibold text-slate-800">{usuario.nombre}</h4>
                    <p className="text-xs text-slate-500 truncate max-w-[200px]">
                        {checkin ? checkin.entregableTexto : 'Sin reporte aún'}
                    </p>
                </div>
            </div>

            <div className="flex flex-col items-end gap-1">
                <StatusPill status={estado} size="sm" />
                {member.bloqueosActivos > 0 && (
                    <span className="text-[10px] text-red-600 font-bold bg-red-50 px-1.5 py-0.5 rounded">
                        +{member.bloqueosActivos} Bloqueos
                    </span>
                )}
            </div>
        </div>
    );
};

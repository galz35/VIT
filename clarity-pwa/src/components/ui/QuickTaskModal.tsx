import React, { useState } from 'react';
import type { TipoTarea, Prioridad, Esfuerzo } from '../../types/modelos';
import { X } from 'lucide-react';

interface Props {
    isOpen: boolean;
    onClose: () => void;
    onSubmit: (data: {
        titulo: string;
        tipo?: TipoTarea;
        prioridad: Prioridad;
        esfuerzo: Esfuerzo;
        descripcion?: string;
    }) => void;
}

export const QuickTaskModal: React.FC<Props> = ({ isOpen, onClose, onSubmit }) => {
    const [form, setForm] = useState({
        titulo: '',
        tipo: 'Administrativa' as TipoTarea,
        prioridad: 'Media' as Prioridad,
        esfuerzo: 'M' as Esfuerzo,
        descripcion: ''
    });

    if (!isOpen) return null;

    const handleSubmit = (e: React.FormEvent) => {
        e.preventDefault();
        if (!form.titulo.trim()) return;
        onSubmit(form);
        setForm({ titulo: '', tipo: 'Administrativa', prioridad: 'Media', esfuerzo: 'M', descripcion: '' });
        onClose();
    };

    return (
        <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50" onClick={onClose}>
            <div className="bg-white rounded-xl shadow-2xl w-full max-w-md p-6" onClick={(e) => e.stopPropagation()}>
                <div className="flex items-center justify-between mb-4">
                    <h3 className="text-lg font-bold text-slate-800">Nueva Tarea</h3>
                    <button onClick={onClose} className="p-1 hover:bg-slate-100 rounded">
                        <X size={20} className="text-slate-400" />
                    </button>
                </div>

                <form onSubmit={handleSubmit} className="space-y-4">
                    <div>
                        <label className="block text-sm font-medium text-slate-700 mb-1">Título *</label>
                        <input
                            type="text"
                            value={form.titulo}
                            onChange={(e) => setForm({ ...form, titulo: e.target.value })}
                            className="w-full px-3 py-2 border border-slate-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                            placeholder="Ej: Revisar documentos"
                            autoFocus
                            required
                        />
                    </div>

                    <div>
                        <label className="block text-sm font-medium text-slate-700 mb-1">Tipo</label>
                        <select
                            value={form.tipo}
                            onChange={(e) => setForm({ ...form, tipo: e.target.value as TipoTarea })}
                            className="w-full px-3 py-2 border border-slate-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                        >
                            <option value="Administrativa">Administrativa</option>
                            <option value="Logistica">Logística</option>
                            <option value="Estrategica">Estratégica</option>
                            <option value="AMX">AMX</option>
                            <option value="Otros">Otros</option>
                        </select>
                    </div>

                    <div className="grid grid-cols-2 gap-4">
                        <div>
                            <label className="block text-sm font-medium text-slate-700 mb-1">Prioridad</label>
                            <select
                                value={form.prioridad}
                                onChange={(e) => setForm({ ...form, prioridad: e.target.value as Prioridad })}
                                className="w-full px-3 py-2 border border-slate-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                            >
                                <option value="Alta">Alta</option>
                                <option value="Media">Media</option>
                                <option value="Baja">Baja</option>
                            </select>
                        </div>

                        <div>
                            <label className="block text-sm font-medium text-slate-700 mb-1">Esfuerzo</label>
                            <select
                                value={form.esfuerzo}
                                onChange={(e) => setForm({ ...form, esfuerzo: e.target.value as Esfuerzo })}
                                className="w-full px-3 py-2 border border-slate-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                            >
                                <option value="S">S (Pequeño)</option>
                                <option value="M">M (Mediano)</option>
                                <option value="L">L (Grande)</option>
                            </select>
                        </div>
                    </div>

                    <div>
                        <label className="block text-sm font-medium text-slate-700 mb-1">Descripción (opcional)</label>
                        <textarea
                            value={form.descripcion}
                            onChange={(e) => setForm({ ...form, descripcion: e.target.value })}
                            className="w-full px-3 py-2 border border-slate-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                            rows={3}
                            placeholder="Detalles adicionales..."
                        />
                    </div>

                    <div className="flex gap-3 pt-2">
                        <button
                            type="button"
                            onClick={onClose}
                            className="flex-1 px-4 py-2 border border-slate-300 text-slate-700 rounded-lg hover:bg-slate-50 transition-colors"
                        >
                            Cancelar
                        </button>
                        <button
                            type="submit"
                            className="flex-1 px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors font-medium"
                        >
                            Crear Tarea
                        </button>
                    </div>
                </form>
            </div>
        </div>
    );
};

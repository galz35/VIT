import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../core/network/api_client.dart';

/// ============================================
/// TASK DETAIL SHEET - Modal de Detalle de Tarea
/// ============================================
/// Equivalente a TaskDetailModalV2 de React.
/// Permite ver y editar detalles de una tarea.
class TaskDetailSheet extends StatefulWidget {
  final Map<String, dynamic> task;
  final VoidCallback? onUpdated;

  const TaskDetailSheet({
    super.key,
    required this.task,
    this.onUpdated,
  });

  /// Método estático para mostrar el sheet
  static Future<bool?> show(BuildContext context, Map<String, dynamic> task, {VoidCallback? onUpdated}) {
    return showModalBottomSheet<bool>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.9,
        minChildSize: 0.5,
        maxChildSize: 0.95,
        builder: (context, scrollController) => TaskDetailSheet(
          task: task,
          onUpdated: onUpdated,
        ),
      ),
    );
  }

  @override
  State<TaskDetailSheet> createState() => _TaskDetailSheetState();
}

class _TaskDetailSheetState extends State<TaskDetailSheet> {
  late TextEditingController _tituloCtrl;
  late TextEditingController _descripcionCtrl;
  late TextEditingController _comentarioCtrl;
  
  String _estado = 'Pendiente';
  String _prioridad = 'Media';
  int _progreso = 0;
  
  bool _saving = false;
  bool _hasChanges = false;

  @override
  void initState() {
    super.initState();
    _tituloCtrl = TextEditingController(text: widget.task['titulo']?.toString() ?? '');
    _descripcionCtrl = TextEditingController(text: widget.task['descripcion']?.toString() ?? '');
    _comentarioCtrl = TextEditingController();
    
    _estado = widget.task['estado']?.toString() ?? 'Pendiente';
    _prioridad = widget.task['prioridad']?.toString() ?? 'Media';
    _progreso = (widget.task['progreso'] as num?)?.toInt() ?? 0;
  }

  @override
  void dispose() {
    _tituloCtrl.dispose();
    _descripcionCtrl.dispose();
    _comentarioCtrl.dispose();
    super.dispose();
  }

  Future<void> _saveChanges() async {
    final id = widget.task['idTarea'] ?? widget.task['id'];
    if (id == null) return;

    setState(() => _saving = true);

    try {
      final data = <String, dynamic>{
        'titulo': _tituloCtrl.text.trim(),
        'descripcion': _descripcionCtrl.text.trim(),
        'estado': _estado,
        'prioridad': _prioridad,
        'progreso': _progreso,
      };

      // Si hay comentario nuevo, agregarlo
      if (_comentarioCtrl.text.trim().isNotEmpty) {
        data['comentario'] = _comentarioCtrl.text.trim();
      }

      await ApiClient.dio.patch('/tareas/$id', data: data);

      if (mounted) {
        widget.onUpdated?.call();
        Navigator.pop(context, true);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Row(
              children: [
                Icon(Icons.check_circle, color: Colors.white, size: 20),
                SizedBox(width: 8),
                Text('Tarea actualizada correctamente'),
              ],
            ),
            backgroundColor: Color(0xFF10B981),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        setState(() => _saving = false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error al guardar: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  Future<void> _markAsDone() async {
    final id = widget.task['idTarea'] ?? widget.task['id'];
    if (id == null) return;

    setState(() => _saving = true);

    try {
      await ApiClient.dio.patch('/tareas/$id', data: {'estado': 'Hecha', 'progreso': 100});

      if (mounted) {
        widget.onUpdated?.call();
        Navigator.pop(context, true);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Row(
              children: [
                Icon(Icons.celebration, color: Colors.white, size: 20),
                SizedBox(width: 8),
                Text('¡Tarea completada! 🎉'),
              ],
            ),
            backgroundColor: Color(0xFF10B981),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        setState(() => _saving = false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: $e'), backgroundColor: Colors.red),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final proyecto = widget.task['proyecto']?['nombre'] ?? widget.task['nombreProyecto'] ?? widget.task['proyectoNombre'];
    final fechaVenc = widget.task['fechaVencimiento'] ?? widget.task['fechaObjetivo'];
    final isDone = _estado == 'Hecha';

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        children: [
          // Drag Handle
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 12),
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),

          // Header
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: _getStatusColor(_estado).withValues(alpha: 0.1),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              _estado.toUpperCase(),
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: _getStatusColor(_estado),
                              ),
                            ),
                          ),
                          if (proyecto != null) ...[
                            const SizedBox(width: 8),
                            Flexible(
                              child: Text(
                                proyecto.toString(),
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF64748B),
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ],
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Detalle de Tarea',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0F172A),
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close_rounded, color: Color(0xFF64748B)),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),

          const Divider(height: 24),

          // Body - Scrollable Content
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              children: [
                // === TÍTULO ===
                _buildSectionTitle('Título'),
                TextField(
                  controller: _tituloCtrl,
                  onChanged: (_) => setState(() => _hasChanges = true),
                  style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w600),
                  decoration: _inputDecoration('¿Qué hay que hacer?'),
                ),

                const SizedBox(height: 20),

                // === INFORMACIÓN DE PLANIFICACIÓN ===
                _buildSectionTitle('Planificación'),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8FAFC),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: const Color(0xFFE2E8F0)),
                  ),
                  child: Column(
                    children: [
                      _buildInfoRow('Fecha Objetivo', _formatDate(fechaVenc)),
                      const Divider(height: 16),
                      _buildInfoRow('Prioridad', _prioridad, isDropdown: true, options: ['Alta', 'Media', 'Baja'], onChanged: (v) => setState(() { _prioridad = v; _hasChanges = true; })),
                      const Divider(height: 16),
                      _buildInfoRow('Estado', _estado, isDropdown: true, options: ['Pendiente', 'EnCurso', 'Hecha', 'Bloqueada'], onChanged: (v) => setState(() { _estado = v; _hasChanges = true; })),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // === PROGRESO ===
                _buildSectionTitle('Progreso: $_progreso%'),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8FAFC),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: const Color(0xFFE2E8F0)),
                  ),
                  child: Column(
                    children: [
                      Slider(
                        value: _progreso.toDouble(),
                        min: 0,
                        max: 100,
                        divisions: 10,
                        activeColor: const Color(0xFF10B981),
                        onChanged: (v) => setState(() { _progreso = v.toInt(); _hasChanges = true; }),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('0%', style: TextStyle(fontSize: 12, color: Colors.grey[500])),
                          Text('100%', style: TextStyle(fontSize: 12, color: Colors.grey[500])),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // === DESCRIPCIÓN ===
                _buildSectionTitle('Descripción'),
                TextField(
                  controller: _descripcionCtrl,
                  onChanged: (_) => setState(() => _hasChanges = true),
                  maxLines: 4,
                  style: const TextStyle(fontFamily: 'Inter'),
                  decoration: _inputDecoration('Detalles de la tarea...'),
                ),

                const SizedBox(height: 20),

                // === AGREGAR COMENTARIO ===
                _buildSectionTitle('Agregar Comentario'),
                TextField(
                  controller: _comentarioCtrl,
                  onChanged: (_) => setState(() => _hasChanges = true),
                  maxLines: 2,
                  style: const TextStyle(fontFamily: 'Inter'),
                  decoration: _inputDecoration('Escribe un comentario o avance...'),
                ),

                const SizedBox(height: 32),
              ],
            ),
          ),

          // Footer - Action Buttons
          Container(
            padding: EdgeInsets.fromLTRB(20, 12, 20, 12 + MediaQuery.of(context).padding.bottom),
            decoration: BoxDecoration(
              color: const Color(0xFFF8FAFC),
              border: Border(top: BorderSide(color: Colors.grey[200]!)),
            ),
            child: Row(
              children: [
                // Marcar como Hecha
                if (!isDone)
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: _saving ? null : _markAsDone,
                      icon: const Icon(Icons.check_circle_outline, size: 20),
                      label: const Text('Marcar Hecha'),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: const Color(0xFF10B981),
                        side: const BorderSide(color: Color(0xFF10B981)),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                  ),
                if (!isDone) const SizedBox(width: 12),

                // Guardar Cambios
                Expanded(
                  flex: isDone ? 1 : 1,
                  child: ElevatedButton.icon(
                    onPressed: _saving || !_hasChanges ? null : _saveChanges,
                    icon: _saving 
                      ? const SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                      : const Icon(Icons.save_rounded, size: 20),
                    label: Text(_saving ? 'Guardando...' : 'Guardar'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0F172A),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      elevation: 0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        title.toUpperCase(),
        style: const TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w800,
          color: Color(0xFF64748B),
          letterSpacing: 1,
        ),
      ),
    );
  }

  InputDecoration _inputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      hintStyle: const TextStyle(color: Color(0xFF94A3B8)),
      filled: true,
      fillColor: const Color(0xFFF8FAFC),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFF059669), width: 2),
      ),
      contentPadding: const EdgeInsets.all(16),
    );
  }

  Widget _buildInfoRow(String label, String value, {bool isDropdown = false, List<String>? options, Function(String)? onChanged}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: const TextStyle(fontFamily: 'Inter', color: Color(0xFF64748B), fontSize: 14)),
        if (isDropdown && options != null)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: const Color(0xFFE2E8F0)),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: value,
                isDense: true,
                items: options.map((o) => DropdownMenuItem(value: o, child: Text(o, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600)))).toList(),
                onChanged: (v) => onChanged?.call(v!),
              ),
            ),
          )
        else
          Text(value, style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w600, color: Color(0xFF0F172A), fontSize: 14)),
      ],
    );
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'Hecha': return const Color(0xFF10B981);
      case 'EnCurso': return const Color(0xFF3B82F6);
      case 'Bloqueada': return const Color(0xFFEF4444);
      default: return const Color(0xFFF59E0B);
    }
  }

  String _formatDate(dynamic date) {
    if (date == null) return 'Sin fecha';
    final parsed = DateTime.tryParse(date.toString());
    if (parsed == null) return date.toString();
    return DateFormat('d MMM yyyy', 'es').format(parsed);
  }
}

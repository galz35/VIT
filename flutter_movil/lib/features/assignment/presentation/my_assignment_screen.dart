import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/network/api_client.dart';
import '../../../core/network/api_utils.dart';
import '../../common/data/offline_resource_service.dart';
import '../../tasks/presentation/task_detail_sheet.dart';

/// ============================================
/// MI ASIGNACIÓN - Vista de Tareas Asignadas
/// ============================================
/// Diseño Premium con filtros, búsqueda, paginación y acciones rápidas.
class MyAssignmentScreen extends StatefulWidget {
  const MyAssignmentScreen({super.key});

  @override
  State<MyAssignmentScreen> createState() => _MyAssignmentScreenState();
}

class _MyAssignmentScreenState extends State<MyAssignmentScreen> {
  static const _cacheKey = 'assignment_my';
  static const _offline = OfflineResourceService();

  late Future<OfflineListResult> _future;
  String _query = '';
  String _filter = 'Todas';
  
  // Paginación
  static const int _pageSize = 20;
  int _currentPage = 1;

  @override
  void initState() {
    super.initState();
    _future = _fetchAssignments();
  }

  Future<OfflineListResult> _fetchAssignments() {
    return _offline.loadList(
      cacheKey: _cacheKey,
      remote: () async {
        final response = await ApiClient.dio.get('/tareas/mias');
        return unwrapApiList(response.data);
      },
    );
  }

  Future<void> _refresh() async {
    final result = await _fetchAssignments();
    if (mounted) {
      setState(() => _future = Future.value(result));
    }
  }

  List<Map<String, dynamic>> _visible(List<dynamic> items) {
    final asMaps = items.map((e) => (e as Map).cast<String, dynamic>()).toList();

    return asMaps.where((t) {
      final estado = (t['estado'] ?? '').toString();
      final titulo = (t['titulo'] ?? '').toString().toLowerCase();
      final desc = (t['descripcion'] ?? '').toString().toLowerCase();
      final q = _query.trim().toLowerCase();

      final statusOk = _filter == 'Todas' || estado == _filter;
      final queryOk = q.isEmpty || titulo.contains(q) || desc.contains(q);
      return statusOk && queryOk;
    }).toList();
  }

  List<Map<String, dynamic>> _paginate(List<Map<String, dynamic>> items) {
    const start = 0;
    final end = (_currentPage * _pageSize).clamp(0, items.length);
    return items.sublist(start, end);
  }

  Future<void> _markDone(Map<String, dynamic> task) async {
    final id = task['idTarea'] ?? task['id'];
    if (id == null) return;

    try {
      await ApiClient.dio.patch('/tareas/$id', data: {'estado': 'Hecha'});
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Row(
              children: [
                Icon(Icons.check_circle, color: Colors.white, size: 20),
                SizedBox(width: 8),
                Text('¡Tarea completada!'),
              ],
            ),
            backgroundColor: Color(0xFF10B981),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
      setState(() => _future = _fetchAssignments());
    } catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('No se pudo actualizar')),
        );
      }
    }
  }

  void _openTaskDetail(Map<String, dynamic> task) {
    TaskDetailSheet.show(
      context,
      task,
      onUpdated: () => setState(() => _future = _fetchAssignments()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded, color: Color(0xFF64748B)),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Mi Asignación',
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.bold,
            color: Color(0xFF0F172A),
            fontSize: 18,
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.refresh, color: Color(0xFF64748B)),
            onPressed: _refresh,
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(color: const Color(0xFFE2E8F0), height: 1),
        ),
      ),
      body: FutureBuilder<OfflineListResult>(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return _buildSkeleton();
          }

          final data = snapshot.data;
          if (data == null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(CupertinoIcons.wifi_slash, size: 48, color: Colors.grey[400]),
                  const SizedBox(height: 16),
                  const Text('No se pudieron cargar las asignaciones'),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () => setState(() => _future = _fetchAssignments()),
                    child: const Text('Reintentar'),
                  ),
                ],
              ),
            );
          }

          final allTasks = _visible(data.items);
          final tasks = _paginate(allTasks);
          final hasMore = allTasks.length > tasks.length;

          // Contadores para KPIs
          final total = data.items.length;
          final pendientes = data.items.where((t) => (t as Map)['estado'] == 'Pendiente').length;
          final hechas = data.items.where((t) => (t as Map)['estado'] == 'Hecha').length;

          return Column(
            children: [
              // Banner offline
              if (data.fromCache)
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  color: const Color(0xFFFFF7ED),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.cloud_off, size: 16, color: Color(0xFFF97316)),
                      SizedBox(width: 8),
                      Text(
                        'Modo Offline - Datos cacheados',
                        style: TextStyle(fontSize: 12, color: Color(0xFF9A3412), fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),

              // Header con KPIs
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    // KPIs Row
                    Row(
                      children: [
                        _buildKpiCard('Total', total.toString(), const Color(0xFF6366F1)),
                        const SizedBox(width: 10),
                        _buildKpiCard('Pendientes', pendientes.toString(), const Color(0xFFF59E0B)),
                        const SizedBox(width: 10),
                        _buildKpiCard('Hechas', hechas.toString(), const Color(0xFF10B981)),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Search
                    TextField(
                      onChanged: (v) => setState(() {
                        _query = v;
                        _currentPage = 1; // Reset pagination on search
                      }),
                      style: const TextStyle(fontFamily: 'Inter'),
                      decoration: InputDecoration(
                        hintText: 'Buscar en mis asignaciones...',
                        hintStyle: const TextStyle(color: Color(0xFF94A3B8)),
                        prefixIcon: const Icon(CupertinoIcons.search, color: Color(0xFF94A3B8), size: 20),
                        filled: true,
                        fillColor: const Color(0xFFF1F5F9),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      ),
                    ),
                    const SizedBox(height: 12),

                    // Filter Chips
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          _buildFilterChip('Todas'),
                          const SizedBox(width: 8),
                          _buildFilterChip('Pendiente'),
                          const SizedBox(width: 8),
                          _buildFilterChip('EnCurso'),
                          const SizedBox(width: 8),
                          _buildFilterChip('Hecha'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 1),

              // Lista de tareas
              Expanded(
                child: tasks.isEmpty
                    ? _buildEmptyState()
                    : RefreshIndicator(
                        onRefresh: _refresh,
                        color: const Color(0xFF059669),
                        child: ListView.builder(
                          padding: const EdgeInsets.all(16),
                          itemCount: tasks.length + (hasMore ? 1 : 0),
                          itemBuilder: (_, i) {
                            if (i == tasks.length) {
                              // Load More button
                              return Center(
                                child: TextButton.icon(
                                  onPressed: () => setState(() => _currentPage++),
                                  icon: const Icon(CupertinoIcons.arrow_down_circle),
                                  label: const Text('Cargar más'),
                                ),
                              );
                            }
                            return _buildTaskCard(tasks[i]);
                          },
                        ),
                      ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildKpiCard(String label, String value, Color color) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.08),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: color.withValues(alpha: 0.2)),
        ),
        child: Column(
          children: [
            Text(
              value,
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 22,
                fontWeight: FontWeight.w800,
                color: color,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              label,
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: color.withValues(alpha: 0.8),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterChip(String label) {
    final isSelected = _filter == label;
    return InkWell(
      onTap: () => setState(() {
        _filter = label;
        _currentPage = 1;
      }),
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF0F172A) : const Color(0xFFF1F5F9),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? const Color(0xFF0F172A) : const Color(0xFFE2E8F0),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 13,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
            color: isSelected ? Colors.white : const Color(0xFF64748B),
          ),
        ),
      ),
    );
  }

  Widget _buildTaskCard(Map<String, dynamic> task) {
    final titulo = (task['titulo'] ?? 'Sin título').toString();
    final desc = (task['descripcion'] ?? '').toString();
    final estado = (task['estado'] ?? 'Pendiente').toString();
    final prioridad = (task['prioridad'] ?? 'Media').toString();
    final isDone = estado == 'Hecha';

    final statusColor = _getStatusColor(estado);
    final priorityColor = _getPriorityColor(prioridad);

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: isDone ? const Color(0xFFF0FDF4) : Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF0F172A).withValues(alpha: 0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
        border: Border.all(
          color: isDone ? const Color(0xFFBBF7D0) : const Color(0xFFE2E8F0),
        ),
      ),
      child: InkWell(
        onTap: () => _openTaskDetail(task),
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              // Checkbox
              InkWell(
                onTap: isDone ? null : () => _markDone(task),
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: isDone ? const Color(0xFF10B981) : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: isDone ? const Color(0xFF10B981) : const Color(0xFFCBD5E1),
                      width: 2,
                    ),
                  ),
                  child: isDone
                      ? const Icon(Icons.check, size: 16, color: Colors.white)
                      : null,
                ),
              ),
              const SizedBox(width: 16),

              // Content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            titulo,
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: isDone ? const Color(0xFF059669) : const Color(0xFF1E293B),
                              decoration: isDone ? TextDecoration.lineThrough : null,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 8),
                        // Priority badge
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            color: priorityColor.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            prioridad,
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                              color: priorityColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (desc.isNotEmpty) ...[
                      const SizedBox(height: 4),
                      Text(
                        desc,
                        style: const TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 12,
                          color: Color(0xFF64748B),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: statusColor.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            estado,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: statusColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 8),
              const Icon(CupertinoIcons.chevron_right, size: 16, color: Color(0xFFCBD5E1)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            decoration: const BoxDecoration(
              color: Color(0xFFECFDF5),
              shape: BoxShape.circle,
            ),
            child: const Icon(CupertinoIcons.check_mark, size: 48, color: Color(0xFF059669)),
          ),
          const SizedBox(height: 24),
          const Text(
            '¡Todo al día!',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF0F172A),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'No hay tareas para el filtro "$_filter".',
            style: const TextStyle(
              fontFamily: 'Inter',
              fontSize: 15,
              color: Color(0xFF64748B),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkeleton() {
    Widget box(double w, double h) => Container(
      width: w, height: h,
      decoration: BoxDecoration(color: const Color(0xFFF1F5F9), borderRadius: BorderRadius.circular(8)),
    );

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // KPIs skeleton
        Row(
          children: [
            Expanded(child: box(double.infinity, 60)),
            const SizedBox(width: 10),
            Expanded(child: box(double.infinity, 60)),
            const SizedBox(width: 10),
            Expanded(child: box(double.infinity, 60)),
          ],
        ),
        const SizedBox(height: 16),
        box(double.infinity, 48), // Search
        const SizedBox(height: 12),
        box(200, 32), // Filters
        const SizedBox(height: 24),
        // Task cards skeleton
        for (int i = 0; i < 5; i++) ...[
          Container(
            height: 100,
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: const Color(0xFFF1F5F9)),
            ),
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                box(24, 24),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      box(180, 16),
                      const SizedBox(height: 8),
                      box(120, 12),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
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

  Color _getPriorityColor(String priority) {
    switch (priority) {
      case 'Alta': return const Color(0xFFEF4444);
      case 'Media': return const Color(0xFFF59E0B);
      case 'Baja': return const Color(0xFF10B981);
      default: return const Color(0xFF64748B);
    }
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

import '../domain/task_item.dart';
import 'task_controller.dart';
import '../../common/presentation/user_search_sheet.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  Future<void> _openCreateTask(BuildContext context) async {
    // Navigate to create task screen or show sheet
    // Implementation pending or existing elsewhere
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<TaskController>();
    final items = controller.visibleTasks;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Momentus Tasks'),
        actions: [
          IconButton(
            onPressed: () => controller.loadTasks(),
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _openCreateTask(context),
        icon: const Icon(Icons.add),
        label: const Text('Nueva tarea'),
      ),
      body: controller.loading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                  child: Column(
                    children: [
                      _Kpis(
                        pending: controller.pendingCount,
                        unsynced: controller.unsyncedCount,
                        total: controller.tasks.length,
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        onChanged: controller.setQuery,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          hintText: 'Buscar por título...',
                          filled: true,
                          fillColor: const Color(0xFFF8FAFC),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                      const SizedBox(height: 12),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            _FilterChip(
                              label: 'Todas',
                              selected: controller.filter == TaskFilter.all,
                              onTap: () => controller.setFilter(TaskFilter.all),
                            ),
                            _FilterChip(
                              label: 'Pendientes',
                              selected: controller.filter == TaskFilter.pending,
                              onTap: () =>
                                  controller.setFilter(TaskFilter.pending),
                            ),
                            _FilterChip(
                              label: 'Completadas',
                              selected:
                                  controller.filter == TaskFilter.completed,
                              onTap: () =>
                                  controller.setFilter(TaskFilter.completed),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: items.isEmpty
                      ? const Center(
                          child: Text('No hay resultados para este filtro.'))
                      : ListView.separated(
                          padding: const EdgeInsets.fromLTRB(16, 4, 16, 100),
                          itemCount: items.length,
                          separatorBuilder: (_, __) =>
                              const SizedBox(height: 12),
                          itemBuilder: (_, index) {
                            final task = items[index];
                            return _TaskCard(
                              task: task,
                              onComplete: task.estado == 'Hecha' ||
                                      task.estado == 'completada'
                                  ? null
                                  : () => controller.markDone(task),
                              onAssign: () async {
                                final user =
                                    await UserSearchSheet.show(context);
                                if (user != null) {
                                  // TODO: Implement assignment in controller if not already present
                                  // controller.assignTask(task, user);
                                  if (context.mounted) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(
                                              'Asignado a ${user.nombreCompleto}')),
                                    );
                                  }
                                }
                              },
                            );
                          },
                        ),
                ),
              ],
            ),
    );
  }
}

class _Kpis extends StatelessWidget {
  final int pending;
  final int unsynced;
  final int total;

  const _Kpis(
      {required this.pending, required this.unsynced, required this.total});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: _KpiCard(
                label: 'Pendientes',
                value: '$pending',
                color: const Color(0xFFF59E0B))),
        const SizedBox(width: 12),
        Expanded(
            child: _KpiCard(
                label: 'Total',
                value: '$total',
                color: const Color(0xFF64748B))),
      ],
    );
  }
}

class _KpiCard extends StatelessWidget {
  const _KpiCard(
      {required this.label, required this.value, required this.color});

  final String label;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE2E8F0)),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF0F172A).withValues(alpha: 0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xFF64748B),
                  fontWeight: FontWeight.w600)),
          const SizedBox(height: 4),
          Text(value,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: color,
                  fontFamily: 'Inter')),
        ],
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  const _FilterChip({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: ActionChip(
        label: Text(label),
        onPressed: onTap,
        backgroundColor: selected ? const Color(0xFF0F172A) : Colors.white,
        labelStyle: TextStyle(
          color: selected ? Colors.white : const Color(0xFF64748B),
          fontWeight: FontWeight.w600,
          fontFamily: 'Inter',
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
                color:
                    selected ? Colors.transparent : const Color(0xFFE2E8F0))),
      ),
    );
  }
}

class _TaskCard extends StatelessWidget {
  const _TaskCard(
      {required this.task, required this.onComplete, this.onAssign});

  final TaskItem task;
  final VoidCallback? onComplete;
  final VoidCallback? onAssign;

  @override
  Widget build(BuildContext context) {
    // Status Logic
    final isDone = task.estado == 'Hecha' ||
        task.estado == 'completada' ||
        task.estado == 'Terminado';
    final isBlocked = task.estado == 'Bloqueada';

    Color statusColor = const Color(0xFF64748B);
    Color statusBg = const Color(0xFFF1F5F9);

    if (isDone) {
      statusColor = const Color(0xFF10B981);
      statusBg = const Color(0xFFECFDF5);
    } else if (isBlocked) {
      statusColor = const Color(0xFFEF4444);
      statusBg = const Color(0xFFFEF2F2);
    } else if (task.estado == 'En Curso' || task.estado == 'EnCurso') {
      statusColor = const Color(0xFF3B82F6);
      statusBg = const Color(0xFFEFF6FF);
    }

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            color: isDone
                ? const Color(0xFF10B981).withValues(alpha: 0.2)
                : const Color(0xFFE2E8F0)),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF0F172A).withValues(alpha: 0.04),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(20),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top Row: ID, Priority, Status
                Row(
                  children: [
                    Text(
                      '#${task.id ?? '---'}',
                      style: const TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 11,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF94A3B8),
                        letterSpacing: 0.5,
                      ),
                    ),
                    const SizedBox(width: 8),
                    // Priority Badge
                    _PriorityBadge(priority: task.prioridad),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 2),
                      decoration: BoxDecoration(
                        color: statusBg,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        task.estado.toUpperCase(),
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                          color: statusColor,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                Text(task.titulo,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF1E293B),
                      height: 1.3,
                      decoration: isDone ? TextDecoration.lineThrough : null,
                    )),

                if (task.proyectoNombre != null &&
                    task.proyectoNombre!.isNotEmpty) ...[
                  const SizedBox(height: 4),
                  Text(
                    task.proyectoNombre!.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF64748B),
                      fontFamily: 'Inter',
                    ),
                  ),
                ],

                const SizedBox(height: 16),

                // Footer: Assignee, Date, Action
                Row(
                  children: [
                    // Assignee
                    InkWell(
                      onTap: onAssign,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: const EdgeInsets.only(right: 8),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 12,
                              backgroundColor: const Color(0xFFF1F5F9),
                              child: Text(
                                (task.responsableNombre ?? 'U')[0]
                                    .toUpperCase(),
                                style: const TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF475569)),
                              ),
                            ),
                            const SizedBox(width: 6),
                            Text(
                              task.responsableNombre?.split(' ')[0] ??
                                  'Asignar',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: task.responsableNombre != null
                                    ? const Color(0xFF334155)
                                    : const Color(0xFF94A3B8),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const Spacer(),

                    if (task.fechaObjetivo != null)
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF8FAFC),
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: const Color(0xFFE2E8F0)),
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.calendar_today,
                                size: 10, color: Color(0xFF64748B)),
                            const SizedBox(width: 4),
                            Text(
                              DateFormat('d MMM').format(task.fechaObjetivo!),
                              style: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF64748B),
                              ),
                            ),
                          ],
                        ),
                      ),

                    if (onComplete != null) ...[
                      const SizedBox(width: 8),
                      SizedBox(
                        width: 28,
                        height: 28,
                        child: IconButton(
                          onPressed: onComplete,
                          padding: EdgeInsets.zero,
                          icon: const Icon(Icons.radio_button_unchecked,
                              color: Color(0xFF94A3B8)),
                          // Or use check_circle for done
                        ),
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _PriorityBadge extends StatelessWidget {
  final String priority;
  const _PriorityBadge({required this.priority});

  @override
  Widget build(BuildContext context) {
    Color color;
    switch (priority.toLowerCase()) {
      case 'alta':
        color = const Color(0xFFDC2626);
        break;
      case 'media':
        color = const Color(0xFFF59E0B);
        break;
      case 'baja':
        color = const Color(0xFF10B981);
        break;
      default:
        color = const Color(0xFF94A3B8);
    }

    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}

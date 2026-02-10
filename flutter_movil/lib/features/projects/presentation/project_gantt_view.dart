import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../core/theme/app_theme.dart';

class ProjectGanttView extends StatelessWidget {
  final List<dynamic> tasks;

  const ProjectGanttView({super.key, required this.tasks});

  @override
  Widget build(BuildContext context) {
    if (tasks.isEmpty) {
      return const Center(
          child: Text('No hay tareas para mostrar en el Gantt'));
    }

    // 1. Determinar rango de fechas
    DateTime minDate = DateTime.now();
    DateTime maxDate = DateTime.now().add(const Duration(days: 7));

    final validTasks = tasks.where((t) {
      final start =
          _parseDate(t['fechaInicioPlanificada'] ?? t['fechaCreacion']);
      final end = _parseDate(t['fechaFin'] ?? t['fechaObjetivo']);
      return start != null || end != null;
    }).toList();

    if (validTasks.isNotEmpty) {
      final starts = validTasks
          .map((t) =>
              _parseDate(t['fechaInicioPlanificada'] ?? t['fechaCreacion']))
          .whereType<DateTime>()
          .toList();
      if (starts.isNotEmpty) {
        minDate = starts.reduce((a, b) => a.isBefore(b) ? a : b);
      }

      final ends = validTasks
          .map((t) => _parseDate(t['fechaFin'] ?? t['fechaObjetivo']))
          .whereType<DateTime>()
          .toList();
      if (ends.isNotEmpty) {
        maxDate = ends.reduce((a, b) => a.isAfter(b) ? a : b);
      }
    }

    // Padding de fechas
    minDate = minDate.subtract(const Duration(days: 2));
    maxDate = maxDate.add(const Duration(days: 5));

    const dayWidth = 50.0;
    final totalDays = maxDate.difference(minDate).inDays + 1;
    final chartWidth = totalDays * dayWidth;

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header de Fechas
                Container(
                  height: 40,
                  width: chartWidth,
                  color: Colors.grey[100],
                  child: Row(
                    children: List.generate(totalDays, (index) {
                      final date = minDate.add(Duration(days: index));
                      final isWeekend = date.weekday == 6 || date.weekday == 7;
                      return Container(
                        width: dayWidth,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border(
                              right: BorderSide(color: Colors.grey[300]!)),
                          color:
                              isWeekend ? Colors.grey[200] : Colors.transparent,
                        ),
                        child: Text(
                          DateFormat('dd\nMMM').format(date),
                          style: TextStyle(
                            fontSize: 10,
                            color:
                                isWeekend ? Colors.grey[500] : Colors.grey[700],
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      );
                    }),
                  ),
                ),

                // Filas de Tareas
                ...validTasks.map((task) {
                  final start = _parseDate(task['fechaInicioPlanificada'] ??
                          task['fechaCreacion']) ??
                      minDate;
                  final end =
                      _parseDate(task['fechaFin'] ?? task['fechaObjetivo']) ??
                          start.add(const Duration(days: 1));

                  // Clamping
                  final effectiveStart =
                      start.isBefore(minDate) ? minDate : start;
                  final effectiveEnd = end.isAfter(maxDate) ? maxDate : end;

                  final duration =
                      effectiveEnd.difference(effectiveStart).inDays;
                  final offsetDays = effectiveStart.difference(minDate).inDays;

                  final width = (duration <= 0 ? 1 : duration) * dayWidth;
                  final left = offsetDays * dayWidth;

                  final estado = task['estado']?.toString() ?? 'Pendiente';
                  final color = _getStatusColor(estado);

                  return Container(
                    height: 50,
                    width: chartWidth,
                    decoration: BoxDecoration(
                      border:
                          Border(bottom: BorderSide(color: Colors.grey[200]!)),
                    ),
                    child: Stack(
                      children: [
                        // Grid lines vertical
                        Row(
                          children: List.generate(totalDays, (index) {
                            final date = minDate.add(Duration(days: index));
                            final isWeekend =
                                date.weekday == 6 || date.weekday == 7;
                            return Container(
                              width: dayWidth,
                              decoration: BoxDecoration(
                                border: Border(
                                    right:
                                        BorderSide(color: Colors.grey[200]!)),
                                color: isWeekend ? Colors.grey[50] : null,
                              ),
                            );
                          }),
                        ),

                        // Barra de Tarea
                        Positioned(
                          left: left,
                          top: 10,
                          child: Tooltip(
                            message:
                                '${task['titulo']} (${DateFormat('dd/MM').format(start)} - ${DateFormat('dd/MM').format(end)})',
                            child: Container(
                              width: width,
                              height: 30,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                color: color.withValues(alpha: 0.8),
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: color, width: 1),
                              ),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                task['titulo'] ?? 'Sin título',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }

  DateTime? _parseDate(String? dateStr) {
    if (dateStr == null) return null;
    return DateTime.tryParse(dateStr);
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'Hecha':
        return MomentusTheme.success;
      case 'En Curso':
        return MomentusTheme.primary;
      case 'Bloqueada':
        return MomentusTheme.error;
      default:
        return MomentusTheme.warning;
    }
  }
}

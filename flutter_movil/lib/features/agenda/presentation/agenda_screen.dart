import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'package:flutter/services.dart';

import '../../agenda/domain/agenda_models.dart';
import 'agenda_controller.dart';
import '../../home/presentation/home_shell.dart';
import '../../auth/presentation/auth_controller.dart';
import '../../tasks/presentation/quick_create_task_sheet.dart';
import '../../../core/theme/app_theme.dart'; // Import AppTheme

class AgendaScreen extends StatelessWidget {
  const AgendaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF8FAFC),
      appBar: MomentusAppBar(
        title: 'Mi Agenda',
        subtitle: 'Plan de trabajo diario',
      ),
      body: AgendaTab(),
    );
  }
}

class AgendaTab extends StatelessWidget {
  const AgendaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AgendaController()..loadAgenda(),
      child: const _AgendaTabContent(),
    );
  }
}

class _AgendaTabContent extends StatelessWidget {
  const _AgendaTabContent();

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<AgendaController>();
    final authController = context.read<AuthController>();

    return Column(
      children: [
        // --- Navegación de Fecha ---
        _DateNavigator(controller: controller),

        // --- Cuerpo ---
        Expanded(
          child: controller.loading
              ? const Center(
                  child:
                      CircularProgressIndicator(color: MomentusTheme.primary))
              : controller.error != null
                  ? _ErrorState(
                      error: controller.error!,
                      onRetry: () => controller.loadAgenda())
                  : (controller.data == null)
                      ? const Center(child: Text("No hay datos disponibles"))
                      : _buildContent(context, controller, authController),
        ),
      ],
    );
  }

  Widget _buildContent(BuildContext context, AgendaController controller,
      AuthController authController) {
    // Si ya hay checkin, mostramos vista de ejecución (Checklist)
    if (controller.data?.checkinHoy != null) {
      return _ExecutionView(
        checkin: controller.data!.checkinHoy!,
        controller: controller,
      );
    }

    // Si no hay checkin, mostramos vista de planificación
    return _PlanningView(
      sugeridas: controller.data!.tareasSugeridas,
      backlog: controller.data!.backlog,
      controller: controller,
      userId: authController.user?.id ?? 0,
    );
  }
}

class _DateNavigator extends StatelessWidget {
  final AgendaController controller;
  const _DateNavigator({required this.controller});

  Future<void> _selectDate(BuildContext context) async {
    HapticFeedback.lightImpact();
    final picked = await showDatePicker(
      context: context,
      initialDate: controller.currentDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: MomentusTheme.primary,
              onPrimary: Colors.white,
              onSurface: Color(0xFF0F172A),
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null) controller.loadAgenda(picked);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Color(0xFFF1F5F9))),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: const Icon(Icons.chevron_left_rounded,
                color: Color(0xFF64748B)),
            onPressed: controller.loading
                ? null
                : () {
                    HapticFeedback.selectionClick();
                    controller.prevDay();
                  },
          ),
          GestureDetector(
            onTap: () => _selectDate(context),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: const Color(0xFFF0FDF4),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFFBBF7D0)),
              ),
              child: Row(
                children: [
                  const Icon(Icons.calendar_today_rounded,
                      size: 16, color: Color(0xFF16A34A)),
                  const SizedBox(width: 8),
                  Text(
                    DateFormat('EEEE, d MMM', 'es_ES')
                        .format(controller.currentDate)
                        .toUpperCase(),
                    style: const TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Color(0xFF15803D),
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.chevron_right_rounded,
                color: Color(0xFF64748B)),
            onPressed: controller.loading
                ? null
                : () {
                    HapticFeedback.selectionClick();
                    controller.nextDay();
                  },
          ),
        ],
      ),
    );
  }
}

// ---------------- VIEWS ----------------

/// VISTA DE PLANIFICACIÓN (Planificación del día)
/// ===============================================
/// Aquí es donde el usuario selecciona qué hará hoy.
/// Se muestran tareas atrasadas y sugeridas.
class _PlanningView extends StatelessWidget {
  final List<Tarea> sugeridas;
  final List<Tarea> backlog;
  final AgendaController controller;
  final int userId;

  const _PlanningView({
    required this.sugeridas,
    required this.backlog,
    required this.controller,
    required this.userId,
  });

  @override
  Widget build(BuildContext context) {
    // 1. Filtrar tareas: Atrasadas vs Hoy/Futuras
    final now = DateTime.now();
    final todayStart = DateTime(now.year, now.month, now.day);

    final allTasks = [...sugeridas, ...backlog];

    // Función auxiliar para saber si es atrasada
    bool isOverdue(Tarea t) {
      if (t.fechaObjetivo == null) return false;
      final date = DateTime.tryParse(t.fechaObjetivo!);
      if (date == null) return false;
      // Si la fecha es anterior a hoy (00:00:00)
      return date.isBefore(todayStart);
    }

    final overdueTasks = allTasks.where((t) => isOverdue(t)).toList();
    final currentTasks = allTasks.where((t) => !isOverdue(t)).toList();

    return Scaffold(
      backgroundColor: Colors.transparent,
      // Botón flotante para la acción principal (Comenzar Día)
      floatingActionButton: FloatingActionButton.extended(
        onPressed: controller.startDayLoading
            ? null
            : () => controller.saveCheckin(userId),
        label: controller.startDayLoading
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                    color: Colors.white, strokeWidth: 2))
            : const Text('Confirmar Plan',
                style: TextStyle(fontWeight: FontWeight.bold)),
        icon: controller.startDayLoading ? null : const Icon(Icons.check),
        backgroundColor: MomentusTheme.primary,
        elevation: 4,
      ),
      body: SingleChildScrollView(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SECCIÓN: ATAJOS RÁPIDOS
            // Botón tipo "Chip" para agregar tarea rápido (como pide el usuario)
            Align(
              alignment: Alignment.centerRight,
              child: ActionChip(
                avatar: const Icon(Icons.add,
                    size: 16, color: MomentusTheme.primary),
                label: const Text('Agregar tarea rápida',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: MomentusTheme.primary)),
                backgroundColor: const Color(0xFFF0FDF4),
                side: const BorderSide(color: Color(0xFFBBF7D0)),
                onPressed: () {
                  // Abre el popup (Sheet) para crear tarea
                  QuickCreateTaskSheet.show(context, onCreated: () {
                    controller.loadAgenda();
                  });
                },
              ),
            ),

            const SizedBox(height: 10),

            // SECCIÓN: TAREAS ATRASADAS (Si existen)
            // Estilo "Alerta" para llamar la atención sin ser agresivo
            if (overdueTasks.isNotEmpty) ...[
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFFEF2F2), // Fondo rojo muy suave
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xFFFECACA)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.history_toggle_off,
                            color: Color(0xFFEF4444), size: 20),
                        SizedBox(width: 8),
                        Text('Tareas Atrasadas',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF991B1B))),
                      ],
                    ),
                    const SizedBox(height: 12),
                    // Lista de tareas atrasadas
                    ...overdueTasks.map((t) => _CheckboxTaskTile(
                          task: t,
                          isSelected: controller.selectedOtherTaskIds
                                  .contains(t.idTarea) ||
                              controller.selectedMainTaskId == t.idTarea,
                          isOverdue: true,
                          onTap: () => {
                            // Lógica simple: si tocas una atrasada, la marcas como soporte o principal
                            // Aquí usamos toggleOtherTask por defecto para soporte
                            controller.toggleOtherTask(t.idTarea)
                          },
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 24),
            ],

            // SECCIÓN: FOCO PRINCIPAL (Estilo Libreta / Notebook)
            // Aquí seleccionamos LA cosa más importante
            const Text(
              'FOCO DEL DÍA',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 12,
                fontWeight: FontWeight.w900,
                color: Color(0xFF64748B),
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withValues(alpha: 0.03),
                        blurRadius: 10,
                        offset: const Offset(0, 4))
                  ]),
              child: Column(
                children: [
                  if (currentTasks.isEmpty && overdueTasks.isEmpty)
                    const Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Center(
                          child: Text(
                              'No hay sugerencias para hoy.\n¡Agrega una tarea nueva!',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.grey))),
                    )
                  else if (currentTasks.isNotEmpty)
                    ...currentTasks.map((t) => _RadioTaskTile(
                          task: t,
                          isSelected:
                              controller.selectedMainTaskId == t.idTarea,
                          onTap: () => controller.toggleMainTask(t.idTarea),
                        )),
                ],
              ),
            ),

            const SizedBox(height: 32),

            // SECCIÓN: OTRAS TAREAS (Soporte)
            // Tareas secundarias seleccionadas con Checkbox
            if (currentTasks
                .any((t) => t.idTarea != controller.selectedMainTaskId)) ...[
              const Text(
                'SOPORTE Y SECUNDARIAS',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 12,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF64748B),
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 8),
              // Filtramos la que ya está seleccionada como principal para no repetirla
              ...currentTasks
                  .where((t) => t.idTarea != controller.selectedMainTaskId)
                  .map((t) => _CheckboxTaskTile(
                        task: t,
                        isSelected:
                            controller.selectedOtherTaskIds.contains(t.idTarea),
                        onTap: () => controller.toggleOtherTask(t.idTarea),
                      )),
            ],
          ],
        ),
      ),
    );
  }
}

class _ExecutionView extends StatelessWidget {
  final Checkin checkin;
  final AgendaController controller;

  const _ExecutionView({required this.checkin, required this.controller});

  @override
  Widget build(BuildContext context) {
    final tareas = checkin.tareas;
    // Ordenar: Entrego primero, luego Avanzo
    final sortedTasks = List<CheckinTarea>.from(tareas)
      ..sort((a, b) {
        if (a.tipo == 'Entrego') return -1;
        if (b.tipo == 'Entrego') return 1;
        return 0;
      });

    final mainTask = sortedTasks.where((t) => t.tipo == 'Entrego').firstOrNull;
    final otherTasks = sortedTasks.where((t) => t.tipo != 'Entrego').toList();

    return RefreshIndicator(
      onRefresh: () async => await controller.loadAgenda(),
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'TU PLAN DE HOY',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 12,
                fontWeight: FontWeight.w900,
                color: Color(0xFF64748B),
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 20),

            if (mainTask != null && mainTask.tarea != null) ...[
              const _SectionLabel('OBJETIVO PRINCIPAL',
                  color: Color(0xFFF43F5E)),
              _ExecutionTaskCard(
                task: mainTask.tarea!,
                isMain: true,
                onToggle: () => controller.completeTask(mainTask.idTarea),
              ),
              const SizedBox(height: 32),
            ],

            if (otherTasks.isNotEmpty) ...[
              const _SectionLabel('TAREAS DE SOPORTE'),
              ...otherTasks.where((t) => t.tarea != null).map((t) => Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: _ExecutionTaskCard(
                      task: t.tarea!,
                      isMain: false,
                      onToggle: () => controller.completeTask(t.idTarea),
                    ),
                  )),
            ],

            if (tareas.isEmpty)
              const _EmptySection('Día libre o sin tareas planificadas.'),

            const SizedBox(height: 40),

            // Botón para agregar emergencias (Extras) podría ir aquí
          ],
        ),
      ),
    );
  }
}

// ---------------- WIDGETS ----------------

class _RadioTaskTile extends StatelessWidget {
  final Tarea task;
  final bool isSelected;
  final VoidCallback onTap;

  const _RadioTaskTile({
    required this.task,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // GestureDetector: Detecta toques/clics en su hijo
    return GestureDetector(
      onTap: () {
        HapticFeedback.selectionClick(); // Feedback táctil suave
        onTap();
      },
      // Container: Caja decorada (fondo, bordes, padding)
      child: Container(
        margin: const EdgeInsets.only(bottom: 8), // Reducimos margen
        padding: const EdgeInsets.all(12), // Más compacto
        decoration: BoxDecoration(
          // Cambiamos color si está seleccionado
          color: isSelected ? const Color(0xFFEFF6FF) : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color:
                isSelected ? const Color(0xFF3B82F6) : const Color(0xFFF1F5F9),
            width: isSelected ? 1.5 : 1,
          ),
        ),
        child: Row(
          children: [
            Icon(
              isSelected
                  ? Icons.radio_button_checked_rounded
                  : Icons.radio_button_unchecked_rounded,
              color: isSelected
                  ? const Color(0xFF3B82F6)
                  : const Color(0xFFCBD5E1),
              size: 22, // Icono un poco más pequeño
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    task.titulo,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: 14, // Fuente más pequeña para que quepa más
                      color: isSelected
                          ? const Color(0xFF1E293B)
                          : const Color(0xFF475569),
                    ),
                  ),
                  if (task.proyectoNombre != null)
                    Text(
                      task.proyectoNombre!,
                      style: const TextStyle(
                        fontSize: 11,
                        color: Color(0xFF94A3B8),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CheckboxTaskTile extends StatelessWidget {
  final Tarea task;
  final bool isSelected;
  final bool isOverdue; // Parametro nuevo para indicar si está atrasada
  final VoidCallback onTap;

  const _CheckboxTaskTile({
    required this.task,
    required this.isSelected,
    this.isOverdue = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // Definimos colores según si es atrasada o seleccionada
    final Color borderColor = isOverdue
        ? const Color(0xFFFECACA) // Rojo suave
        : isSelected
            ? const Color(0xFF22C55E)
            : const Color(0xFFF1F5F9);

    final Color bgColor = isOverdue
        ? Colors
            .white // Mantener blanco en atrasadas dentro del contenedor rojo
        : isSelected
            ? const Color(0xFFF0FDF4)
            : Colors.white;

    final Color checkColor = isOverdue
        ? const Color(0xFFEF4444)
        : isSelected
            ? const Color(0xFF22C55E)
            : const Color(0xFFCBD5E1);

    return GestureDetector(
      onTap: () {
        HapticFeedback.selectionClick();
        onTap();
      },
      child: Container(
        margin: const EdgeInsets.only(
            bottom: 8), // Reducido margen para "List look"
        padding: const EdgeInsets.symmetric(
            horizontal: 12, vertical: 12), // Más compacto
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(
              12), // Bordes menos redondeados para look libreta
          border: Border.all(
            color: borderColor,
            width: isSelected || isOverdue ? 1.5 : 1,
          ),
        ),
        child: Row(
          children: [
            Icon(
              isSelected
                  ? Icons.check_box_rounded
                  : Icons.check_box_outline_blank_rounded,
              color: checkColor,
              size: 22,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Si es atrasada, mostramos la fecha
                  if (isOverdue && task.fechaObjetivo != null)
                    Text(
                      'Vencía: ${task.fechaObjetivo!.split('T')[0]}',
                      style: const TextStyle(
                          fontSize: 10,
                          color: Color(0xFFDC2626),
                          fontWeight: FontWeight.bold),
                    ),
                  Text(
                    task.titulo,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight:
                          isSelected ? FontWeight.w600 : FontWeight.w500,
                      fontSize: 14,
                      color:
                          const Color(0xFF334155), // Texto un poco más oscuro
                      decoration: isSelected && !isOverdue
                          ? TextDecoration.lineThrough
                          : null, // Tachar si seleccionada (opcional)
                    ),
                  ),
                  if (task.proyectoNombre != null)
                    Text(
                      task.proyectoNombre!,
                      style: const TextStyle(
                        fontSize: 11,
                        color: Color(0xFF94A3B8),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ExecutionTaskCard extends StatelessWidget {
  final Tarea task;
  final bool isMain;
  final VoidCallback onToggle;

  const _ExecutionTaskCard({
    required this.task,
    required this.isMain,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    final isCompleted = task.estado == 'Hecha';

    return GestureDetector(
      onTap: () {
        HapticFeedback.mediumImpact();
        onToggle();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: isCompleted
              ? const Color(0xFFF1F5F9) // Disabled look
              : (isMain ? const Color(0xFFFFF1F2) : Colors.white),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isCompleted
                ? Colors.transparent
                : (isMain ? const Color(0xFFFDA4AF) : const Color(0xFFE2E8F0)),
          ),
          boxShadow: isCompleted
              ? []
              : [
                  BoxShadow(
                    color: isMain
                        ? const Color(0xFFF43F5E).withValues(alpha: 0.1)
                        : Colors.black.withValues(alpha: 0.04),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ],
        ),
        child: Row(
          children: [
            // Checkbox personalizado con animación simple
            Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                color:
                    isCompleted ? const Color(0xFF10B981) : Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(
                  color: isCompleted
                      ? const Color(0xFF10B981)
                      : const Color(0xFFCBD5E1),
                  width: 2,
                ),
              ),
              child: isCompleted
                  ? const Icon(Icons.check, size: 18, color: Colors.white)
                  : null,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    task.titulo,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: isMain ? 16 : 15,
                      fontWeight: isMain ? FontWeight.w700 : FontWeight.w500,
                      color: isCompleted
                          ? const Color(0xFF94A3B8)
                          : const Color(0xFF1E293B),
                      decoration:
                          isCompleted ? TextDecoration.lineThrough : null,
                    ),
                  ),
                  if (task.proyectoNombre != null) ...[
                    const SizedBox(height: 4),
                    Text(
                      task.proyectoNombre!,
                      style: TextStyle(
                        fontSize: 12,
                        color: isCompleted
                            ? const Color(0xFFCBD5E1)
                            : const Color(0xFF64748B),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionLabel extends StatelessWidget {
  final String label;
  final Color color;
  const _SectionLabel(this.label, {this.color = const Color(0xFF64748B)});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12, left: 4),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w800,
          color: color,
          letterSpacing: 1.1,
        ),
      ),
    );
  }
}

class _EmptySection extends StatelessWidget {
  final String message;
  const _EmptySection(this.message);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFF1F5F9)),
      ),
      child: Column(
        children: [
          const Icon(Icons.inbox_outlined, size: 48, color: Color(0xFFE2E8F0)),
          const SizedBox(height: 16),
          Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Color(0xFF94A3B8)),
          ),
        ],
      ),
    );
  }
}

class _ErrorState extends StatelessWidget {
  final String error;
  final VoidCallback onRetry;
  const _ErrorState({required this.error, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            const Icon(Icons.error_outline, size: 48, color: Color(0xFFCBD5E1)),
            const SizedBox(height: 16),
            Text(error, textAlign: TextAlign.center),
            const SizedBox(height: 24),
            ElevatedButton(onPressed: onRetry, child: const Text('Reintentar')),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../data/agenda_repository.dart';
import '../domain/agenda_models.dart';

class AgendaController extends ChangeNotifier {
  final AgendaRepository _repository;

  AgendaController({AgendaRepository? repository})
      : _repository = repository ?? AgendaRepository();

  bool loading = false;
  String? error;
  AgendaResponse? data;

  // Fecha seleccionada
  DateTime currentDate = DateTime.now();

  Future<void> loadAgenda([DateTime? date]) async {
    final targetDate = date ?? currentDate;
    currentDate = targetDate;

    // Formato YYYY-MM-DD para la API
    final fechaStr =
        "${targetDate.year}-${targetDate.month.toString().padLeft(2, '0')}-${targetDate.day.toString().padLeft(2, '0')}";

    loading = true;
    error = null;
    notifyListeners();

    try {
      data = await _repository.getMiDia(fechaStr);
    } catch (e) {
      error = 'Error al cargar agenda: $e';
      data = null;
    } finally {
      loading = false;
      notifyListeners();
    }
  }

  // Estado de Selección para Planificación
  int? selectedMainTaskId;
  Set<int> selectedOtherTaskIds = {};
  bool startDayLoading = false;

  void toggleMainTask(int id) {
    if (selectedMainTaskId == id) {
      selectedMainTaskId = null;
    } else {
      selectedMainTaskId = id;
      selectedOtherTaskIds.remove(id); // No puede estar en ambos
    }
    notifyListeners();
  }

  void toggleOtherTask(int id) {
    if (selectedMainTaskId == id) return; // Ya es principal

    if (selectedOtherTaskIds.contains(id)) {
      selectedOtherTaskIds.remove(id);
    } else {
      selectedOtherTaskIds.add(id);
    }
    notifyListeners();
  }

  Future<void> saveCheckin(int userId) async {
    if (selectedMainTaskId == null && selectedOtherTaskIds.isEmpty) {
      error = "Selecciona al menos una tarea para iniciar tu día.";
      notifyListeners();
      return;
    }

    startDayLoading = true;
    notifyListeners();

    try {
      final fechaStr =
          "${currentDate.year}-${currentDate.month.toString().padLeft(2, '0')}-${currentDate.day.toString().padLeft(2, '0')}";

      final checkinPayload = {
        "idUsuario": userId,
        "fecha": fechaStr,
        "entregableTexto":
            "Objetivo del día", // Opcional: Podríamos pedir input
        "entrego": selectedMainTaskId != null ? [selectedMainTaskId] : [],
        "avanzo": selectedOtherTaskIds.toList(),
        "extras": [],
        "estadoAnimo": "Normal"
      };

      await _repository.saveCheckin(checkinPayload);

      // Recargar para obtener el nuevo estado (Plan Activo)
      await loadAgenda();

      // Limpiar selección
      selectedMainTaskId = null;
      selectedOtherTaskIds.clear();
    } catch (e) {
      error = 'Error al guardar plan: $e';
    } finally {
      startDayLoading = false;
      notifyListeners();
    }
  }

  Future<void> completeTask(int taskId) async {
    try {
      // Usar repositorio de tareas es lo ideal, pero aquí usaremos una llamada directa o a través de repository
      // Como no tenemos TasksRepository inyectado, asumimos que AgendaRepository puede hacerlo o lo añadimos
      // Por ahora simularemos la recarga
      // TODO: Implementar llamada real a actualizar estado
      await _repository.completeTask(taskId);
      await loadAgenda();
    } catch (e) {
      error = "Error al completar tarea: $e";
      notifyListeners();
    }
  }

  void nextDay() {
    loadAgenda(currentDate.add(const Duration(days: 1)));
  }

  void prevDay() {
    loadAgenda(currentDate.subtract(const Duration(days: 1)));
  }
}

import 'package:flutter/material.dart';
import '../data/agenda_repository.dart';
import '../../auth/data/auth_repository.dart';
import '../domain/agenda_models.dart';

class AgendaController extends ChangeNotifier {
  final AgendaRepository _repository;
  final AuthRepository _authRepository;

  AgendaController(
      {AgendaRepository? repository, AuthRepository? authRepository})
      : _repository = repository ?? AgendaRepository(),
        _authRepository = authRepository ?? AuthRepository();

  bool loading = false;
  String? error;
  AgendaResponse? data;
  bool isOffline = false;

  // Config de visibilidad (Desde DB)
  bool showGestion = true;
  bool showRapida = true;

  // Fecha seleccionada
  DateTime currentDate = DateTime.now();

  Future<void> loadAgenda([DateTime? date]) async {
    final targetDate = date ?? currentDate;
    currentDate = targetDate;

    final fechaStr =
        "${targetDate.year}-${targetDate.month.toString().padLeft(2, '0')}-${targetDate.day.toString().padLeft(2, '0')}";

    loading = true;
    error = null;
    notifyListeners();

    try {
      // 1. Cargar Configuración de Usuario (Paralelo)
      final configFuture = _authRepository.getUserConfig();
      final agendaFuture = _repository.getMiDia(fechaStr);

      final results = await Future.wait([configFuture, agendaFuture]);

      final config = results[0] as Map<String, dynamic>;
      showGestion = config['agendaShowGestion'] ?? true;
      showRapida = config['agendaShowRapida'] ?? true;

      data = results[1] as AgendaResponse;
    } catch (e) {
      error = 'Error al cargar agenda: $e';
      isOffline = true;
    } finally {
      loading = false;
      notifyListeners();
    }
  }

  // Estado de Selección (Separado por categorías como en React)
  Set<int> selectedMainIds = {};
  Set<int> selectedGestionIds = {};
  Set<int> selectedRapidaIds = {};

  bool startDayLoading = false;

  void toggleTask(int id, String category) {
    if (category == 'MAIN') {
      if (selectedMainIds.contains(id)) {
        selectedMainIds.remove(id);
      } else {
        selectedMainIds.add(id);
        selectedGestionIds.remove(id);
        selectedRapidaIds.remove(id);
      }
    } else if (category == 'GESTION') {
      if (selectedGestionIds.contains(id)) {
        selectedGestionIds.remove(id);
      } else {
        selectedGestionIds.add(id);
        selectedMainIds.remove(id);
        selectedRapidaIds.remove(id);
      }
    } else if (category == 'RAPIDA') {
      if (selectedRapidaIds.contains(id)) {
        selectedRapidaIds.remove(id);
      } else {
        selectedRapidaIds.add(id);
        selectedMainIds.remove(id);
        selectedGestionIds.remove(id);
      }
    }
    notifyListeners();
  }

  Future<void> saveCheckin(int userId) async {
    if (selectedMainIds.isEmpty) {
      error = "Selecciona al menos una tarea Principal.";
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
        "entregableTexto": "Plan de Trabajo Celular",
        "entrego": selectedMainIds.toList(),
        "avanzo": selectedGestionIds.toList(),
        "extras": selectedRapidaIds.toList(),
        "estadoAnimo": "Ok"
      };

      await _repository.saveCheckin(checkinPayload);
      await loadAgenda();

      selectedMainIds.clear();
      selectedGestionIds.clear();
      selectedRapidaIds.clear();
    } catch (e) {
      error = 'Error al guardar plan: $e';
    } finally {
      startDayLoading = false;
      notifyListeners();
    }
  }

  Future<void> updateConfig({bool? gestion, bool? rapida}) async {
    final oldG = showGestion;
    final oldR = showRapida;

    if (gestion != null) showGestion = gestion;
    if (rapida != null) showRapida = rapida;
    notifyListeners();

    try {
      await _authRepository.updateUserConfig({
        'agendaShowGestion': showGestion,
        'agendaShowRapida': showRapida,
      });
    } catch (e) {
      // Rollback visual si falla
      showGestion = oldG;
      showRapida = oldR;
      error = "Error al guardar configuración";
      notifyListeners();
    }
  }

  Future<void> completeTask(int taskId) async {
    try {
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

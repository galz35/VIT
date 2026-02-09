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
    final fechaStr = "${targetDate.year}-${targetDate.month.toString().padLeft(2, '0')}-${targetDate.day.toString().padLeft(2, '0')}";
    
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

  void nextDay() {
    loadAgenda(currentDate.add(const Duration(days: 1)));
  }

  void prevDay() {
    loadAgenda(currentDate.subtract(const Duration(days: 1)));
  }
}

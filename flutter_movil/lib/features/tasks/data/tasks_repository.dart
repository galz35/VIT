
import 'tasks_remote_data_source.dart';

class TasksRepository {
  final TasksRemoteDataSource _remote;

  TasksRepository({TasksRemoteDataSource? remote}) 
      : _remote = remote ?? TasksRemoteDataSource();

  /// Crear tarea con campos mínimos (compatibilidad)
  Future<void> createTask({
    required String title,
    DateTime? date,
    String? description,
    int? assignedToUserId,
  }) {
    return _remote.createTask(
      title: title,
      date: date,
      description: description,
      assignedToUserId: assignedToUserId,
    );
  }

  /// Crear tarea con todos los campos (nuevo método)
  Future<void> createTaskFull({
    required String title,
    required DateTime date,
    required String tipo,
    required String prioridad,
    required String esfuerzo,
    String? descripcion,
    int? assignedToUserId,
    int? projectId,
  }) {
    return _remote.createTaskFull(
      title: title,
      date: date,
      tipo: tipo,
      prioridad: prioridad,
      esfuerzo: esfuerzo,
      descripcion: descripcion,
      assignedToUserId: assignedToUserId,
      projectId: projectId,
    );
  }
}

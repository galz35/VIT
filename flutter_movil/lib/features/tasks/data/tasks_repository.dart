import 'package:dio/dio.dart';
import 'local/task_local_data_source.dart';
import '../domain/task_item.dart';
import 'tasks_remote_data_source.dart';

class TasksRepository {
  final TasksRemoteDataSource _remote;
  final TaskLocalDataSource _local;

  TasksRepository({TasksRemoteDataSource? remote, TaskLocalDataSource? local}) 
      : _remote = remote ?? TasksRemoteDataSource(),
        _local = local ?? TaskLocalDataSource();

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
  }) async {
     try {
       await _remote.createTaskFull(
        title: title,
        date: date,
        tipo: tipo,
        prioridad: prioridad,
        esfuerzo: esfuerzo,
        descripcion: descripcion,
        assignedToUserId: assignedToUserId,
        projectId: projectId,
      );
     } catch (e) {
       if (_isNetworkError(e)) {
         await _saveLocalTask(
            title: title,
            date: date,
            tipo: tipo,
            prioridad: prioridad,
            esfuerzo: esfuerzo,
            descripcion: descripcion,
            assignedToUserId: assignedToUserId,
            projectId: projectId,
         );
         return;
       }
       rethrow;
     }
  }

  Future<void> _saveLocalTask({
    required String title,
    required DateTime date,
    required String tipo,
    required String prioridad,
    required String esfuerzo,
    String? descripcion,
    int? assignedToUserId,
    int? projectId,
  }) async {
      final task = TaskItem(
        titulo: title,
        descripcion: descripcion ?? '',
        estado: 'Pendiente',
        fechaCreacion: DateTime.now(),
        synced: false,
      );
      
      final payload = {
        'titulo': title,
        'fechaObjetivo': date.toIso8601String(),
        'tipo': tipo,
        'prioridad': prioridad,
        'esfuerzo': esfuerzo,
        if (descripcion != null) 'descripcion': descripcion,
        if (assignedToUserId != null) 'idResponsable': assignedToUserId,
        if (projectId != null) 'idProyecto': projectId,
        'estado': 'Pendiente',
        'comportamiento': 'SIMPLE',
      };
      
      await _local.insert(task, additionalPayload: payload);
  }

  bool _isNetworkError(Object e) {
    if (e is DioException) {
      return e.type == DioExceptionType.connectionTimeout ||
             e.type == DioExceptionType.sendTimeout ||
             e.type == DioExceptionType.receiveTimeout ||
             e.type == DioExceptionType.connectionError ||
             e.error.toString().contains('SocketException');
    }
    return false;
  }
}

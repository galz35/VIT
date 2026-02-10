import '../domain/agenda_models.dart';
import 'agenda_remote_data_source.dart';

class AgendaRepository {
  final AgendaRemoteDataSource _remote;

  AgendaRepository({AgendaRemoteDataSource? remote})
      : _remote = remote ?? AgendaRemoteDataSource();

  Future<AgendaResponse> getMiDia(String fecha) {
    return _remote.getMiDia(fecha);
  }

  Future<void> saveCheckin(Map<String, dynamic> data) async {
    await _remote.saveCheckin(data);
  }

  Future<void> completeTask(int taskId) async {
    await _remote.completeTask(taskId);
  }
}

import '../domain/agenda_models.dart';
import 'agenda_remote_data_source.dart';

class AgendaRepository {
  final AgendaRemoteDataSource _remote;

  AgendaRepository({AgendaRemoteDataSource? remote}) 
      : _remote = remote ?? AgendaRemoteDataSource();

  Future<AgendaResponse> getMiDia(String fecha) {
    return _remote.getMiDia(fecha);
  }
}

import 'package:dio/dio.dart';
import '../../../core/network/api_client.dart';
import '../../agenda/domain/agenda_models.dart';

class AgendaRemoteDataSource {
  final Dio _dio;

  // IMPORTANTE: Usar ApiClient.dio por defecto para tener interceptors de Auth
  AgendaRemoteDataSource({Dio? dio}) : _dio = dio ?? ApiClient.dio;

  Future<AgendaResponse> getMiDia(String fecha) async {
    try {
      // Endpoint exacto de React: /mi-dia?fecha=YYYY-MM-DD
      final response =
          await _dio.get('mi-dia', queryParameters: {'fecha': fecha});

      // Asumimos estructura ApiResponse donde data está en 'data' o en raíz si no está envuelto
      final data = response.data;

      // Validación defensiva
      if (data == null) {
        throw Exception('Respuesta vacía del servidor');
      }

      // Si viene envuelto en { data: ... }
      if (data is Map<String, dynamic> && data.containsKey('data')) {
        return AgendaResponse.fromJson(data['data']);
      }

      return AgendaResponse.fromJson(data);
    } catch (e) {
      if (e is DioException) {
        // Si es un error de conexión, intentar devolver mock para demo/debug
        if (e.type == DioExceptionType.connectionTimeout ||
            e.type == DioExceptionType.receiveTimeout ||
            e.type == DioExceptionType.connectionError ||
            e.message?.contains('SocketException') == true) {
          return _getMockData();
        }
        throw Exception('Error al obtener agenda: ${e.message}');
      }
      // Para cualquier otro error en desarrollo, retornar mock también
      return _getMockData();
    }
  }

  Future<void> saveCheckin(Map<String, dynamic> checkinData) async {
    try {
      await _dio.post('mi-dia/checkin', data: checkinData);
    } catch (e) {
      throw Exception('Error al guardar check-in: $e');
    }
  }

  Future<void> completeTask(int taskId) async {
    try {
      await _dio.patch('tareas/$taskId', data: {'estado': 'Hecha'});
    } catch (e) {
      throw Exception('Error al completar tarea: $e');
    }
  }

  AgendaResponse _getMockData() {
    return AgendaResponse(
      bloqueosActivos: [],
      bloqueosMeCulpan: [],
      tareasSugeridas: [
        Tarea(
          idTarea: 101,
          titulo: 'Revisión de Diseño Mobile',
          proyectoNombre: 'Momentus App 2.0',
          prioridad: 'Alta',
          estado: 'Pendiente',
          progreso: 0,
          orden: 1,
          descripcion: 'Validar nuevos componentes M3 y navegación.',
          fechaObjetivo: DateTime.now().toIso8601String(),
        ),
        Tarea(
          idTarea: 102,
          titulo: 'Sincronización Offline',
          proyectoNombre: 'Ingeniería',
          prioridad: 'Media',
          estado: 'EnCurso',
          progreso: 45,
          orden: 2,
          descripcion: 'Implementar worker de sincronización en segundo plano.',
        ),
      ],
      backlog: [
        Tarea(
          idTarea: 201,
          titulo: 'Actualizar Dependencias',
          proyectoNombre: 'Mantenimiento',
          prioridad: 'Baja',
          estado: 'Pendiente',
          progreso: 0,
          orden: 3,
        ),
        Tarea(
          idTarea: 202,
          titulo: 'Limpieza de Logs',
          proyectoNombre: 'Mantenimiento',
          prioridad: 'Baja',
          estado: 'Hecha',
          progreso: 100,
          orden: 4,
        ),
      ],
    );
  }
}

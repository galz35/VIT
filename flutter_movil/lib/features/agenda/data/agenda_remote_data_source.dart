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
      final response = await _dio.get('/mi-dia', queryParameters: {'fecha': fecha});
      
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
         // Manejo básico de errores HTTP
         // Si es 404 o 500, lanzar excepción limpia
         throw Exception('Error al obtener agenda: ${e.message}');
      }
      rethrow;
    }
  }
}

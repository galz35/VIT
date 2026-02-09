import '../../../core/network/api_client.dart';
import '../domain/empleado.dart';

class UserRepository {
  Future<List<Empleado>> search(String query) async {
    try {
      final response = await ApiClient.dio.get('/acceso/empleados/buscar', queryParameters: {'q': query, 'limit': 10});
      final list = response.data as List;
      return list.map((e) => Empleado.fromJson(e)).toList();
    } catch (e) {
      return [];
    }
  }
}

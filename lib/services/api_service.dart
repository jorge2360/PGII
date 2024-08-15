import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'http://tu-api-url.com/api'; // Cambia esto a tu URL

  Future<http.Response> login(String username, String password) async {
    // Implementa la lógica para el inicio de sesión
    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      body: {'username': username, 'password': password},
    );
    return response;
  }

  Future<http.Response> register(String username, String password) async {
    // Implementa la lógica para el registro de usuario
    final response = await http.post(
      Uri.parse('$baseUrl/register'),
      body: {'username': username, 'password': password},
    );
    return response;
  }
}

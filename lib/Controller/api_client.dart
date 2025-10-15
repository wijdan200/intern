import 'package:get/get.dart';
import 'package:get/get_connect/http/src/response/response.dart';

class ApiClient extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'https://example.com/api';
    httpClient.timeout = const Duration(seconds: 15);
    super.onInit();
  }

  Future<Response<dynamic>> register({required String name, required String email, required String password}) {
    final body = {
      // 'name': name,
      'email': email,
      'password': password,
    };
    return post('/auth/register', body);
  }
}


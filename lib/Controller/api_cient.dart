import 'package:get/get.dart';
import 'package:get/get_connect/http/src/response/response.dart';

class ApiClient extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'https://dummyjson.com';
    httpClient.timeout = const Duration(seconds: 15);
    super.onInit();
  }

  Future<Response<dynamic>> register({required String name, required String email, required String password}) {
    final body = {
      'email': email,
      'password': password,
    };
    return post('/auth/login', body);
  }
  

  Future<Response<dynamic>> login({required String email, required String password}) {
    final body = {
      'email': email,
      'password': password,
    };
    return post('/auth/login', body);
  }
}


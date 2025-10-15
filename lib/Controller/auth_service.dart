import 'package:get/get.dart';
import 'package:flutter_ex/Controller/api_client.dart';

class AuthService extends GetxService {
  final RxBool isLoggedIn = false.obs;
  late final ApiClient _api;

  Future<AuthService> init() async {
    // Initialize auth state here if needed (e.g., read from storage)
    _api = Get.put(ApiClient());
    return this;
  }

  void login() {
    isLoggedIn.value = true;
  }

  void logout() {
    isLoggedIn.value = false;
  }

  Future<Response> register({required String name, required String email, required String password}) async {
    return _api.register(name: name, email: email, password: password);
  }
}



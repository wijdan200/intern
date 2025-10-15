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

  Future<Response<dynamic>> register({required String name, required String email, required String password}) async {
    return _api.register(email: email, password: password, name: name);
  }

  Future<Response<dynamic>> loginWithApi({required String email, required String password}) async {
    final res = await _api.login(email: email, password: password);
    if (res.isOk) {
      // No token required in new auth; treat 2xx as success
      isLoggedIn.value = true;
    }
    return res;
  }
}



import 'package:get/get.dart';
import 'session_service.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    startSplash();
  }

  void startSplash() async {
    await Future.delayed(const Duration(seconds: 2));
    try {
      final session = Get.find<SessionService>();
      if (session.isCustomer) {
        Get.offAllNamed('/customer-home');
        return;
      }
      if (session.isAdmin) {
        Get.offAllNamed('/admin-dashboard');
        return;
      }
    } catch (_) {
      // SessionService not available yet; fall back to login
    }
    Get.offAllNamed('/loginu');
  }
}

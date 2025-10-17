import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    startSplash();
  }

  void startSplash() {
   
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAllNamed('/loginu');
    });
  }
}

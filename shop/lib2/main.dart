import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/view/spalshveiw.dart';
import 'package:shop/view/loginu.dart';
import 'package:shop/controllers/splash_controller.dart';
import 'package:shop/controllers/login_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(GetMaterialApp(
    title: 'BagShop',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF6A4C93)),
      useMaterial3: true,
    ),
    initialRoute: '/',
    getPages: [
      GetPage(
        name: '/', 
        page: () => const SplashView(),
        binding: BindingsBuilder(() {
          Get.put(SplashController());
        }),
      ),
      GetPage(
        name: '/loginu', 
        page: () => const LoginUser(),
        binding: BindingsBuilder(() {
          Get.put(LoginController());
        }),
      ),
    ],
  ));
}




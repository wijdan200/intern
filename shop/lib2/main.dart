import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'view/spalshveiw.dart';
import 'view/loginu.dart';
import 'view/customer_page.dart';
import 'view/product_details_page.dart';
import 'controllers/splash_controller.dart';
import 'controllers/login_controller.dart';
import 'controllers/product_controller.dart';
import 'services/api_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(GetMaterialApp(
    title: 'Shop',
    debugShowCheckedModeBanner: false,
    theme: ThemeData.light().copyWith(
      colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF6A4C93)),
      useMaterial3: true,
    ),
    darkTheme: ThemeData.dark().copyWith(
      colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF6A4C93), brightness: Brightness.dark),
      useMaterial3: true,
    ),
    themeMode: ThemeMode.light,
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
      GetPage(
        name: '/customer-home', 
        page: () => const CustomerPage(),
        binding: BindingsBuilder(() {
          Get.put(ApiService());
          Get.put(ProductController());
        }),
      ),
      GetPage(
        name: '/product-details', 
        page: () => const ProductDetailsPage(),
      ),
    ],
  ));
}




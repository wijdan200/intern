import 'package:flutter/material.dart';
import 'package:flutter_ex/view/Homepage.dart';
import 'package:flutter_ex/view/Second.dart';
import 'package:flutter_ex/view/login.dart';
import 'package:flutter_ex/view/signup.dart';
import 'package:flutter_ex/Controller/tran.dart';
import 'package:flutter_ex/Controller/auth_middleware.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    translations: MyTranslations(),
    locale: Get.deviceLocale,
    fallbackLocale: Locale('en', 'US'),
    theme: ThemeData.light(),
    darkTheme: ThemeData.dark(),
    themeMode: ThemeMode.light,
    initialRoute: '/',
    getPages: [
      GetPage(name: '/', page: () => Homepage()),
      GetPage(
        name: '/second',
        page: () => Second(),
        middlewares: [AuthMiddleware()],
      ),
      GetPage(name: '/login', page: () => LoginPage()),
      GetPage(name: '/signup', page: () => SignupPage()),
    ],
  ));
}








 
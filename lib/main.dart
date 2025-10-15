
import 'package:flutter/material.dart';
import 'package:flutter_ex/view/Homepage.dart';
import 'package:flutter_ex/view/Second.dart';
import 'package:flutter_ex/view/login.dart';
import 'package:flutter_ex/view/signup.dart';
import 'package:flutter_ex/Controller/tran.dart';
import 'package:flutter_ex/Controller/auth_service.dart';
import 'package:flutter_ex/Controller/auth_middleware.dart';
import 'package:get/get.dart';


// sharedPreferences? sharepref;


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync<AuthService>(() async => AuthService().init());

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
      GetPage(name: '/login', page: () => const LoginPage()),
      GetPage(name: '/signup', page: () => const SignupPage()),
    ],
  ));
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}







 
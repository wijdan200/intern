import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_ex/Controller/auth_service.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  // redirect function >> type:route
  //int ? get priority =>1; high priority 
  RouteSettings? redirect(String? route) {
    final auth = Get.find<AuthService>();
    if (!auth.isLoggedIn.value && route == '/second') {
      return const RouteSettings(name: '/login');
    }
    return null;
  }
}



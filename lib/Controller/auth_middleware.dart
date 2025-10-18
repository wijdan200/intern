import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthMiddleware extends GetMiddleware {
 
  static var isLoggedIn = false.obs;

  @override
  RouteSettings? redirect(String? route) {
  
    if (!isLoggedIn.value && route == '/second') {
      return RouteSettings(name: '/login');
      
    }
    return null; 
    
  }
}


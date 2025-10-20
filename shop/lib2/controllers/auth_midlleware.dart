import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'session_service.dart';

class CustomerOnlyMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    try {
      final SessionService session = Get.find<SessionService>();
      if (session.isCustomer) {
        return null; // allow
      }
    } catch (e) {
      // SessionService not found, redirect to login
    }
    return const RouteSettings(name: '/loginu');
  }
}

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum AppRole { customer, admin, guest }

class SessionService extends GetxService {
  final Rx<AppRole> currentRole = AppRole.guest.obs;
  static const String _roleKey = 'user_role';
  
  bool get isCustomer => currentRole.value == AppRole.customer;
  bool get isAdmin => currentRole.value == AppRole.admin;
  bool get isLoggedIn => currentRole.value != AppRole.guest;

  @override
  Future<void> onInit() async {
    super.onInit();
    await _loadSavedRole();
  }

  Future<void> _loadSavedRole() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final roleString = prefs.getString(_roleKey);
      if (roleString != null) {
        final role = AppRole.values.firstWhere(
          (r) => r.name == roleString,
          orElse: () => AppRole.guest,
        );
        currentRole.value = role;
        print('Loaded saved role: $roleString');
      }
    } catch (e) {
      print('Error loading saved role: $e');
    }
  }

  Future<void> setRole(AppRole role) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_roleKey, role.name);
      currentRole.value = role;
      print('Role saved: ${role.name}');
    } catch (e) {
      print('Error saving role: $e');
    }
  }

  Future<void> logout() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_roleKey);
      currentRole.value = AppRole.guest;
      print('User logged out, role cleared');
    } catch (e) {
      print('Error during logout: $e');
    }
  }
}



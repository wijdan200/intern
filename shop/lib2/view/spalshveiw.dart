import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/splash_controller.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF6A4C93), Color(0xFF9A4DFF)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.asset("images/background.jpg", fit: BoxFit.cover),
              const SizedBox(height: 20),
              const Text(
                'Welcome to Our Shop',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
            //  ElevatedButton.icon(
            //   icon: Icon(Icons.brightness_6),
            //   label: Text('Change_Theme'.tr),
            //   style: ElevatedButton.styleFrom(
            //     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            //     textStyle: TextStyle(fontSize: 18),
            //   ),
            //   onPressed: () {
            //     Get.changeThemeMode(
            //       Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
            //     );
            //   },
            // ), 
            ],
          ),
        ),
      ),
    );
  }
}

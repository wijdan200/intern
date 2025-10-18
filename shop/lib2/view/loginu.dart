import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../controllers/login_controller.dart';

class LoginUser extends StatelessWidget {
  const LoginUser({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.put(LoginController());

    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
               
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFF6A4C93).withValues(alpha: 0.1),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.shopping_bag_outlined,
                    size: 80,
                    color: Color(0xFF6A4C93),
                  ),
                ),
                
                const SizedBox(height: 32),
                
                const Text(
                  'Welcome to BagiShop',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
                
                const SizedBox(height: 16),
                
                const Text(
                  'Choose your role to continue',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
                
                const SizedBox(height: 32),
                
    
                ElevatedButton(
                  onPressed: () {
                    controller.showLoginForm(context, 'Customer');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 181, 148, 228),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
              
                    elevation: 3,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.shopping_cart, size: 24),
                      const SizedBox(width: 5,height: 3),
                      const Text(
                        'Customer',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                
                const SizedBox(height: 16),
                
              
                ElevatedButton(
                  onPressed: () {
                    controller.showLoginForm(context, 'Admin');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 75, 162, 238),
                    foregroundColor: Colors.white,
                   padding: const EdgeInsets.symmetric(vertical:2),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                    elevation: 3,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.admin_panel_settings, size: 24),
                      const SizedBox(width: 12),
                      const Text(
                        'Admin',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                
                const SizedBox(height: 24),
                
         
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account? "),
                    GestureDetector(
                      onTap: () {
                        Get.snackbar('Info', 'Sign up feature coming soon!');
                      },
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                          color: Color(0xFF6A4C93),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  
  final RxBool isLoading = false.obs;
  final RxBool isPasswordVisible = false.obs;

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void enterAsCustomer() {
    Get.snackbar(
      'Welcome!',
      'Entering as Customer ',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: const Color(0xFF6A4C93),
      colorText: Colors.white,
    );
    // Navigate to customer home page or shopping area
    // Get.offAllNamed('/customer-home');
  }

  bool validateInputs(String email, String password) {
    if (email.isEmpty || password.isEmpty) {
      Get.snackbar(
        'Error',
        'Please fill in all fields',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return false;
    }
    
    if (!GetUtils.isEmail(email)) {
      Get.snackbar(
        'Error',
        'Please enter a valid email address',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return false;
    }
    
    if (password.length < 6) {
      Get.snackbar(
        'Error',
        'Password must be at least 6 characters',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return false;
    }
    
    return true;
  }

  Future<void> performLogin(String role) async {
    if (!validateInputs(emailController.text, passwordController.text)) {
      return;
    }

    isLoading.value = true;

    // Simulate API call
    await Future.delayed(const Duration(seconds: 2));

    isLoading.value = false;

    // Simple authentication logic (in real app, this would be API call)
    if (role == 'Customer' && 
               emailController.text == 'customer@shop.com' && 
               passwordController.text == '123456') {
      Get.snackbar(
        'Success',
        'Welcome Customer!',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: const Color(0xFF6A4C93),
        colorText: Colors.white,
      );
      Get.back(); // Close bottom sheet
      Get.offAllNamed('/customer-home'); // Navigate to customer home
    } else if (role == 'Admin' && 
               emailController.text == 'admin@shop.com' && 
               passwordController.text == '123456') {
      Get.snackbar(
        'Success',
        'Welcome Admin!',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: const Color(0xFFB8860B),
        colorText: Colors.white,
      );
      Get.back();
      Get.offAllNamed('/admin-dashboard'); 
    } else {
      Get.snackbar(
        'Error',
        'Invalid credentials. Try: customer@shop.com / 123456 or admin@shop.com / 123456',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        duration: const Duration(seconds: 4),
      );
    }
  }

  void showLoginForm(BuildContext context, String role) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height * 0.7,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 232, 198, 198),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const SizedBox(height: 24),
            
            Text(
              'Login as $role',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            const SizedBox(height: 32),
            
            // Email Field
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Email',
                prefixIcon: const Icon(Icons.email_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: const Color.fromARGB(255, 218, 189, 189),
              ),
            ),
            
            const SizedBox(height: 16),
            
            // Password Field
            Obx(() => TextField(
              controller: passwordController,
              obscureText: !isPasswordVisible.value,
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: const Icon(Icons.lock_outlined),
                suffixIcon: IconButton(
                  icon: Icon(
                    isPasswordVisible.value ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: togglePasswordVisibility,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.grey.shade50,
              ),
            )),
            
            const SizedBox(height: 24),
            
         
            Obx(() => SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: isLoading.value ? null : () => performLogin(role),
                style: ElevatedButton.styleFrom(
                  backgroundColor: role == 'Customer' ? const Color(0xFF6A4C93) : const Color.fromARGB(255, 90, 141, 230),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: isLoading.value
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                      )
                    : const Text(
                        'Sign In',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      ),
              ),
            )),
            
             const SizedBox(height: 16),
            
         
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text(
                'Cancel',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

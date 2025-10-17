import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isave/view/user_aurth_screen/login_controller.dart';

class SignUpScreen extends StatelessWidget {
  final controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5F7F8),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        title: const Text(
          "Create Account",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Create Your Account",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0D141C),
              ),
            ),
            const SizedBox(height: 6),
            const Text(
              "Join us to get started.",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 30),

            // Full Name
            const Text(
              "Full Name",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 6),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter your full name",
                filled: true,
                fillColor: const Color(0xFFF5F7F8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Email
            const Text(
              "Email",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 6),
            TextField(
              controller: controller.emailController,
              decoration: InputDecoration(
                hintText: "your.email@example.com",
                filled: true,
                fillColor: const Color(0xFFF5F7F8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Password
            const Text(
              "Password",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 6),
            Obx(() => TextField(
              controller: controller.passwordController,
              obscureText: controller.isPasswordHidden.value,
              decoration: InputDecoration(
                hintText: "Enter your password",
                filled: true,
                fillColor: const Color(0xFFF5F7F8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    controller.isPasswordHidden.value
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    controller.isPasswordHidden.value =
                    !controller.isPasswordHidden.value;
                  },
                ),
              ),
            )),
            const SizedBox(height: 16),

            // Confirm Password
            const Text(
              "Confirm Password",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 6),
            Obx(() => TextField(
              controller: controller.confirmPasswordController,
              obscureText: controller.isConfirmHidden.value,
              decoration: InputDecoration(
                hintText: "Confirm your password",
                filled: true,
                fillColor: const Color(0xFFF5F7F8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    controller.isConfirmHidden.value
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    controller.isConfirmHidden.value =
                    !controller.isConfirmHidden.value;
                  },
                ),
              ),
            )),
            const SizedBox(height: 30),

            // Sign Up Button
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: controller.signUp,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0D7FF2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Already Have an Account
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account? ",
                  style: TextStyle(color: Colors.grey),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed('/login');
                  },
                  child: const Text(
                    "Log In",
                    style: TextStyle(
                      color: Color(0xFF0D7FF2),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

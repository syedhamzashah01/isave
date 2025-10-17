import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isave/view/user_aurth_screen/login_screen.dart';
import '../home/home_screen.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Text Editing Controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();


  // Reactive loading state
  var isLoading = false.obs;

  var isPasswordHidden = true.obs;
  var isConfirmHidden = true.obs;




  Future<void>    signUp() async {
    try {
      if (emailController.text.isEmpty ||
          passwordController.text.isEmpty ||
          confirmPasswordController.text.isEmpty) {
        Get.snackbar("Error", "Please fill all fields");
        return;
      }

      // Check if passwords match
      if (passwordController.text.trim() != confirmPasswordController.text.trim()) {
        Get.snackbar("Error", "Passwords do not match!");
        return;
      }

      await _auth.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      Get.snackbar("Success", "Account created successfully!");
    } on FirebaseAuthException catch (e) {
      Get.snackbar("Error", e.message ?? "Something went wrong");
    }
  }



  Future<void> login() async {
    if (emailController.text.trim().isEmpty ||
        passwordController.text.trim().isEmpty) {
      Get.snackbar("Error", "Please fill all fields");
      return;
    }

    isLoading.value = true;

    try {
      await _auth.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      Get.snackbar("Success", "Login successful!");
      // Get.offAll(() => HomeScreen());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.snackbar("No Account Found", "Please register first!");
      } else if (e.code == 'wrong-password') {
        Get.snackbar("Incorrect Password", "Please try again");
      } else if (e.code == 'invalid-email') {
        Get.snackbar("Error", "Invalid email format!");
      } else {
        Get.snackbar("Error", e.message ?? "Something went wrong!");
      }
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> logout() async {
    await _auth.signOut();
    Get.snackbar("Logged Out", "You have been logged out successfully");
  }
}

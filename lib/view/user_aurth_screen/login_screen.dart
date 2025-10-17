import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isave/view/user_aurth_screen/sign_up_screen.dart' show SignUpScreen;
import 'login_controller.dart' show AuthController;

// class LoginScreen extends StatefulWidget {
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
//   final controller = Get.put(AuthController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Login")),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//
//               decoration: InputDecoration(
//                 hintText: "Enter your email",
//                 filled: true,
//                 fillColor: const Color(0xFFF5F7F8),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
//             TextField(
//               controller: controller.passwordController,
//               obscureText: true,
//                 decoration: InputDecoration(
//                   hintText: "Enter your Password",
//                   filled: true,
//                   fillColor: const Color(0xFFF5F7F8),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                 ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: controller.login,
//               child: Text("Login"),
//             ),
//             const SizedBox(height: 20),
//             TextButton(
//               onPressed: () {
//                 Get.to(() => SignUpScreen());
//               },
//               child: const Text("Don’t have an account? Sign Up"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final controller = Get.put(AuthController());

  bool isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.isDarkMode ? const Color(0xFF101922) : const Color(
          0xFFF5F5F5),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //  Lock Icon
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.lock, color: Colors.blue, size: 48),
              ),
              const SizedBox(height: 24),

              //Welcome text
              Text(
                "Welcome Back!",
                style: TextStyle(
                  color: Get.isDarkMode ? Colors.white : Colors.black87,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 32),

              // Email Field
              TextField(
                  controller: controller.emailController,
                decoration: InputDecoration(
                  labelText: "Username or Email",
                  hintText: "Enter your username or email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: const Icon(Icons.email_outlined),
                ),
              ),
              const SizedBox(height: 16),

              // Password Field
              TextField(
                controller: controller.passwordController,
                obscureText: controller.isPasswordHidden.value,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Enter your password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: const Icon(Icons.lock_outline),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isPasswordHidden ? Icons.visibility_off : Icons
                          .visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        isPasswordHidden = !isPasswordHidden;
                      });
                    },
                  ),
                ),
              ),

              // Forgot Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),

              // Login Button
              ElevatedButton(
                onPressed: controller.login,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),

              SizedBox(height: 40,),
              // Sign Up Text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(
                        color: Get.isDarkMode ? Colors.white70 : Colors
                            .black87),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(SignUpScreen());
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//   Widget _socialButton(String text, String iconUrl) {
//     return OutlinedButton.icon(
//       onPressed: () {},
//       icon: Image.network(iconUrl, height: 24),
//       label: Text(text, style: const TextStyle(fontWeight: FontWeight.w500)),
//       style: OutlinedButton.styleFrom(
//         padding: const EdgeInsets.symmetric(vertical: 14),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//         side: BorderSide(
//           color: Get.isDarkMode ? Colors.grey.shade700 : Colors.grey.shade300,
//         ),
//         minimumSize: const Size(double.infinity, 50),
//       ),
//     );
//   }
// }


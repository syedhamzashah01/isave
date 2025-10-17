import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/home_screen.dart';
import '../user_aurth_screen/login_screen.dart' show LoginScreen;
import 'controller/splash_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
    // final SplashController controller = Get.put(SplashController());
  @override
  void initState() {
    // TODO: implement initState
    _navigateToNext();
    super.initState();
  }
    void _navigateToNext() async {
      await Future.delayed(const Duration(seconds: 3));
      Get.offAll(() => HomeScreen());
    }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(flex: 2,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.diamond_outlined, color: Color(0xFF2B2473), size: 50),
                  SizedBox(width: 8),
                  Text('iSave', style: TextStyle(color: Color(0xFF2B2473), fontWeight: FontWeight.w600, fontSize: 30)),
                ],
              ),

              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(  'Welcome to Etihad iSave, your source for great discounts and promotions.',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
              ),
              Spacer(),
              CircularProgressIndicator(),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}



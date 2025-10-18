import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/bottom_nav_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavController controller = Get.put(BottomNavController());

    return Obx(() => Scaffold(


      body: controller.screens[controller.selectedIndex.value],

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: controller.selectedIndex.value,
        onTap: controller.changeIndex,
        selectedItemColor: const Color(0xFF2D2A6E),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: "Favourites"),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view), label: "Categories"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card), label: "e-card"),
        ],
      ),
    ));
  }




}



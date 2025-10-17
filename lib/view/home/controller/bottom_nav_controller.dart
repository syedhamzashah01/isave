import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:isave/view/categoryScreen/category_screen.dart';
import 'package:isave/view/ecardScreen/ecard_screen.dart';
import 'package:isave/view/favsecree/fav_screen.dart';
import 'package:isave/view/search/search_screen.dart';

import '../home.dart';
import '../home_screen.dart' show HomeScreen;

class BottomNavController extends GetxController {
  var selectedIndex = 0.obs;

  final List<Widget> screens = [
    const Home(),
    const FavScreen(),
    const CategoryScreen(),
    SearchScreen(),
    const ECardView(),
  ];

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}

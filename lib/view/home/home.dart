import 'package:flutter/material.dart';
import 'package:isave/view/home/home_screen.dart';
import 'package:isave/widget/offcard_widget.dart';

import '../../widget/category_widget.dart' show categoryItem;

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Text('iSave' , style: TextStyle(fontSize: 18, color: Color(0xFF2D2A6E)),)
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black87),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.mail_outline, color: Colors.black87),
            onPressed: () {},
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Feedback",
              style: TextStyle(color: Color(0xFF2D2A6E)),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
    body: SingleChildScrollView(
    padding: const EdgeInsets.all(10),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

    // Purple card
    Container(
    height: 150,
    decoration: BoxDecoration(
    color: const Color(0xFF2D2A6E),
    borderRadius: BorderRadius.circular(12),
    ),
    padding: const EdgeInsets.all(16),
    child: Row(
    children: [
    Icon(Icons.diamond_outlined, color: Colors.white, size: 30),
    const Expanded(
    child: Text('iSave',
  style: TextStyle(
  color: Colors.white,
  fontSize: 18,
  fontWeight: FontWeight.w400),
  ),
  ),
  SizedBox(width: 10),
  const Expanded(
  child: Text(
  'Welcome to Etihad iSave, your source for great discounts and promotions.',
  style: TextStyle(
  color: Colors.white,
  fontSize: 12,
  fontWeight: FontWeight.w400),
  ),
  )
  ],
  ),
  ),
  const SizedBox(height: 20),

  // Category grid
  GridView.count(
  shrinkWrap: true,
  physics: const NeverScrollableScrollPhysics(),
  crossAxisCount: 3,
  mainAxisSpacing: 12,
  crossAxisSpacing: 12,
  children: [
  categoryItem(Icons.restaurant, "Dining"),
  categoryItem(Icons.hotel, "Hotels"),
  categoryItem(Icons.credit_card, "Banking & Insurance"),
  categoryItem(Icons.beach_access, "Attraction & Leisure"),
  categoryItem(Icons.spa, "Salon & Spa"),
  categoryItem(Icons.more_horiz, "More"),
  ],
  ),
  const SizedBox(height: 20),

  // Seasonal Offers section
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
          "Seasonal offers",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Text("Limited period offer",
              style: TextStyle(color: Colors.grey, fontSize: 12)),
        ],
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(0,0, 20, 0),
        child: Container(
          height: 30,
          width: 70,
          decoration: BoxDecoration(
           color: Colors.white,
            border: Border.all(),
            borderRadius: BorderRadius.circular(20)
          ),
          child: Center(child: Text('View all')),
        ),
      )
    ],
  ),

  const SizedBox(height: 20),

  SizedBox(
  height: 250,
  child: ListView(
  scrollDirection: Axis.horizontal,
  children: [
  offerCard("Mazaya App", "Worldwide",
  "Please Read the description",
      "assets/mazaya.jpg"),
  offerCard("Canadian Medical\nCenter",
  "UAE, Abu Dhabi", "Teeth Cleanin AED 99 Plus\nVAT",
      "assets/cmc.jpg"),
  offerCard("Fazaa", "UAE", "Exclusive benefits", "assets/faza.jpg"),
  ],
  ),
  ),
  ],
  ),
  ),
    );
  }
}

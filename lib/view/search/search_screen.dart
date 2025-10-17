
import 'package:flutter/material.dart';
import 'package:isave/widget/search.dart';

class SearchScreen extends StatefulWidget {

  SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
        SizedBox(height: 70,),
          CustomSearchBar(
            controller: searchController,
            hintText: "Search items...",
            onSearch: () {
              debugPrint("Search button pressed: ${searchController.text}");
            },
            onChanged: (value) {
              debugPrint("Typing: $value");
            },
          ),
          // Your list or content here
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Search Screen",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        leading: const Icon(
          Icons.search,
          color: Colors.black,
          size: 20,
        ),
      ),
    );
  }
}

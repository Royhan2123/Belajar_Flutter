import 'package:flutter/material.dart';

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({super.key});

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Restaurant Screen",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        leading: const Icon(
          Icons.restaurant_menu_rounded,
          color: Colors.black,
          size: 20,
        ),
      ),
    );
  }
}

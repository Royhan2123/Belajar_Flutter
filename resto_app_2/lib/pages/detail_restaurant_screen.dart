import 'package:flutter/material.dart';

class DetailRestaurantScreen extends StatefulWidget {
  const DetailRestaurantScreen({super.key});

  @override
  State<DetailRestaurantScreen> createState() => _DetailRestaurantScreenState();
}

class _DetailRestaurantScreenState extends State<DetailRestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("INI HALAMAN DETAIL")
          ],
        ),
      ),
    );
  }
}
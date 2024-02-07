import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:resto_app_2/pages/restaurant_screen.dart';
import 'package:resto_app_2/pages/search_screen.dart';

class HalamanBottom extends StatefulWidget {
  const HalamanBottom({super.key});

  @override
  State<HalamanBottom> createState() => _HalamanBottomState();
}

class _HalamanBottomState extends State<HalamanBottom> {
  final listBottom = const [
    RestaurantScreen(),
    SearchScreen(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: listBottom,
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          child: GNav(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            selectedIndex: currentIndex,
            onTabChange: (index) {
             setState(() {
                currentIndex = index;
             });
            },
            tabs: const [
              GButton(
                icon: Icons.home_filled,
                text: "Home",
              ),
              GButton(
                icon: Icons.search,
                text: "Search",
              ),
            ],
            gap: 8,
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            padding: const EdgeInsets.all(20),
          ),
        ),
      ),
    );
  }
}

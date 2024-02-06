import 'package:flutter/material.dart';
import 'package:resto_app/pages/splash_screen.dart';

void main() {
  runApp(const MainActivity());
}

class MainActivity extends StatelessWidget {
  const MainActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_flutter_firebase/page/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(
        seconds: 3,
      ),
      () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginScreen(),
            ),
            (route) => false);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 115,
          height: 115,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/logo_splash.png"),
            ),
          ),
        ),
      ),
    );
  }
}

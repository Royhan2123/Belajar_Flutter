// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:new_flutter_firebase/page/splash_screen.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async {

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);

  runApp(const MainActivity());
  
}

class MainActivity extends StatelessWidget {
  const MainActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

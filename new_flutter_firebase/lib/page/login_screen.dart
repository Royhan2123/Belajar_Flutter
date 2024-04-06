import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(
            20,
          ),
          children: [
            bodys(),
          ],
        ),
      ),
    );
  }

  Widget bodys() {
    return Container(
      padding: const EdgeInsets.all(
        15,
      ),
      child: const Column(
        children: [
          Text("Hello,"),
        ],
      ),
    );
  }
}

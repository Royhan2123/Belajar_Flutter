import 'package:flutter/material.dart';

void main() => runApp(
      const MainActivity(),
    );

class MainActivity extends StatelessWidget {
  const MainActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 35, 3, 91),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/dice-1.png",
                width: 200,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

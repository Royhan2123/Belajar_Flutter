// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

void main() => runApp(
      const MainActivity(),
    );

class MainActivity extends StatelessWidget {
  const MainActivity({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: DicePage());
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var activeDiceImage = "assets/dice-2.png";

  void rollDice() {
    setState(() {
      activeDiceImage = "assets/dice-4.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              activeDiceImage,
              width: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              onPressed: rollDice,
              child: const Text(
                "Roll Dice",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

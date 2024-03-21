import 'package:flutter/material.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text("1"),
      ),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton(
            heroTag: "decrement",
            onPressed: () {},
            child: const Icon(
              Icons.remove,
            ),
          ),
          FloatingActionButton(
            heroTag: "increment",
            onPressed: () {},
            child: const Icon(
              Icons.add,
            ),
          ),
        ],
      ),
    );
  }
}

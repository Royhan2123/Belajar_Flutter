import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Image Picker",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: ListView(
        children: [
          body(),
          bottom(),
        ],
      ),
    );
  }

  Widget body() {
    return Container(
      alignment: Alignment.center,
      child: Container(
        margin: const EdgeInsets.only(
          top: 100,
          bottom: 100,
        ),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromARGB(255, 222, 222, 222),
        ),
        child: const Icon(
          Icons.image,
          size: 200,
          color: Color.fromARGB(255, 137, 137, 137),
        ),
      ),
    );
  }

  Widget bottom() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.cyan,
              minimumSize: const Size(100, 45),
            ),
            onPressed: () {},
            child: const Text(
              "Gallery",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.cyan,
              minimumSize: const Size(100, 45),
            ),
            onPressed: () {},
            child: const Text(
              "Camera Custom",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.cyan,
              minimumSize: const Size(100, 45),
            ),
            onPressed: () {},
            child: const Text(
              "Camera",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

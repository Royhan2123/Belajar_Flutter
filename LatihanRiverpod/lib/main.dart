import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latihan_riverpod/page/counter_page.dart';

void main() {
  runApp(
    // provider scope digunakan untuk menyambungkan bagian pada penggunakan provider ke dalam void main
    const ProviderScope(
      child: MainActivity(),
    ),
  );
}

class MainActivity extends StatelessWidget {
  const MainActivity({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const CounterPage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latihan_riverpod/page/counter_page.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MainActivity(),
    ),
  );
}

final nameProvider = Provider<String>(
  (ref) {
    return "Hello Royhan";
  },
);

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


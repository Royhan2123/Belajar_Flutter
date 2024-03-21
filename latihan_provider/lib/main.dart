import 'package:flutter/material.dart';
import 'package:latihan_provider/done_modoule_provider.dart';
import 'package:latihan_provider/provider_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainActivity());
}

class MainActivity extends StatelessWidget {
  const MainActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneModuleProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ProviderPage(),
      ),
    );
  }
}

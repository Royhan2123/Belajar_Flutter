import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// untuk menggunakan object refrence kita harus mengextend consumerWidget
// lalu otomatis akan terjadi error di Widget Build,lalu tinggal kita tambahkan saja
// Widger Ref, dengan nama variabelnya ref (WidgetRef ref).
// ( WidgetRef adalah objek yang diberikan kepada widget oleh Riverpod, sehingga widget dapat mengakses 
// dan menggunakan provider yang dideklarasikan di dalam ProviderScope terdekat ).
class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
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

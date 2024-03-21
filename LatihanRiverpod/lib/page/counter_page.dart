// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latihan_riverpod/providers/counter_notifier.dart';

// untuk menggunakan object refrence kita harus mengextend consumerWidget
// lalu otomatis akan terjadi error di Widget Build,lalu tinggal kita tambahkan saja

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  // Widger Ref, dengan nama variabelnya ref (WidgetRef ref).
  // ( WidgetRef adalah objek yang diberikan kepada widget oleh Riverpod, sehingga widget dapat mengakses
  // dan menggunakan provider yang dideklarasikan di dalam ProviderScope terdekat ).
  Widget build(BuildContext context, WidgetRef ref) {
    print("build page");
    return Scaffold(
      body: Center(
        child: Consumer(builder: (
          context,
          wiRef,
          child,
        ) {
          print("build Text Counter");
          int counter = wiRef.watch(
            counterNotifierProvider,
          );
          return Text("$counter");
        }),
      ),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton(
            heroTag: "decrement",
            onPressed: () {
              ref.read(counterNotifierProvider.notifier).decrement();
            },
            child: const Icon(
              Icons.remove,
            ),
          ),
          FloatingActionButton(
            heroTag: "increment",
            onPressed: () {
              ref.read(counterNotifierProvider.notifier).increment();
            },
            child: const Icon(
              Icons.add,
            ),
          ),
        ],
      ),
    );
  }
}

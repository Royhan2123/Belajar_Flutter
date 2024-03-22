import 'package:app_todo/model/todo.dart';
import 'package:app_todo/providers/todo_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoApp extends ConsumerWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Consumer(
        builder: (context, wiRef, child) {
          List<Todo> todos = wiRef.watch(todoNotifierProvider);
          return ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              Todo todo = todos[index];
              return ListTile(
                leading: IconButton.filledTonal(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                  ),
                ),
                title: Text(todo.title),
                subtitle: Text(todo.body),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

import 'package:app_todo/model/todo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'todo_provider.g.dart';

@riverpod
class TodoNotifier extends _$TodoNotifier {
  @override
  List<Todo> build() => <Todo>[];

  add(String title, String body) {
    Todo newTodo = Todo(
      id: const Uuid().v4(),
      title: title,
      body: body,
    );
    state = [...state, newTodo];
  }

  update(Todo newTodo) {
    int index = state.indexWhere((element) => element.id == newTodo.id);
    state[index] = newTodo;
    state = [...state];
  }

  remove(String id) {
    state.removeWhere((element) => element.id == id);
    state = [...state];
  }
}

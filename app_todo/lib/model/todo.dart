class Todo {
  final String id;
  final String title;
  final String body;

  const Todo({
    required this.id,
    required this.title,
    required this.body,
  });

  Todo copyWith({
    String? id,
    String? title,
    String? body,
  }) {
    return Todo(
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }
}

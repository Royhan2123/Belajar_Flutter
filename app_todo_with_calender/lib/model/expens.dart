import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category {
  food,
  travel,
  leisure,
  work,
}

class Expens {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  Expens({
    required this.amount,
    required this.date,
    required this.title,
    required this.category,
  }) : id = uuid.v4();
}

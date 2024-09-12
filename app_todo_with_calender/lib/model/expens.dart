import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category {
  food,
  travel,
  leisure,
  work,
}

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class ExpensModel {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  ExpensModel({
    required this.amount,
    required this.date,
    required this.title,
    required this.category,
  }) : id = uuid.v4();

  String get formattedDate {
    return formatter.format(
      date,
    );
  }
}

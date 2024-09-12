import 'package:app_todo_with_calender/model/expens.dart';
import 'package:app_todo_with_calender/widget/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  final List<ExpensModel> expenses;
  const ExpensesList({
    required this.expenses,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => ExpenseItem(
        expense: expenses[index],
      ),
    );
  }
}

import 'package:app_todo_with_calender/model/expens.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  final ExpensModel expense;
  const ExpenseItem({
    super.key,
    required this.expense,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          children: [
            Text(
              expense.title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text(
                  '\$ ${expense.amount.toStringAsFixed(
                    2,
                  )}',
                ),
                const Spacer(),
                Row(
                  children: [
                    const Icon(
                      Icons.alarm,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      expense.date.toString(),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

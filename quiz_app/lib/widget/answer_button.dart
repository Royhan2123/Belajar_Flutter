import 'package:flutter/material.dart';
import 'package:quiz_app/theme/font.dart';

class AnswerButton extends StatelessWidget {
  final String title;
  final void Function() onClick;
  const AnswerButton({
    super.key,
    required this.onClick,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        1,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 33, 1, 99),
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 10,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              15,
            ),
          ),
        ),
        onPressed: onClick,
        child: Text(
          title,
          style: whiteStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

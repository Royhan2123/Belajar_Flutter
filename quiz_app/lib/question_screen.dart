import 'package:flutter/material.dart';
import 'package:quiz_app/widget/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 36, 5, 90),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "The question...",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              AnswerButton(
                onClick: () {},
                title: "Answer 1",
              ),
              const SizedBox(
                height: 20,
              ),
              AnswerButton(
                onClick: () {},
                title: "Answer 2",
              ),
              const SizedBox(
                height: 20,
              ),
              AnswerButton(
                onClick: () {},
                title: "Answer 3",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

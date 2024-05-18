import 'package:flutter/material.dart';
import 'package:quiz_app/data/question.dart';
import 'package:quiz_app/widget/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = question[0];
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(
          255,
          61,
          10,
          150,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  currentQuestion.text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),

                /**
                 *  ... adalah operator spreat yang digunakan untuk 
                 *  menyatukan beberapa elemen iterable ke dalam 
                 *  satu list atau set.
                 *  contoh seperti : a = 1,2,3 b = 4,5,
                 *  List<int> allNumber = [...a, ...b];
                 *  print(allNumber) => output: [1,2,3,4,5,6];
                 */
                ...currentQuestion.answer.map(
                  (answer) {
                    return AnswerButton(
                      onClick: () {},
                      title: answer,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

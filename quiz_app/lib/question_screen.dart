import 'package:flutter/material.dart';
import 'package:quiz_app/data/question.dart';
import 'package:quiz_app/theme/font.dart';
import 'package:quiz_app/widget/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({
    super.key,
    required this.onSelectAnswer,
  });

  final void Function(
    String answer,
  ) onSelectAnswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(
    String selectedAnswer,
  ) {
    widget.onSelectAnswer(
      selectedAnswer,
    );
    setState(
      () {
        if (currentQuestionIndex < question.length - 1) {
          currentQuestionIndex++;
        } else {
          Navigator.pop(
            context,
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = question[currentQuestionIndex];
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 25, 1, 66),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  currentQuestion.text,
                  style: whiteStyle.copyWith(
                    fontSize: 17,
                    color: const Color.fromARGB(255, 174, 127, 255),
                    fontWeight: FontWeight.bold,
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
                ...currentQuestion.getShuffledAnswers().map(
                  (answer) {
                    return AnswerButton(
                      onClick: () {
                        answerQuestion(
                          answer,
                        );
                      },
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

import 'package:flutter/material.dart';
import 'package:quiz_app/data/question.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/theme/font.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    super.key,
  });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final List<String> selectAnswer = [];

  void chooseAnswer(
    String answer,
  ) {
    selectAnswer.add(answer);

    if (selectAnswer.length == question.length) {
      setState(() {
        const SplashScreen();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 33, 5, 81),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Opacity(
                opacity: 0.5,
                child: Image.asset(
                  "assets/quiz-logo.png",
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                  color: const Color.fromARGB(
                    255,
                    203,
                    203,
                    203,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              "Learn Flutter the fun away",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(
                  255,
                  14,
                  8,
                  174,
                ),
                foregroundColor: Colors.deepPurple,
                minimumSize: const Size(
                  200,
                  40,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuestionScreen(
                      onSelectAnswer: chooseAnswer,
                    ),
                  ),
                );
              },
              label: Text(
                "Start Quiz",
                style: whiteStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              icon: const Icon(
                Icons.arrow_forward_sharp,
                size: 15,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(151, 255, 255, 255),
        ),
        const SizedBox(
          height: 50,
        ),
        const Text(
          "Learn the flutter fun way",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          label: const Text(
            "Start Quiz",
            style: TextStyle(color: Color.fromARGB(255, 218, 220, 249)),
          ),
          icon: const Icon(
            Icons.arrow_right_alt,
            color: Color.fromARGB(255, 218, 220, 249),
          ),
        )
      ],
    );
  }
}

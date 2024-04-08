import 'package:flutter/material.dart';

class QuestionPage extends StatelessWidget {
  QuestionPage(this.startQuiz, {super.key});
  dynamic Function() startQuiz;
  var list = ["Answer is 1", "Answer is 2", "Answer is 3", "Answer is 4"];

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Center(
        child: Container(
          alignment: Alignment.center,
          width: 400,
          child: const Text(
            "What is the main buiding block of Flutter UI",
            style: TextStyle(
              color: Color.fromARGB(255, 168, 183, 243),
              fontSize: 22,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      const SizedBox(height: 30),
      Button(list[0], startQuiz),
      Button(list[1], startQuiz),
      Button(list[2], startQuiz),
      Button(list[3], startQuiz),
    ]);
  }
}

class Button extends StatelessWidget {
  const Button(this.text_, this.press, {super.key});
  final String text_;
  final void Function() press;

  @override
  Widget build(context) {
    return Column(
      children: [
        OutlinedButton(
          onPressed: press,
          style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Color.fromARGB(255, 10, 54, 90)),
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              backgroundColor: const Color.fromARGB(255, 10, 54, 90)),
          child: Text(
            text_,
            style: const TextStyle(
                color: Color.fromARGB(255, 218, 220, 249), fontSize: 16),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}

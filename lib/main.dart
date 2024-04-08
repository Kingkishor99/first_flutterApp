import 'package:first_app/pages/question_page.dart';
import 'package:first_app/pages/welcome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// void main() {
//   runApp(const MaterialApp(home: Mypage("home page")));
// }

//2nd main

// void main() {
//   int a = 110101010;

//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.blueAccent,
//         body: Center(
//           child: Column(
//             children: [
//               const Text("Home Page"),
//               const SizedBox(
//                 width: 100,
//                 height: 50,
//               ),
//               Image.asset(
//                 'assets/images/image.jpg',
//                 width: 100,
//                 color: Colors.purple,
//               ),
//               Abc("akjsdskajsa>>>>>>", "second text", a),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }

// class Abc extends StatelessWidget {
//   Abc(this.text, this.text2, this.value, {super.key});
//   int a = 10;

//   final String text;
//   final String text2;
//   final int value;

//   @override
//   Widget build(context) {
//     return Column(
//       children: [Text(text), Text(text2), Text(value.toString()), Button()],
//     );
//   }
// }

// class Button extends StatefulWidget {
//   const Button({super.key});

//   @override
//   State<Button> createState() {
//     return _ButtonState();
//   }
// }

// class _ButtonState extends State<Button> {
//   var a = 20;
//   @override
//   Widget build(context) {
//     void onPressed() {
//       setState(() {
//         if (a == 10) {
//           a = 20;
//         } else {
//           a = 10;
//         }
//       });
//     }

//     if (a == 20) {
//       print("ok ${a.toString()}");
//     } else {
//       print("ok>>>>>${a.toString()}");
//     }

//     return Column(
//       children: [
//         TextButton(
//           onPressed: onPressed,
//           child: const Text("Press Here"),
//         ),
//         Text('value is ${a.toString()}')
//       ],
//     );
//   }
// }

//3rd---------
void main() {
  runApp(
    const MaterialApp(
      home: Quiz(),
    ),
  );
}

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  int aa = 1;
  void startQuiz() {
    setState(() {
      aa == 1 ? aa = 2 : aa = 1;
    });
  }

  @override
  Widget build(context) {
    Widget displayScreen = WelcomePage(startQuiz);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 83, 219),
      body: Center(
        child: aa == 1 ? QuestionPage(startQuiz) : WelcomePage(startQuiz),
      ),
    );
  }
}

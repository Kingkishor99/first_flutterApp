import 'package:flutter/material.dart';

class FirstWidget extends StatelessWidget {
  const FirstWidget(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 10, 230, 109),
          Colors.indigoAccent,
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Center(
        child: Text(
          text,
        ),
      ),
    );
  }
}

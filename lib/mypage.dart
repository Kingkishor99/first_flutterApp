import 'package:first_app/firstwidget.dart';
import 'package:flutter/material.dart';

class Mypage extends StatelessWidget {
  const Mypage(
    this.text, {
    super.key,
  });

  final String text;

  void onPressedFuntion() {
    int a = 1;

    int b = a + 1;
    print(b);
    a = b;
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: Tab(
        child: Text(
          text,
          style: const TextStyle(
              backgroundColor: Color.fromARGB(0, 242, 1122, 243),
              color: Color.fromARGB(255, 246, 255, 0),
              fontWeight: FontWeight.bold,
              fontSize: 22),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 246, 165, 2),
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.purpleAccent,
            border: Border(bottom: BorderSide(width: 50))),
        child: Column(
          children: [
            const FirstWidget("this is the page"),
            const SizedBox(
              height: 40,
            ),
            const Text("this is the second text"),
            const SizedBox(
              height: 40,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text("aaaaaaa"),
                const SizedBox(
                  height: 50,
                ),
                Image.asset(
                  'assets/images/image1.jpg',
                  width: 190,
                ),
                TextButton(
                    onPressed: onPressedFuntion,
                    child: const Text("Press Here"))
              ],
            )
          ],
        ),
      ),
    );
  }
}

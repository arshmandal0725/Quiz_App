import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen(this.func, {super.key});
  final void Function() func;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding:const  EdgeInsets.all(50),
          child: Image.asset(
            "assets/images/quiz-logo.png",
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        const Text("Learn Flutter in fun way!",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton.icon(
            onPressed: func,
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(400, 300, 200, 100)),
            icon: const Icon(Icons.arrow_right_alt_outlined),
            label: const Text("Start Quiz"))
      ],
    );
  }
}

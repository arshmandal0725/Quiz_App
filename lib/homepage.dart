import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {

  const FirstScreen(this.firstpage, {super.key});
  
  final void Function() firstpage;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 124, 37, 139),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            height: 350,
            width: 450,
            color: const Color.fromARGB(180, 255, 255, 255),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text('Learn Flutter the fun way!',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              )),
          const SizedBox(
            height: 10,
          ),
          OutlinedButton.icon(
              onPressed: () {
                firstpage;
              },
              style:
                  OutlinedButton.styleFrom(padding: const EdgeInsets.all(20)),
              icon: const Icon(
                Icons.arrow_right_alt_outlined,
                color: Colors.white,
              ),
              label: const Text(
                "Start Quiz",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ))
        ],
      ),
    );
  }
}

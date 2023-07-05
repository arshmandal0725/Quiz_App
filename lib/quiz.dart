import 'package:flutter/material.dart';
import 'package:quiz_app/first_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/second_screen.dart';
import 'package:quiz_app/qb.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return QuizState();
  }
}

class QuizState extends State<Quiz> {
  var x = 0;
  List<String> selectedans = [];

  void switchscreen() {
    setState(() {
      x = 1;
    });
  }

  void restart() {
    setState(() {
      selectedans = [];
      x = 0;
    });
  }

  void select(String answer) {
    selectedans.add(answer);
    if (selectedans.length == questions.length) {
      setState(() {
        x = 2;
      });
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(400, 300, 200, 100),
          Color.fromARGB(100, 100, 100, 100),
          Color.fromARGB(100, 200, 300, 400)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: (x == 2)
            ? ResultScreen(restart, selectedans)
            : (x == 0)
                ? FirstScreen(switchscreen)
                : SecondScreen(s: select),
      )),
    );
  }
}

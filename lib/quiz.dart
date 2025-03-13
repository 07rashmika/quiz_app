import 'package:flutter/material.dart';
import 'package:quiz_app/landing_page.dart';
import 'package:quiz_app/quiz_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'landing-page'; //x

  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = LandingPage(switchPage);
  //   super.initState();
  // }
  void switchPage() {
    setState(() {
      activeScreen = 'quiz-page';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
            ),
          ),
          child:
              activeScreen == 'landing-page'
                  ? LandingPage(switchPage)
                  : const QuizPage(),
        ),
      ),
    );
  }
}

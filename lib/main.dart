import 'package:app/component/my_qustions.dart';
import 'package:app/home.dart';
import 'package:app/qustions.dart';
import 'package:app/result_page.dart';

import 'package:flutter/material.dart';

main() {
  runApp(Quiz());
}

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  Widget? active_screen;

  chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == qustions.length) {
      print(selectedAnswers);
      setState(() {
        active_screen = Results(selectedAnswers,restart);
      });
    }
  }

  restart() {
    setState(() {
      selectedAnswers = [];
      active_screen = Home(switch_screen);
      
    });
    
  }

  void switch_screen() {
    setState(() {
      active_screen = Questions(chooseAnswer);
    });
  }

  void initState() {
    super.initState();
    active_screen = Home(switch_screen);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: active_screen,
    );
  }
}

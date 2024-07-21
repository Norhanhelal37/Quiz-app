import 'package:app/component/my_qustions.dart';
import 'package:app/component/question_page.dart';
import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  Questions(this.onSelectd, {super.key});
  final void Function(String) onSelectd;

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var current_quesindx = 0;

  void answerquestion(String answer) {
    widget.onSelectd(answer);
    setState(() {
      current_quesindx += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final current_quest = qustions[current_quesindx];
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 104, 156, 247),
          Color.fromARGB(255, 166, 218, 241)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Column(
            children: [
              Text(
                textAlign: TextAlign.center,
                current_quest.qusetion,
                style: const TextStyle(fontSize: 30, color: Colors.white),
              ),
              ...current_quest.getshuffled().map((e) {
                return Container(
                    margin: EdgeInsets.all(20),
                    child: AnswerButtom(e, () {
                      answerquestion(e);
                    }));
              })
            ],
          ),
        ),
      ),
    );
  }
}

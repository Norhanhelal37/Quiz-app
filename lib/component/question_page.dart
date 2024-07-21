import 'package:flutter/material.dart';

class AnswerButtom extends StatelessWidget {
  final String answer;
  final void Function() onPressed;
  const AnswerButtom(this.answer, this.onPressed, {super.key});

  @override
  // chooseAnswer(answer);
  Widget build(BuildContext context) {
    
    return Container(
      height: 60,
      width: 300,
      child: OutlinedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateColor.resolveWith((states) => Colors.amber)),
        onPressed: onPressed,
        child: Center(
          child: Text(
            answer,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}

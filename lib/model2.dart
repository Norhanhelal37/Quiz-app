import 'package:flutter/material.dart';

class Format extends StatelessWidget {
  const Format(this.qustion_num, this.ans, this.correct, {super.key});
  final String qustion_num;
  final String ans;
  final String correct;

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [

        CircleAvatar(
          backgroundColor:ans == correct ? Colors.greenAccent : Colors.pinkAccent,
          child: Text("$qustion_num",
           textAlign: TextAlign.center,
           style:const TextStyle(
            color:Colors.black
           ),
        ),
        ),

        SizedBox(height: 20,),
        Text("Your Answer :$ans",
           textAlign: TextAlign.center,
           style:const TextStyle(
            fontSize: 18,
            color:Color.fromARGB(255, 6, 141, 130),
            fontWeight: FontWeight.bold
            
           ),
        ),

        SizedBox(height: 10,),
        Text("Correct Answer: $correct",
           textAlign: TextAlign.center,
           style:const TextStyle(
            fontSize: 18,
            color:Color.fromARGB(255, 32, 55, 158),
            fontWeight: FontWeight.bold
           ),
        ),

        SizedBox(height: 20,)
      ],

      


    );

  }
}

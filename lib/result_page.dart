// import "dart:ffi";

import "package:app/component/my_qustions.dart";
import "package:app/home.dart";
import "package:app/model2.dart";
// import "package:app/qustions.dart";
import "package:flutter/material.dart";
// import "package:flutter/widgets.dart";

class Results extends StatelessWidget {
  Results(this.selected, this.rest, {super.key});

  final List<String> selected;
  final Function() rest;

  final List<Map<String, Object>> summary = [];

  int tru = 0;

  int check() {
    for (var i = 0; i < selected.length; i++) {
      print(i);
      if (selected[i] == qustions[i].answer[0] && i < selected.length) {
        tru += 1;
      }
    }
    return tru;
  }

  List<Map<String, Object>> getsummary() {
    for (var i = 0; i < selected.length; i++) {
      summary.add({
        "question": i + 1,
        "qusetion_content": qustions[i].qusetion,
        "selected_answer": selected[i],
        "correct_answer": qustions[i].answer[0]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    tru = check();
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 104, 156, 247),
            Color.fromARGB(255, 166, 218, 241)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          width: double.infinity,
          height: double.infinity,
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                "You Have answerd $tru of ${qustions.length} Lets Show Your work!",
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),

              const SizedBox(
                height: 20,
              ),

              ...getsummary().map((e) => Column(
                    children: [
                      Format(
                          e['question'].toString(),
                          e['selected_answer'].toString(),
                          e['correct_answer'].toString()),
                    ],
                  )),

              // SizedBox(height: 40,),

              Container(
                width: 100,
                margin: EdgeInsets.all(50),
                child: OutlinedButton(
                    onPressed: rest,
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Color.fromARGB(255, 89, 97, 168))),
                    child: const Text(
                      "Restart !",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
              )
            ],
          )),
    );
  }
}

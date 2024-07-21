// import 'package:flutter/material.dart';

class Question {
  Question(
    this.qusetion,
    this.answer,
  );
  String qusetion;
  List<String> answer;

  List<String> getshuffled() {
    final shuffled_list = List.of(answer);
    shuffled_list.shuffle();
    return shuffled_list;
  }
}

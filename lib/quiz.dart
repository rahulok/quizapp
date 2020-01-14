import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function func;
  final questions;
  final int index;

  Quiz(this.func, this.questions, this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[index]['q']),
        ...(questions[index]['a'] as List<Map<String, Object>>).map((ansText) {
          return Answer(func, ansText);
        }).toList()
      ],
    );
  }
}

import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final questions = [
    {
      'q': 'What is 2^6',
      'a': [
        {'text': '32', 'score': 0},
        {'text': '64', 'score': 1},
        {'text': '128', 'score': 0}
      ],
    },
    {
      'q': 'What color is a red ball',
      'a': [
        {'text': 'Pink', 'score': 0},
        {'text': 'Red', 'score': 1},
        {'text': 'Blue', 'score': 0},
        {'text': 'Magenta', 'score': 0}
      ],
    },
    {
      'q': 'What is the capital of Libya',
      'a': [
        {'text': 'Tripoli', 'score': 1},
        {'text': 'Canberra', 'score': 0},
        {'text': 'Baghdad', 'score': 0},
        {'text': 'Colombo', 'score': 0}
      ],
    },
  ];

  var index = 0, score = 0;
  void changestate(check) {
    setState(() {});
    index = index + 1;
    if (check == "right") score++;
    print('The index is $index');
  }

  void resetfunc() {
    setState(() {
      score = index = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Little good app'),
        ),
        body: index < questions.length
            ? Quiz(changestate, questions, index)
            : Result(score, resetfunc),
      ),
    );
  }
}

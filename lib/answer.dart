import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function changestate;
  final Map<String, Object> ansText;
  Answer(this.changestate, this.ansText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      width: double.infinity,
      child: RaisedButton(
        child: Text(ansText['text']),
        onPressed: () {
          if (ansText['score'] == 1) {
            print('Right ans');
            changestate("right");
          } else {
            print('Wrong ans');
            changestate("wrong");
          }
          // changestate();
        },
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetfunc;

  Result(this.score, this.resetfunc);

  String get getfunc {
    String ok;
    ok = 'The final score is $score';
    return ok;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      // padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Text(
            getfunc,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            color: Colors.blue,
            elevation: 10,
            child: Text('RESET'),
            textColor: Colors.white,
            onPressed: resetfunc,
          ),
        ],
      ),
    );
  }
}

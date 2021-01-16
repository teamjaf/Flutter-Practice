import 'package:flutter/material.dart';

import './main.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 12) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 10) {
      resultText = 'You are Pretty likable!';
    } else {
      resultText = 'Pretty average guy :(';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(child: Text('Restart Quiz'), onPressed: resetHandler),
        ],
      ),
    );
  }
}

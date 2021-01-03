import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyAPP());

class MyAPP extends StatefulWidget {

@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAPPState();
  }
}

class _MyAPPState extends State<MyAPP>{
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;          
    });    
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's you favaourite Color?",
      "What's you favaourite Food?",
      "What's you favaourite Player?",
      "What's you favaourite Bird?",
      "What's is your favourite Animal?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text("Ans 1"),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text("Ans 2"),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text("Ans 3"),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}


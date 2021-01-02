import 'package:flutter/material.dart';

void main() => runApp(MyAPP());

class MyAPP extends StatelessWidget {
  
  void answerQuestion() {
    print("Ans chosen");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's you favaourite color?",
      "What's is your favourite animal?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Text(
              questions.elementAt(0),
            ),
            RaisedButton(
              child: Text("Ans 1"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Ans 2"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Ans 3"),
              onPressed: () => print("Yeah it is working"),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyAPP());

class MyAPP extends StatefulWidget {

@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAPPState();
  }
}

class MyAPPState extends State<MyAPP>{
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;          
    });    
    print(questionIndex);
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
            Text(
              questions[questionIndex],
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

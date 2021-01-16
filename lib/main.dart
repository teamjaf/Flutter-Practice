import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyAPP());

class MyAPP extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAPPState();
  }
}

class _MyAPPState extends State<MyAPP> {
  final _questions = const [
    {
      'questionText': "What's you favaourite Color?",
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 8},
        {'text': 'Blue', 'score': 6},
        {'text': 'White', 'score': 2}
      ]
    },
    {
      'questionText': "What's you favaourite Food?",
      'answers': [
        {'text': 'Burger', 'score': 10},
        {'text': 'Mutton', 'score': 8},
        {'text': 'Fish', 'score': 6},
        {'text': 'Milk', 'score': 2}
      ]
    },
    {
      'questionText': "What's you favaourite Player?",
      'answers': [
        {'text': 'Virat', 'score': 10},
        {'text': 'Mahmudullah', 'score': 8},
        {'text': 'Tamim', 'score': 6},
        {'text': 'Sakib', 'score': 2}
      ]
    },
    {
      'questionText': "What's you favaourite Bird?",
      'answers': [
        {'text': 'Doel', 'score': 10},
        {'text': 'Tia', 'score': 8},
        {'text': 'Moyna', 'score': 6},
        {'text': 'Shakil', 'score': 2}
      ]
    },
    {
      'questionText': "What's is your favourite Animal?",
      'answers': [
        {'text': 'Tiger', 'score': 10},
        {'text': 'Cow', 'score': 8},
        {'text': 'Monkey', 'score': 6},
        {'text': 'Wolf', 'score': 2}
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more question');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

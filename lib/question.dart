import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String qustionText;

  Question(this.qustionText);

  @override
  Widget build(BuildContext context) {    
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        qustionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}

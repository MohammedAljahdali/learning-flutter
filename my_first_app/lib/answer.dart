import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  add(int value, int value2) {
    return value + value2;
  } 
  
  final Function answerQuestion;
  final String answerText;
  Answer(this.answerQuestion, this.answerText);
  
  // Answer (answerQuestion, answerText, score) {
  //   answerQuestion = answerQuestion;
  //   answerText = answerText;
  //   answerScore = answerScore + score;
  // }
  
  


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blueGrey,
        child: Text(answerText),
        onPressed: answerQuestion,
        textColor: Colors.white,
      ),
    );
  }
}

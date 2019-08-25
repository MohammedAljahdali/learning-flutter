import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerQuestion;
  Answer(this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blueGrey,
        child: Text('answer'),
        onPressed: answerQuestion,
        textColor: Colors.white,
      ),
    );
  }
}

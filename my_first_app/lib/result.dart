import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetIndex;

  Result(this.resultScore, this.resetIndex);
  String get resultPhrase {
    String resultText;
    if (resultScore >= 20)
      resultText = 'You Are Amazing';
    else if (resultScore >= 15)
      resultText = 'You Are fiffty fifty';
    else
      resultText = 'You Are MEH!';

    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'Your Score is $resultScore, and $resultPhrase',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        RaisedButton(
          child: Text('Retake the quiz'),
          onPressed: resetIndex,
        )
      ],
    );
  }
}

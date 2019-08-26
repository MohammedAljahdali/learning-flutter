import 'package:flutter/material.dart';

import './result.dart';
import './quiz.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyFirstAppState();
  }
}

class _MyFirstAppState extends State<MyFirstApp> {
  final _questions = const [
    {
      'questionText': 'what\'s your favorite color?',
      'answers': [
        {'text': 'blue', 'score': 10},
        {'text': 'black', 'score': 8},
        {'text': 'gray', 'score': 8},
        {'text': 'red', 'score': 3}
      ],
    },
    {
      'questionText': 'what\'s your favorite animal?',
      'answers': [
        {'text': 'cats', 'score': 3},
        {'text': 'dogs', 'score': 2},
        {'text': 'lions', 'score': 5},
        {'text': 'tigers', 'score': 7}
      ],
    },
    {
      'questionText': 'what\' is your favorite day?',
      'answers': [
        {'text': 'friday', 'score': 9},
        {'text': 'sunday', 'score': 2},
        {'text': 'wensday', 'score': 9},
        {'text': 'thursday', 'score': 7}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void _resetIndex() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            // ? Column(
            //     children: [
            //       Question(
            //         questionText: questions[_questionIndex]['questionText'],
            //       ),
            //       ...(questions[_questionIndex]['answers'] as List<String>)
            //           .map((answer) {
            //         return Answer(_answerQuestion, answer);
            //       }).toList()
            //     ],
            //   )
            : Result(_totalScore, _resetIndex),
      ),
    );
  }
}

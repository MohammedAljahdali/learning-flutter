import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyFirstAppState();
  }
}

class _MyFirstAppState extends State<MyFirstApp> {
  var _questions = [
    'what\'s your favorite color?',
    'what\'s your favorite animal?',
    'what\' is your favorite day?',
  ];
  var _questionIndex = 0;
  void answerQuestion() {
    setState(() {
      _questionIndex++;
      if (_questionIndex == _questions.length) _questionIndex = 0;
    });
    print('Answer chosen! Q=$_questionIndex');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questionText: _questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('Answer1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer3'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}

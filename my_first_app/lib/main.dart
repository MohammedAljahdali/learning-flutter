import 'package:flutter/material.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatelessWidget {
  var questions = [
    'what\'s your favorite color?',
    'what\'s your favorite animal?',
    'what\' is your favorite day?',
  ];
  var questionIndex = 0;
  void answerQuestion() {
    questionIndex++;
    if (questionIndex == questions.length)
      questionIndex = 0;
   print('Answer chosen! Q=$questionIndex');
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
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer2'),
              onPressed: () => print('Answer2 is chosen'),
            ),
            RaisedButton(
              child: Text('Answer3'),
              onPressed: () {
                print('Answer 3 is ...');
                print('CHHHHOSEN');
              },
            ),
          ],
        ),
      ),
    );
  }
}

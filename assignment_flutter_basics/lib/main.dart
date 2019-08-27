// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:assignment_flutter_basics/myText.dart';
import 'package:assignment_flutter_basics/textControl.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  var _texts = ['Text 1', 'Words 2', 'Talk 3'];
  var _textIndex = 0;

  void _changeText() {
    setState(() {
      _textIndex++;
    });
    if (_textIndex == _texts.length) _textIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment 1: flutter basics'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyText(_texts, _textIndex),
            TextControl(_changeText),
          ],
        ),
      ),
    );
  }
}

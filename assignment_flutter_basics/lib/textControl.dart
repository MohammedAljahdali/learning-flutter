import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function textHandler;

  TextControl(this.textHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text('Change Text'),
        onPressed: textHandler,
      ),
    );
  }
}

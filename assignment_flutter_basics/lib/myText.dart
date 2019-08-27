import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final List<String> texts;
  final int textIndex;

  MyText(this.texts, this.textIndex);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
              texts[textIndex],
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
    );
  }
}
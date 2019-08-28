import 'package:flutter/material.dart';

import './new_transction.dart';
import './transction_list.dart';
import '../models/tansction.dart';

class UserTransctions extends StatefulWidget {
  @override
  _UserTransctionsState createState() => _UserTransctionsState();
}

class _UserTransctionsState extends State<UserTransctions> {
  final List<Transction> transctions = [
    Transction(
      id: 't1',
      title: 'new laptop',
      amount: 640,
      date: DateTime.now(),
    ),
    Transction(
      id: 't2',
      title: 'new pc',
      amount: 1300,
      date: DateTime.now(),
    ),
  ];

  void newTx(String title, num amount) {
    final tx = Transction(
        amount: amount,
        title: title,
        date: DateTime.now(),
        id: DateTime.now().toString());
    setState(() {
      transctions.add(tx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransction(newTx),
        TransctionList(transctions),
      ],
    );
  }
}

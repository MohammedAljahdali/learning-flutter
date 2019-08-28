import 'package:flutter/foundation.dart';

class Transction {
  final String id;
  final String title;
  final num amount;
  final DateTime date;

  Transction({
    @required this.amount,
    @required this.date,
    @required this.id,
    @required this.title,
  });
}

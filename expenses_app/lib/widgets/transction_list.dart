import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/tansction.dart';



class TransctionList extends StatelessWidget {

  final List<Transction> transctions;

  TransctionList(this.transctions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
              itemCount: transctions.length,
              itemBuilder: (context, index) {
                return Card(
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            '${transctions[index].amount.toStringAsFixed(2)}\$',
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          margin: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.deepPurple,
                              width: 2,
                            ),
                          ),
                          padding: EdgeInsets.all(10),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // margin: EdgeInsets.fromLTRB(10, 10, 10, 2),
                              // padding: EdgeInsets.all(5),
                              child: Text(
                                transctions[index].title,
                                style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              // margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
                              // padding: EdgeInsets.all(4),
                              child: Text(
                                DateFormat('EEE, MMM d, yyyy').format(transctions[index].date),
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
              },
            ),
    );
  }
}
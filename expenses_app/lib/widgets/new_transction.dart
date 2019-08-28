import 'package:flutter/material.dart';

class NewTransction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final Function addTxHandler;

  void submitTx() {
    if (titleController.text.isEmpty || double.parse(amountController.text) <= 0) {
      return;
    }
    addTxHandler(titleController.text, double.parse(amountController.text));
  }
  NewTransction(this.addTxHandler);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              onSubmitted: (_) => submitTx(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              onSubmitted: (_) => submitTx(),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
            FlatButton(
              child: Text(
                'Add Transction',
                style: TextStyle(
                  color: Colors.deepPurple,
                ),
              ),
              onPressed: submitTx,
            ),
          ],
        ),
      ),
    );
  }
}

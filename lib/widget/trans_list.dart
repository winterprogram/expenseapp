import 'package:flutter/material.dart';
import '../models/trans.dart';
import 'package:intl/intl.dart';



class Transaction extends StatelessWidget{
  final List<Trans>transactions;

  // const TransactionState({Key key, this.transactions}) : super(key: key);
  
  Transaction(this.transactions);
  @override
  Widget build(BuildContext context) {
    return Column(
        children: transactions.map((test) {
      return Card(
        elevation: 5,
        // shape: ShapeBorder.lerp(2, 2, 4),
        child: Row(
          children: <Widget>[
            Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Text(
                  '\$ ${((test.amount) / 79).round()}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.purpleAccent, width: 2)),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  test.title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Container(
                  child: Text(
                    DateFormat.yMMMd().format(test.date),
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  //  color: ,
                )
              ],
            )
          ],
        ),
      );
    }).toList());
  }
}

import 'package:flutter/material.dart';
import './trans.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePage();
  }
}

class HomePage extends State<MyApp> {
  final List<Trans> trans = [
    Trans(id: '1r', title: 'Laptop', amount: 55000, date: DateTime.now()),
    Trans(id: '13', title: 'Edu', amount: 24000, date: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.purpleAccent,
              title: Center(
                child: Text('Expense Tracker'),
              ),
            ),
            body: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
               
              Card(
                child: Container(
                  width: double.infinity,
                  color: Colors.redAccent,
                  height: 150,
                  // child: Text('Charts area'),
                ),
              ),
              Card(
                child: Row(
                  children: trans.map((test) {
                    return Card(
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Text(
                              test.amount.toString(),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text(test.title),
                              Text(test.date.toString())
                            ],
                          )
                        ],
                      ),
                    );
                  }).toList(),
                ),
              )
            ])));
  }
}

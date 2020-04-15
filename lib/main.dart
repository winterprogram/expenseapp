import 'package:expenseapp/widget/new_trans.dart';
import 'package:expenseapp/widget/trans_list.dart';
import 'package:expenseapp/widget/user_trans.dart';
import 'package:flutter/material.dart';
// import './models/trans.dart';
// import './widget/trans_list.dart';
import 'package:intl/intl.dart';
// import 'package:flutter/src/widgets/framework.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePage();
  }
}

class HomePage extends State<MyApp> {
  // var titles = TextEditingController();
  // var inpamounts = TextEditingController();

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
                  Column(children: <Widget>[
                    Card(
                      elevation: 10,
                      child: Container(
                        width: double.infinity,
                        color: Colors.redAccent,
                        height: 150,
                        // child: Text('Charts area'),
                      ),
                    ),
                   Userdata()
                  ])
                ])));
  }
}

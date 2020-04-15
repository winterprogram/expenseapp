import 'package:flutter/material.dart';

import '../widget/new_trans.dart';
import '../widget/trans_list.dart';
import '../models/trans.dart';

class Userdata extends StatefulWidget {
  @override
  _UserdataState createState() => _UserdataState();
}

class _UserdataState extends State<Userdata> {
  final List<Trans> _userdata = [
    Trans(id: '1r', title: 'Laptop', amount: 55000, date: DateTime.now()),
    Trans(id: '13', title: 'Edu', amount: 24000, date: DateTime.now())
  ];

  void _data(String title, double amount) {
    final news = Trans(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        date: DateTime.now());
    setState(() {
      _userdata.add(news);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Newtrans(),
        Transaction(_userdata),
      ],
    );
  }
}

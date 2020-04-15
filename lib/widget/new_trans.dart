import 'package:flutter/material.dart';

class Newtrans extends StatefulWidget {
  @override
  _NewtransState createState() => _NewtransState();
}

class _NewtransState extends State<Newtrans> {
  String title;
  String inpamount;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Title',
                  ),
                  // controller: titles,
                  onChanged: (value) {
                    title = value;
                  },
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Amount'),
                  // controller: inpamounts,
                  onChanged: (value) {
                    inpamount = value;
                  },
                ),
                FlatButton(
                  child: Text('Add'),
                  textColor: Colors.purpleAccent,
                  onPressed: () {
                    _Userdata
                  },
                ),
              ],
            )));
  }
}

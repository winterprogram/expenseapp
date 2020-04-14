import 'package:flutter/foundation.dart';

class Trans {
  String id;
  String title;
  double amount;
  DateTime date;

  Trans( 
      {@required this.id, 
      @required this.title,
      @required this.amount,
      @required this.date});
}

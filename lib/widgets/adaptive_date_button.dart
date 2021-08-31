import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AdaptiveDateButton extends StatelessWidget {
  final DateTime showdate;
  AdaptiveDateButton(this.showdate);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.red),
      child: Text(
        DateFormat.yMMMd().format(showdate),
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

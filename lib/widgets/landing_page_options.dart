import 'package:flutter/material.dart';
import '../screens/create_transaction.dart';

class LandingPageOptions extends StatelessWidget {
  final String option;
  LandingPageOptions(this.option);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.red,
      onTap: () {
        if (option == 'Create Transaction') {
          Navigator.of(context).pushNamed(CreateTransaction.rout);
        } else if (option == 'Transaction Pending Approval') {
          //Rout for pending transacations
        } else {
          //Rout for approved for transaction
        }
      },
      child: Card(
        margin: EdgeInsets.all(5),
        elevation: 4,
        child: Container(
          height: 40,
          alignment: Alignment.center,
          width: double.infinity,
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.all(5),
          child: Text(
            option,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

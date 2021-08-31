import 'package:flutter/material.dart';
import 'transaction.dart';

class Transactions extends ChangeNotifier {
  List<Transaction> transactions = [];
  void createTransaction(Transaction tra) {
    transactions.add(tra);
    notifyListeners();
  }
}

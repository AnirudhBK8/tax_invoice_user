import 'package:flutter/material.dart';
import './screens/landing_page.dart';
import './screens/create_transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tax Invoice Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LandingPage(),
      routes: {
        CreateTransaction.rout: (ctx) => CreateTransaction(),
      },
    );
  }
}

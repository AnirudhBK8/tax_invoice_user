import 'package:flutter/material.dart';
import '../widgets/landing_page_options.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Invoice Application'),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LandingPageOptions('Create Transaction'),
              LandingPageOptions('Transaction Pending Approval'),
              LandingPageOptions('Approved Transaction')
            ],
          ),
        ));
  }
}

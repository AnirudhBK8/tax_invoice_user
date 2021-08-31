import 'package:flutter/material.dart';
import '../widgets/adaptive_date_button.dart';

class CreateTransaction extends StatefulWidget {
  static const rout = 'create transaction';

  @override
  _CreateTransactionState createState() => _CreateTransactionState();
}

class _CreateTransactionState extends State<CreateTransaction> {
  DateTime chosendate = DateTime.now();
  final form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Create transaction'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: form,
          child: Column(
            children: [
              //Enter the name here, can be fetched by an api and be given as initial value once backend is done
              Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(hintText: 'Enter your name here'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a valid name';
                    }
                    return null;
                  },
                ),
              ),
              //Enter employeeId here. This also can be given as initial value once the backend part is completed
              Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(hintText: 'Employee ID'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter a valid employee id';
                    }
                    return null;
                  },
                ),
              ),
              AdaptiveDateButton(chosendate),
              //Enter a valid header to browse the status of transaction
              Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  decoration:
                      InputDecoration(hintText: 'Title for transaction'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Dont leave this blank free as it is name of your transaction';
                    }
                    return null;
                  },
                ),
              ),
              //Give amount here
              Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: 'Amount in Rs.'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please give a valid response';
                    }
                    return null;
                  },
                ),
              ),
              //Give GST No. here
              Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(hintText: 'GST No.'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter a valid value for GST No.';
                    }
                    return null;
                  },
                ),
              ),
              //Give Purpose here
              Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  maxLines: 6,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(hintText: 'Purpose'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter a valid purpose for expenditure';
                    }
                    return null;
                  },
                ),
              ),
              //Give comments here
              Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  maxLines: 6,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.text,
                  decoration:
                      InputDecoration(hintText: 'Additional Comments(If any)'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                    onPressed: () {
                      // Validate returns true if the form is valid, or false otherwise.
                      if (form.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      }
                    },
                    child: Text('Submit')),
              )
            ],
          ),
        ),
      ),
    );
  }
}

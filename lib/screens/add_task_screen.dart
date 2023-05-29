import 'package:flutter/material.dart';
import 'package:todoey/constants.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        decoration: BoxDecoration(
          color: Color(0xFF757575),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
            ),
          ),
          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                style: kBlueTitleTextStyle,
                textAlign: TextAlign.center,
              ),
              TextField(
                autofocus: true,
                decoration: kTextFieldDecoration,
              ),
              SizedBox(
                height: 20.0,
              ),
              FilledButton(
                onPressed: () {},
                style: kGeneralButtonStyle,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text('Add'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

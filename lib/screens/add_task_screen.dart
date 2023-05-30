import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/constants.dart';
import 'package:todoey/global.dart';
import 'package:todoey/models/task.dart';

class AddTaskScreen extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
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
                textCapitalization: TextCapitalization.sentences,
                autofocus: true,
                decoration: kTextFieldDecoration,
                controller: controller,
              ),
              SizedBox(
                height: 20.0,
              ),
              FilledButton(
                onPressed: () {
                  Provider.of<Data>(context, listen: false).addTask(
                    Task(
                      title: controller.value.text,
                    ),
                  );
                  Navigator.pop(context);
                },
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

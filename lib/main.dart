import 'package:flutter/material.dart';
import 'package:todoey/screens/tasks_screen.dart';

void main() => TodoeyApp();

class TodoeyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksScreen(),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:todoey/custom_widgets/todo_item.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 40.0, left: 40.0, right: 40.0),
      children: [
        ToDoItem(itemName: 'Buy Milk'),
        ToDoItem(itemName: 'Buy Eggs'),
        ToDoItem(itemName: 'Buy Bread'),
      ],
    );
  }
}

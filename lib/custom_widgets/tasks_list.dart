import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/custom_widgets/todo_item.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/global.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: (context, data, child) => ListView.builder(
        padding: EdgeInsets.all(40.0),
        itemCount: data.taskCount,
        itemBuilder: (context, index) {
          final Task task = data.tasks[index];
          return ToDoItem(
            itemName: task.title,
            checked: task.finished,
            onChanged: (checkState) {
              data.updateTask(task);
            },
            onLongPress: () {
              if (task.finished) {
                data.removeTask(task);
              }
            },
          );
        },
      ),
    );
  }
}

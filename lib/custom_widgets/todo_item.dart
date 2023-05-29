import 'package:flutter/material.dart';
import 'package:todoey/custom_widgets/task_checkbox.dart';
import 'package:todoey/constants.dart';

class ToDoItem extends StatefulWidget {
  final String itemName;
  final VoidCallback? onChanged;

  ToDoItem({required this.itemName, this.onChanged});

  @override
  State<ToDoItem> createState() => _ToDoItemState();
}

class _ToDoItemState extends State<ToDoItem> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.itemName,
          style: kItemTextStyle.copyWith(
            decoration: checked ? TextDecoration.lineThrough : null,
          ),
        ),
        TaskCheckbox(
          onChanged: (checkState) {
            setState(() {
              checked = checkState ?? false;
            });
          },
          checkState: checked,
        ),
      ],
    );
  }
}

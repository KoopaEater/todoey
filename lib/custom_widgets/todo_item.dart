import 'package:flutter/material.dart';
import 'package:todoey/constants.dart';

class ToDoItem extends StatelessWidget {
  final String itemName;
  final VoidBoolCallback? onChanged;
  final bool checked;
  final VoidCallback? onLongPress;

  ToDoItem({required this.itemName, required this.checked, this.onChanged, this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: onLongPress,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            itemName,
            style: kItemTextStyle.copyWith(
              decoration: checked ? TextDecoration.lineThrough : null,
            ),
          ),
          Checkbox(
            activeColor: Colors.lightBlueAccent,
            value: checked,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}

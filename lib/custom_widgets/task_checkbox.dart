import 'package:flutter/material.dart';

import 'package:todoey/constants.dart';

class TaskCheckbox extends StatelessWidget {
  final bool checkState;
  final VoidBoolCallback? onChanged;

  TaskCheckbox({required this.onChanged, required this.checkState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkState,
      onChanged: onChanged,
    );
  }
}
import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';


class Data extends ChangeNotifier {

  List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int get taskCount => _tasks.length;

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleFinished();
    notifyListeners();
  }

}
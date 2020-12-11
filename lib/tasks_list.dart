import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todoey/task.dart';

class TasksList with ChangeNotifier{
  List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
}

  void addTask(String taskName){
    _tasks.add(Task(name: taskName));
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }

}
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todolist/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task>  _tasks = [
    Task(name: 'giặt quần áo', isDone: false,),
    Task(name: 'đi chợ mua đồ ăn', isDone: false,),
    Task(name: 'nấu cơm', isDone: false,),
    Task(name: 'rửa bát', isDone: false,),
  ];

  UnmodifiableListView<Task> get tasks  {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  int get showCount {
    int count = 0;
    for (int i = 0; i < _tasks.length; i++) {
      if (!_tasks[i].isDone) {
        count++;
      }
    }
    return count;
  }

  void addTask(String newTastTitle) {
    final task = Task(name: newTastTitle, isDone: false);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}

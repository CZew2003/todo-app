import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/Task.dart';
import 'dart:collection';

class TaskData with ChangeNotifier {
  List<Task> _listTasks = [];

  UnmodifiableListView<Task> get listTasks {
    return UnmodifiableListView(_listTasks);
  }

  int get listCount => _listTasks.length;

  Task getTask(int index) {
    return _listTasks[index];
  }

  void addTask(Task newTask) {
    _listTasks.add(newTask);
    notifyListeners();
  }

  void changeCheck(int index, bool? newValue) {
    _listTasks[index].toggleChecked(newValue);
    notifyListeners();
  }

  void removeTask(int index) {
    _listTasks.removeAt(index);
    notifyListeners();
  }

  void orderLists(Order order) {
    if (order == Order.ascending) {
      _listTasks.sort((task1, task2) {
        return task1.message.compareTo(task2.message);
      });
    } else if (order == Order.descending) {
      _listTasks.sort((task1, task2) {
        return task2.message.compareTo(task1.message);
      });
    } else {
      return;
    }
    notifyListeners();
  }
}

enum Order { ascending, descending, none }

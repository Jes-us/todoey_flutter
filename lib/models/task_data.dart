import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy milk'),
    Task(name: 'buy milk'),
    Task(name: 'buy milk'),
    Task(name: 'buy milk'),
    Task(name: 'buy milk'),
  ];

  UnmodifiableListView<Task> get tasks {
    UnmodifiableListView<Task> taskss = UnmodifiableListView(_tasks);
    return taskss;
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTask) {
    final nTask = Task(name: newTask);
    _tasks.add(nTask);
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

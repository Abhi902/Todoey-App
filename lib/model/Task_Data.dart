import 'package:flutter/foundation.dart';
import 'package:todoey/model/Tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(
      taskname: 'buy milk',
    ),
    Task(
      taskname: 'buy eggs  ',
    ),
    Task(
      taskname: 'buy bread',
    ),
  ];

  void addTask(String taskdata) {
    final TaskToAdd = Task(taskname: taskdata);
    tasks.add(TaskToAdd);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleIsDone();
    notifyListeners();
  }

  deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}

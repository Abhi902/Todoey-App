import 'package:flutter/material.dart';
import 'package:todoey/Widgets/TaskTiles.dart';
import 'package:todoey/model/Tasks.dart';

class TaskListView extends StatefulWidget {
  List<Task> tasks = [];
  TaskListView(this.tasks);

  @override
  State<TaskListView> createState() => _TaskListViewState();
}

class _TaskListViewState extends State<TaskListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskListTile(
            taskTitle: widget.tasks[index].taskname,
            isChanged: widget.tasks[index].isdone,
            checkBoxCallBack: (bool? checkBoxState) {
              setState(() {
                widget.tasks[index].toggleIsDone();
              });
            });
      },
      itemCount: widget.tasks.length,
    );
  }
}

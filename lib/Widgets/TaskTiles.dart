import 'package:flutter/material.dart';

class TaskListTile extends StatelessWidget {
  bool? isChanged = false;
  String taskTitle = "";
  Function checkBoxCallBack;

  TaskListTile(
      {this.isChanged, this.taskTitle = "", required this.checkBoxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '$taskTitle',
        style: TextStyle(
            decoration: isChanged! ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChanged,
        onChanged: (newValue) {
          checkBoxCallBack(newValue);
        },
      ),
    );
  }
}

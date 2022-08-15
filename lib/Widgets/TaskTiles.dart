import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/Task_Data.dart';

class TaskListTile extends StatelessWidget {
  bool? isChanged = false;
  String taskTitle = "";
  Function checkBoxCallBack;
  VoidCallback longPressCallback;

  TaskListTile(
      {this.isChanged,
      this.taskTitle = "",
      required this.checkBoxCallBack,
      required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
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

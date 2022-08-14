import 'package:flutter/material.dart';

class TaskListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is the task'),
      trailing: Checkbox(
        checkColor: Colors.black,
        onChanged: (value) {
          value = false;
        },
        value: true,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todoey/Widgets/TaskTiles.dart';
import 'package:todoey/model/Tasks.dart';
import 'package:todoey/model/Task_Data.dart';
import 'package:provider/provider.dart';

class TaskListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, Td, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskListTile(
              longPressCallback: () {
                Td.deleteTask(Td.tasks[index]);
              },
              taskTitle: Td.tasks[index].taskname,
              isChanged: Td.tasks[index].isdone,
              checkBoxCallBack: (bool? checkBoxState) {
                Td.updateTask(Td.tasks[index]);
              });
        },
        itemCount: Td.tasks.length,
      );
    });
  }
}

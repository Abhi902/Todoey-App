import 'package:flutter/material.dart';
import 'package:todoey/Widgets/TaskTiles.dart';

class TaskListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskListTile(),
        TaskListTile(),
        TaskListTile(),
      ],
    );
  }
}

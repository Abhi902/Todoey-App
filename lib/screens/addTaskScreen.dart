import 'package:flutter/material.dart';

class addTaskScreen extends StatelessWidget {
  Function addTaskCallBack;
  addTaskScreen(this.addTaskCallBack);

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.w700),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                newTaskTitle = value;
              },
            ),
            ElevatedButton(
                onPressed: () {
                  addTaskCallBack(newTaskTitle);
                },
                child: Text(
                  'ADD',
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}

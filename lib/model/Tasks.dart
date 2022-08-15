class Task {
  String taskname = "";
  bool isdone = false;

  Task({this.isdone = false, this.taskname = ""});

  void toggleIsDone() {
    isdone = !isdone;
  }
}

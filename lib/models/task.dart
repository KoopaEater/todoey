class Task {

  final String title;
  bool finished;

  Task({required this.title, this.finished = false});

  void toggleFinished() {
    finished = !finished;
  }

}
class Task {
  String message;
  bool isChecked;

  Task({required this.message, required this.isChecked});

  void toggleChecked(bool? value) {
    isChecked = value ?? false;
  }
}

import 'package:flutter/material.dart';

import 'chechbox_item.dart';

class TodoItem extends StatelessWidget {
  final String message;
  final bool isChecked;
  final Function(bool?) onChanged;

  const TodoItem({
    super.key,
    required this.message,
    required this.isChecked,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        message,
        style: TextStyle(
          color: isChecked ? Colors.lightBlueAccent : Colors.red,
          fontSize: 18,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        onChanged: onChanged,
        value: isChecked,
      ),
    );
  }
}

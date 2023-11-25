import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

import 'chechbox_item.dart';

class TodoItem extends StatelessWidget {
  final int index;

  const TodoItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, TaskData value, Widget? child) {
        return ListTile(
          title: Text(
            value.getTask(index).message,
            style: TextStyle(
              color: value.getTask(index).isChecked
                  ? Colors.lightBlueAccent
                  : Colors.red,
              fontSize: 18,
            ),
          ),
          trailing: Checkbox(
            activeColor: Colors.lightBlueAccent,
            onChanged: (newValue) {
              value.changeCheck(index, newValue);
            },
            value: value.getTask(index).isChecked,
          ),
          onLongPress: () {
            value.removeTask(index);
          },
        );
      },
    );
  }
}

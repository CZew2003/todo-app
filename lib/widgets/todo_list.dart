import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/Task.dart';
import 'package:todoey_flutter/widgets/todo_item.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key, required this.todoItems});

  final List<Task> todoItems;

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        itemCount: widget.todoItems.length,
        itemBuilder: (BuildContext context, int index) {
          return TodoItem(
            message: widget.todoItems[index].message,
            isChecked: widget.todoItems[index].isChecked,
            onChanged: (bool? value) {
              setState(() {
                widget.todoItems[index].toggleChecked(value);
              });
            },
          );
        },
      ),
    );
  }
}

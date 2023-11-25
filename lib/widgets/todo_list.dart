import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/Task.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/widgets/todo_item.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        itemCount: context.read<TaskData>().listCount,
        itemBuilder: (context, index) {
          return TodoItem(index: index);
        },
      ),
    );
  }
}

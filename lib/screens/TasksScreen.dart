import 'package:flutter/material.dart';
import 'package:todoey_flutter/screens/add_new_todo.dart';
import 'package:todoey_flutter/widgets/fliter_widget.dart';
import 'package:todoey_flutter/widgets/todo_list.dart';
import 'package:provider/provider.dart';
import '../models/Task.dart';
import '../models/task_data.dart';

class TaskScreen extends StatefulWidget {
  TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        shape: const CircleBorder(),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
            ),
            backgroundColor: Colors.white,
            context: context,
            builder: (BuildContext context) {
              return SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: AddNewTodo(),
                ),
              );
            },
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 40, right: 20, left: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FilterWidget(),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Todoey',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  '${context.watch<TaskData>().listTasks.length} tasks',
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    30,
                  ),
                  topRight: Radius.circular(
                    30,
                  ),
                ),
              ),
              child: TodoList(),
            ),
          ),
        ],
      ),
    );
  }
}

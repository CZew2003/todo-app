import 'package:flutter/material.dart';

class AddNewTodo extends StatelessWidget {
  AddNewTodo({super.key, required this.onPressed});

  final Function(String) onPressed;
  String? inputValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 35,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextField(
            onChanged: (value) {
              inputValue = value;
            },
            autofocus: true,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.lightBlueAccent,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {
              if (inputValue != null) {
                onPressed(inputValue!);
              }
              Navigator.pop(context);
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlueAccent)),
            child: const Text(
              "Add task",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

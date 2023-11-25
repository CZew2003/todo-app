import 'package:flutter/material.dart';

class CheckboxItem extends StatelessWidget {
  final bool checked;
  final Function(bool?) onChanged;

  const CheckboxItem(
      {super.key, required this.checked, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.1,
      child: Checkbox(
        activeColor: Colors.lightBlueAccent,
        onChanged: onChanged,
        value: checked,
      ),
    );
  }
}

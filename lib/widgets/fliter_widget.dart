import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/widgets/dropdown_update.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonUpdate<Order>(
      items: const [
        DropdownMenuItem(value: Order.ascending, child: Text('Ascending')),
        DropdownMenuItem(value: Order.descending, child: Text('Descending')),
      ],
      value: null,
      icon: const Icon(
        Icons.list,
        color: Colors.white,
        size: 38,
      ),
      style: const TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
      dropdownColor: Colors.lightBlueAccent,
      onChanged: (order) {
        context.read<TaskData>().orderLists(order ?? Order.none);
      },
    );
  }
}

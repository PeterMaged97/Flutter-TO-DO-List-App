import 'package:flutter/material.dart';
import 'package:todoey/Components/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile('taskLabel'),
        TaskTile('taskLabel'),
        TaskTile('taskLabel'),
      ],
    );
  }
}

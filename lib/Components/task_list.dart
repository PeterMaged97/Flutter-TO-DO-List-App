import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Components/task_tile.dart';
import '../task.dart';
import '../tasks_list.dart';
import 'package:provider/provider.dart';

class TaskList extends StatefulWidget {

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: Provider.of<TasksList>(context).tasks[index].name,
          isChecked: Provider.of<TasksList>(context).tasks[index].isDone,
          checkboxCallback: (bool checkBoxState) {
            setState(() {
              Provider.of<TasksList>(context).tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: Provider.of<TasksList>(context).tasks.length,
    );
  }
}

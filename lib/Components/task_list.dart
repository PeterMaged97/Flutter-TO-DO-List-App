import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Components/task_tile.dart';
import '../tasks_list.dart';

class TaskList extends StatefulWidget {

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return Consumer<TasksList>(
      builder: (context, tasksList, child){
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: tasksList.tasks[index].name,
              isChecked: tasksList.tasks[index].isDone,
              checkboxCallback: (bool checkBoxState) {
                setState(() {
                  tasksList.tasks[index].toggleDone();
                });
              },
            );
          },
          itemCount: tasksList.tasks.length,
        );
      },
    );
  }
}

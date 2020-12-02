import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Components/task_tile.dart';
import 'package:todoey/task.dart';
import '../tasks_list.dart';

class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TasksList>(
      builder: (context, tasksList, child){
        return ListView.builder(
          itemBuilder: (context, index) {
            Task task = tasksList.tasks[index];
            return TaskTile(
              onLongPress: (){tasksList.deleteTask(task);},
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (bool checkBoxState) {
              tasksList.updateTask(task);
              },
            );
          },
          itemCount: tasksList.tasks.length,
        );
      },
    );
  }
}
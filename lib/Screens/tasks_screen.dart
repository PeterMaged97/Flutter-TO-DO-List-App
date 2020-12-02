import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Components/task_list.dart';
import 'package:todoey/Screens/add_task_screen.dart';
import 'package:todoey/tasks_list.dart';

class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              elevation: 50,
              enableDrag: true,
              context: context,
              builder: (context) => AddTaskScreen());
        },
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:
            EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.lightBlueAccent,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Consumer<TasksList>(
                  builder: (context, tasksList, child){
                    return Text(
                      '${tasksList.tasks.length} ${tasksList.tasks.length != 1 ? 'Tasks' : 'Task'}',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TaskList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}


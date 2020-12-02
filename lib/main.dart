import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Screens/tasks_screen.dart';
import 'package:todoey/tasks_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TasksList>(
        create: (context) => TasksList(),
        //builder: (context) => Text(context.watch<TasksList>()),
        child: MaterialApp(
          home: TasksScreen(),
        ));
  }
}

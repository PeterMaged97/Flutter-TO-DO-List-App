import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {

  TaskTile(this.taskLabel);
  final String taskLabel;

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {

  bool v = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.taskLabel),
      trailing: Checkbox(value: v,onChanged: (val){
        setState(() {
          v = val;
        });
      },tristate: false,),
    );
  }
}

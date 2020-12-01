import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {

  TaskTile(this.taskLabel);
  final String taskLabel;

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {

  bool isChecked = false;
  void toggleCheckBox(bool newValue){
    setState(() {
      isChecked = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.taskLabel, style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null)),
      trailing: TaskCheckBox(isChecked, toggleCheckBox),
    );
  }
}

class TaskCheckBox extends StatelessWidget {

  TaskCheckBox(this.checkBoxState, this.toggleCheckBoxState);

  final bool checkBoxState;
  final Function toggleCheckBoxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(value: checkBoxState,
    onChanged: toggleCheckBoxState,);
  }
}

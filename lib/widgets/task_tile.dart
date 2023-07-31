import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class TaskTileState extends StatelessWidget {
  final bool isChecked;
  final String titleTask;
  final Function(bool?) checkboxCallBack;
  final Function()? longpressCallBack;

  TaskTileState(
      {required this.isChecked,
      required this.titleTask,
      required this.checkboxCallBack,
      required this.longpressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpressCallBack,
      title: Text(
        titleTask,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        checkColor: Colors.black,
        value: isChecked,
        onChanged: checkboxCallBack,
      ),
    );
  }
}

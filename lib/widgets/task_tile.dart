import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile(
      {Key? key,
      required this.isChecked,
      required this.taskTitle,
      required this.checkBoxCallBack,
      required this.longPressCallBack})
      : super(key: key);

  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkBoxCallBack;
  final void Function() longPressCallBack;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallBack,
      ),
      onLongPress: longPressCallBack,
    );
  }
}

// setState(() {
// isChecked = checkBoxState!;
// });

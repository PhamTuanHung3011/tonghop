import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {
  bool isChecked = false;
  String taskName;
  Function(bool?) checkboxCallbacks;

  Function() deleteBoxCallbacks;

  TaskTitle({
    required this.isChecked,
    required this.taskName,
    required this.checkboxCallbacks,
    required this.deleteBoxCallbacks
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '$taskName',
        style: isChecked
            ? TextStyle(decoration: TextDecoration.lineThrough)
            : null,
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallbacks,

        // toggleCheckboxState: toggleCheckboxState),
      ),
      onLongPress: deleteBoxCallbacks,
    );
  }
}
//
// (bool? checkboxState) {
// setState(() {
// _isCheck = checkboxState!;
// });
// }

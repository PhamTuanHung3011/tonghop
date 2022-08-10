import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/models/task_data.dart';
import 'package:todolist/screens/tasktitle_screen.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final taskTitle = taskData.tasks[index];
            return TaskTitle(
              taskName: taskTitle.name,
              isChecked: taskTitle.isDone,
              checkboxCallbacks: (checkboxState) {
                taskData.updateTask(taskTitle);
              },
              deleteBoxCallbacks: () {
                taskData.deleteTask(taskTitle);
              }
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}

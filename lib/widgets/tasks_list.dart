import 'package:flutter/material.dart';
import 'package:todoey/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              taskTile: taskData.tasks[index].name,
              checkboxCallback: (checkboxState) {
                taskData.tasks[index].toggleDone();
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}

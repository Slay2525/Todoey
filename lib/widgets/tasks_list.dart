import 'package:flutter/material.dart';
import 'package:todoey/widgets/tasks_tile.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    super.key,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

List<Task> tasks = [
  Task(name: 'Buy milk', isDone: false),
  Task(name: 'Buy eggs', isDone: false),
  Task(name: 'Buy bread', isDone: false),
];

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (contex, index) {
        return TaskTile(
          isChecked: tasks[index].isDone,
          taskTile: tasks[index].name,
          checkboxCallback: (checkboxState) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}

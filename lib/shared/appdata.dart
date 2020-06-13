import 'package:a9_tasks/model/task.dart';
import 'package:flutter/widgets.dart';

class AppData extends ChangeNotifier{
  List<Task> taskList = [];

  createTask(Task task) async {
    Map<String, dynamic> data = task.taskToMap();
    // int result = await database.create(data);
  }
}
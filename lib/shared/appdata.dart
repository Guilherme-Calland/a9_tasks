import 'package:a9_tasks/database/databasehelper.dart';
import 'package:a9_tasks/model/task.dart';
import 'package:flutter/widgets.dart';

class AppData extends ChangeNotifier{
  List<Task> taskList = [];
  DatabaseHelper database = DatabaseHelper();

  createTask(Task task) async {
    Map<String, dynamic> data = task.taskToMap();
    int result = await database.create(data);
    return result;
  }
}
import 'package:a9_tasks/database/databaseHelper.dart';
import 'package:a9_tasks/model/task.dart';
import 'package:flutter/widgets.dart';

class TasksData extends ChangeNotifier{
  DatabaseHelper database = DatabaseHelper();
  List < Task >  tasks = [];

  createTask(Task task) async {
    Map<String, dynamic> data = task.taskToMap();
    int result = await database.create(data);
    return result;
  }
}
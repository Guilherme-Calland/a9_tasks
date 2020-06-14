import 'package:a9_tasks/database/databaseHelper.dart';
import 'package:a9_tasks/model/task.dart';
import 'package:flutter/widgets.dart';

class TasksData extends ChangeNotifier{
  DatabaseHelper database = DatabaseHelper();
  List < Task >  taskList = [];

  createTask(Task task) async {
    Map<String, dynamic> data = task.taskToMap();
    int result = await database.create(data);
    readTasks();
    return result;
  }

  readTasks() async {
    List< Map<String, dynamic> > rawData = await database.read();
    List< Task > tempTaskList = List< Task >();
    for(var d in rawData){
      Task t = Task.mapToTask(d);
      tempTaskList.add(t);
    }
    taskList = tempTaskList;
    notifyListeners();
  }

  updateTask(Task task) async{
    Map<String, dynamic> data = task.taskToMap();
    int result = await database.update(data);
    readTasks();
    return result;
  }

  deleteTask(int id) async {
    int result = await database.delete(id);
    readTasks();
    return result;
  }
}
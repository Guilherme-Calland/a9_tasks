import 'package:a9_tasks/database/databasehelper.dart';
import 'package:a9_tasks/model/task.dart';
import 'package:flutter/widgets.dart';

class AppData extends ChangeNotifier{
  List<Task> taskList = [];
  DatabaseHelper database = DatabaseHelper();

  createTask(Task task) async {
    Map<String, dynamic> data = task.taskToMap();
    int result = await database.create(data);
    readTasks();
    return result;
  }

  readTasks() async {
    List< Map<String, dynamic> > data =  await database.read(); 
    List< Task > taskListTemp = List< Task >();
    for(Map<String, dynamic> d in data){
      Task task = Task.mapToTask(d);
      taskListTemp.add(task);
    }
    taskList = taskListTemp;
    notifyListeners();
  }

  deleteTask(int id) async {
    int result = await database.delete(id);
    readTasks();
    return result;
  }
}
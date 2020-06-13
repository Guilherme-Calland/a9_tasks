import 'package:a9_tasks/model/task.dart';
import 'package:a9_tasks/shared/appdata.dart';
import 'package:a9_tasks/widgets/task.dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Consumer<AppData>(
        builder: (context, data, child){
          return ListView.builder(
            itemCount: data.taskList.length,
            itemBuilder: (context, index){
              Task task = data.taskList[index];
              return ListTile(
                onTap: (){
                  deleteTask(data, task);
                },
                onLongPress: (){
                  updateTask(context, task);
                },
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  task.name,
                  style: TextStyle(
                    color: Colors.green
                  ),
                )
              );
            },
          );
        }
      ),
    );
  }

  void updateTask(BuildContext context, Task task) {
    showDialog(context : context, 
      builder: (context) => TaskDialog(task: task,)
    );
  }

  void deleteTask(AppData data, Task task) async {
    int result = await data.deleteTask(task.id);
    print('$result task deleted');
  }
}

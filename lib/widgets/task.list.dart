import 'package:a9_tasks/model/task.dart';
import 'package:a9_tasks/shared/tasks.data.dart';
import 'package:a9_tasks/widgets/task.dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Consumer<TasksData>(
          builder: (context, data, child){
            return ListView.builder(
              itemCount: data.taskList.length,
              itemBuilder: (context, index){
                Task task = data.taskList[index];
                return ListTile(
                  contentPadding: EdgeInsets.all(0),
                  title: Text(
                    task.name,
                    style: TextStyle(
                      color: Colors.green
                    )
                  ),
                  onLongPress: (){
                    showDialog(
                      context: context,
                      builder: (context) {
                        return TaskDialog(createOrUpdate: 'update', task: task,);
                      }
                    );
                  },
                );
              }
            );
          }
        )
      ),
    );
  }
}

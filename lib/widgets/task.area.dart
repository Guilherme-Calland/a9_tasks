import 'package:a9_tasks/model/task.dart';
import 'package:a9_tasks/shared/tasks.data.dart';
import 'package:a9_tasks/widgets/task.button.dart';
import 'package:a9_tasks/widgets/task.list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskArea extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Container(
      height: 450,
      padding: EdgeInsets.only(left: 40, top: 20),
      child: Column(
        children: <Widget>[
          TaskList(),
          TaskButton(),
        ],
      )
    );
  }

  void createTask(BuildContext context, TextEditingController controller) async{
    String name = controller.text;
    Task task = Task(name);
    int result = await Provider.of<TasksData>(context, listen: false).createTask(task);
    print('task $result created');
    Navigator.pop(context);
  }
}

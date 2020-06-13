import 'package:a9_tasks/model/task.dart';
import 'package:a9_tasks/shared/appdata.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskDialog extends StatelessWidget {
  Task task;
  final controller = TextEditingController();
  String addOrChange = '';
  TaskDialog({this.task}){
    if(task != null){
      controller.text = task.name;
      addOrChange = 'change';
    } else {
      addOrChange = 'add';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox( height: 100 ,),
        Material(
          color: Colors.black,
          child: Column(
            children: <Widget>[
              TextField(
                controller: controller,
                autofocus: true,
                style: TextStyle(
                  color: Colors.green
                ),
              ),
              FlatButton(
                child: Text(
                  addOrChange,
                  style: TextStyle(
                    color: Colors.black
                  ),
                ),
                color: Colors.green,
                onPressed: () {
                  addOrChange == 'add' ? createTask(context) : updateTask(context);
                  return Navigator.pop(context);
                },
              )
            ],
          )
        )
      ],
    );
  }

  createTask(BuildContext context) async {
    String name = controller.text;
    Task task = Task(name);
    int result = await Provider.of<AppData>(context, listen: false)
    .createTask(task);
    print('id of object created: $result');
  }

  updateTask(BuildContext context) async {
    task.name = controller.text;
    int result = await Provider.of<AppData>(context, listen: false).updateTask(task);
    print('$result task updated');
  }
}

import 'package:a9_tasks/model/task.dart';
import 'package:a9_tasks/shared/tasks.data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskDialog extends StatelessWidget {

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Material(
            child: Container(
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: controller,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.green
                    ),
                    autofocus: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      border: InputBorder.none
                    ),
                  ),
                  FlatButton(
                    onPressed: (){
                      createTask(context);
                    },
                    child: Text(
                      'create task',
                      style: TextStyle(
                        color: Colors.black
                      ),),
                    color: Colors.green,
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(
                  color: Colors.green,
                )
              ),
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20
              ),
              width: 200,
            )
          ),
          SizedBox(height: 200)
        ],
      ),
    );
  }

  void createTask(BuildContext context) async {
    String name = controller.text;
    Task task = Task(name);
    int result = await Provider.of<TasksData>(context, listen: false).createTask(task);
    print('created task of id: $result');
    Navigator.pop(context);
  }
}

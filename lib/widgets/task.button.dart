import 'package:a9_tasks/widgets/task.dialog.dart';
import 'package:flutter/material.dart';

class TaskButton extends StatelessWidget {
  final controller  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: FlatButton(
        child: Text('add task'),
        onPressed: (){
          showDialog(
            context: context,
            builder: (context) => 
            TaskDialog()
          );
        },
        padding: EdgeInsets.symmetric(
          horizontal: 20, vertical: 20
        ),
        color: Colors.green,
      ),
    );
  }
}



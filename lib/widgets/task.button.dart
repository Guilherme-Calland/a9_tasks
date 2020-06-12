
import 'package:a9_tasks/widgets/task.dialog.dart';
import 'package:flutter/material.dart';

class TaskButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50.0),
      child: FlatButton(
        child: Text(
          'Push',
          style: TextStyle(
            color: Colors.black
          ),
        ),
        color: Colors.green,
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10
        ),
        onPressed: (){
          showDialog(context: context,
            builder: (context) => TaskDialog() 
          ); 
        }
      ),
    );
  }
}


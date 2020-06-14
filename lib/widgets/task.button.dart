
import 'package:a9_tasks/methods/methods.dart';
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
          Methods.showTaskDialog(context);
        },
        padding: EdgeInsets.symmetric(
          horizontal: 20, vertical: 20
        ),
        color: Colors.green,
      ),
    );
  }
}


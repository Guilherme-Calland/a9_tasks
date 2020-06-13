import 'package:a9_tasks/widgets/task.button.dart';
import 'package:a9_tasks/widgets/task.list.dart';
import 'package:flutter/material.dart';

class TaskArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 40, top: 20),
        child: Column(
          children: <Widget>[
            TaskList(),
            TaskButton(),
          ],
        )
      ),
    );
  }
}

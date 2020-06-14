import 'package:a9_tasks/shared/tasks.data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TitleArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 40, top: 100),
      child: Consumer<TasksData>(
        builder: (context, data, child){
          int number = data.taskList.length;
          return Text(
            '$number Tasks',
            style: TextStyle(
              color: Colors.green,
              fontSize: 40
            ),
          );
        }
      )
    );
  }
}
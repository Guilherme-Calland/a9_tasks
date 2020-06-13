
import 'package:a9_tasks/shared/appdata.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TitleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<AppData>(
        builder: (context, data, child){
          int listLength = data.taskList.length;
          return Text(
            '$listLength Tasks',
            style: TextStyle(
              color: Colors.green,
              fontSize: 40
            )
          );
        }
      ),
      padding: EdgeInsets.only(top: 80, left: 30),
    );
  }
}
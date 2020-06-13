import 'package:a9_tasks/widgets/task.area.dart';
import 'package:a9_tasks/widgets/title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TitleArea(),
          TaskArea()
        ],
      )
    );
  }
}


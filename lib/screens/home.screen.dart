import 'package:a9_tasks/shared/tasks.data.dart';
import 'package:a9_tasks/widgets/task.area.dart';
import 'package:a9_tasks/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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

  @override
  void initState() {
    super.initState();
    Provider.of<TasksData>(context, listen: false).readTasks();
  }
}


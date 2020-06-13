import 'package:a9_tasks/screens/tasks.dart';
import 'package:a9_tasks/screens/title.dart';
import 'package:a9_tasks/shared/appdata.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TitleScreen(),
          TasksScreen()
        ],
      )
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<AppData>(context, listen: false).readTasks();
  }
}


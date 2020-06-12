import 'package:a9_tasks/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyTasks());
}

class MyTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


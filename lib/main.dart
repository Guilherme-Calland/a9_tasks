import 'package:a9_tasks/screens/home.screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(TasksApp());
}

class TasksApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        cursorColor: Colors.green
      ),
    );
  }
}


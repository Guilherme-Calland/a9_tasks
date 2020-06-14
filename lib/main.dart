import 'package:a9_tasks/screens/home.screen.dart';
import 'package:a9_tasks/shared/tasks.data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(TasksApp());
}

class TasksApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create : (context) => TasksData(),
      child: MaterialApp(
        home: HomeScreen(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
          cursorColor: Colors.green
        ),
      ),
    );
  }
}


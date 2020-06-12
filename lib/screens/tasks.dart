import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 30, top: 20),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index){
            return ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text(
                'item $index',
                style: TextStyle(
                  color: Colors.green
                ),
                )
            );
          },
        ),
      ),
    );
  }
}

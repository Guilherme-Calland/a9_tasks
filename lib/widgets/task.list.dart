import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index){
            return ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text(
                'task $index',
                style: TextStyle(
                  color: Colors.green
                )
              ),
            );
          }
        ),
      ),
    );
  }
}


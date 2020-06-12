import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}

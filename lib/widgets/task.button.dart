
import 'package:flutter/material.dart';

class TaskButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 280),
      child: FlatButton(
        child: Text('add task'),
        onPressed: (){},
        padding: EdgeInsets.symmetric(
          horizontal: 20, vertical: 20
        ),
        color: Colors.green,
      ),
    );
  }
}


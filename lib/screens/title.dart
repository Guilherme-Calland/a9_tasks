
import 'package:flutter/material.dart';

class TitleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '<number of> Tasks',
        style: TextStyle(
          color: Colors.green,
          fontSize: 40
        )
      ),
      padding: EdgeInsets.only(top: 80, left: 30),
    );
  }
}
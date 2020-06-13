import 'package:flutter/material.dart';

class TitleArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 40, top: 100),
      child: Text(
        '0 Tasks',
        style: TextStyle(
          color: Colors.green,
          fontSize: 40
        ),
      )
    );
  }
}
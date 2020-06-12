import 'package:flutter/material.dart';

class TaskDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox( height: 100 ,),
        Material(
          color: Colors.black,
          child: Column(
            children: <Widget>[
              TextField(
                autofocus: true,
                style: TextStyle(
                  color: Colors.green
                ),
              ),
              FlatButton(
                child: Text(
                  'add',
                  style: TextStyle(
                    color: Colors.black
                  ),
                ),
                color: Colors.green,
                onPressed: (){},
              )
            ],
          )
        )
      ],
    );
  }
}

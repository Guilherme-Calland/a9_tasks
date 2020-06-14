
import 'package:flutter/material.dart';

class TaskButton extends StatelessWidget {
  var controller  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: FlatButton(
        child: Text('add task'),
        onPressed: (){
          showDialog(
            context: context,
            builder: (context) => 
            Center(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Material(
                      child: TextField(autofocus: true,)
                    ),
                  ],
                ),
              ),
            )
          );
        },
        padding: EdgeInsets.symmetric(
          horizontal: 20, vertical: 20
        ),
        color: Colors.green,
      ),
    );
  }
}


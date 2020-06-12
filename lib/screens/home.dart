import 'package:a9_tasks/screens/title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TitleScreen(),
          Expanded(
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
          )
        ],
      )
    );
  }
}

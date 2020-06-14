import 'package:a9_tasks/shared/tasks.data.dart';
import 'package:a9_tasks/widgets/task.button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Methods{
  static var controller = TextEditingController();

  static showTaskDialog(BuildContext context){
    showDialog(
      context: context,
      builder: (context) => 
      Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Material(
              child: Container(
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: controller,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.green
                      ),
                      autofocus: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        border: InputBorder.none
                      ),
                    ),
                    FlatButton(
                      onPressed: (){
                        String name = controller.text;
                        print(name);
                        // Provider.of<TasksData>(context, listen: false).createTask(task);
                        Navigator.pop(context);
                      },
                      child: Text(
                        'create task',
                        style: TextStyle(
                          color: Colors.black
                        ),),
                      color: Colors.green,
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(
                    color: Colors.green,
                  )
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20
                ),
                width: 200,
              )
            ),
            SizedBox(height: 200)
          ],
        ),
      )
    );
  }
}

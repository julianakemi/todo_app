import 'package:flutter/material.dart';
import 'package:todoey_app/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      padding: EdgeInsets.all(40),
      color: Colors.transparent,
      child: Column(
        children: <Widget>[
          Text(
            'Add Task',
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 25,
            ),
          ),
          TextField(
            autofocus: true,
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.lightBlueAccent,
                  width: 2,
                ),
              ),
            ),
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            child: FlatButton(
              color: Colors.lightBlueAccent,
              textColor: Colors.white,
              padding: EdgeInsets.all(20),
              onPressed: () {
                if (newTaskTitle != null) {
                  Provider.of<TaskData>(context, listen: false)
                      .addTodoItem(newTaskTitle);
                  Navigator.pop(context);
                }
              },
              child: Text('Add'),
            ),
          ),
        ],
      ),
    );
  }
}

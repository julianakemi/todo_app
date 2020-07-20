import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          ),
          Spacer(),
          SizedBox(
            width: double.infinity,
            child: FlatButton(
              color: Colors.lightBlueAccent,
              textColor: Colors.white,
              padding: EdgeInsets.all(20),
              onPressed: () {},
              child: Text('Add'),
            ),
          ),
        ],
      ),
    );
  }
}

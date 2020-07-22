import 'package:flutter/material.dart';

class TodoItem extends StatefulWidget {
  final String item;
  TodoItem({this.item});

  @override
  _TodoItemState createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Checkbox(
          value: _isSelected,
          activeColor: Colors.lightBlueAccent,
          checkColor: Colors.white,
          onChanged: (bool newValue) {
            setState(() {
              _isSelected = newValue;
            });
          },
        ),
        Text(
          widget.item,
          style: TextStyle(
              decoration: _isSelected ? TextDecoration.lineThrough : null),
        ),
      ],
    );
  }
}

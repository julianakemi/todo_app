import 'package:flutter/material.dart';
import 'screens/task.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: MaterialApp(
          home: TasksScreen(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/task_screen.dart';
import 'package:todoey_app/models/task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: ChangeNotifierProvider(
          create: (context) => TaskData(),
          child: MaterialApp(
            home: TasksScreen(),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fminimal/scenes/tasks/tasks_page.dart';
import 'package:fminimal/theme/m_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MTheme(
        data: MThemeData(),
        child: TasksPage(),
      ),
    );
  }
}

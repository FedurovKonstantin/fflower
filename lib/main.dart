import 'package:flutter/material.dart';
import 'package:fminimal/theme/m_theme.dart';
import 'package:fminimal/utils/route_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MTheme(
      data: MThemeData(),
      child: const MaterialApp(
        onGenerateRoute: RouteGenerator.onGenerateRoute,
      ),
    );
  }
}

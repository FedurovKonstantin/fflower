import 'package:fminimal/theme/m_fab/m_fab_theme.dart';
import 'package:fminimal/theme/m_task/m_task_theme.dart';
import 'package:flutter/material.dart';

class MThemeData {
  final MTaskThemeData taskTheme;
  final MFABThemeData fabTheme;
  final Color backgroundColor;
  final Color primaryColor;
  final Color onPrimaryColor;
  final Color errorColor;

  MThemeData()
      : taskTheme = MTaskThemeData(),
        fabTheme = MFABThemeData(),
        backgroundColor = const Color(0xffFFFBFE),
        primaryColor = const Color(0xff6750A4),
        onPrimaryColor = Colors.white,
        errorColor = Color(0xffB3261E);
}

class MTheme extends InheritedWidget {
  MThemeData data;

  MTheme({
    required Widget child,
    required this.data,
    Key? key,
  }) : super(
          child: child,
          key: key,
        );

  static MThemeData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MTheme>()?.data ?? MThemeData();
  }

  @override
  bool updateShouldNotify(MTheme oldWidget) => data != oldWidget.data;
}

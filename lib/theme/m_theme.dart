import 'package:flutter/cupertino.dart';
import 'package:fminimal/theme/m_fab/m_fab_theme.dart';
import 'package:fminimal/theme/m_task/m_task_theme.dart';

class MThemeData {
  final MTaskThemeData taskTheme;
  final MFABThemeData fabTheme;

  MThemeData()
      : this._(
          MTaskThemeData(),
          MFABThemeData(),
        );

  MThemeData._(this.taskTheme, this.fabTheme);
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

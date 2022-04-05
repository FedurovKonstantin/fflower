import 'package:flutter/cupertino.dart';
import 'package:fminimal/theme/fab_theme.dart';
import 'package:fminimal/theme/task_theme.dart';

class MThemeData {
  final TaskThemeData taskTheme;
  final FABThemeData fabTheme;

  MThemeData()
      : this._(
          TaskThemeData(),
          FABThemeData(),
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

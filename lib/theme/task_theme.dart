import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskThemeData {
  final Color uncheckedColor;
  final Color checkedColor;

  TaskThemeData()
      : this._(
          Colors.black,
          Colors.grey,
        );

  TaskThemeData._(
    this.uncheckedColor,
    this.checkedColor,
  );
}

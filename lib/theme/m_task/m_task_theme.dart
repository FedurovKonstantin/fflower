import 'package:flutter/material.dart';

class MTaskThemeData {
  final Color checkBoxColor;
  final TextStyle checkedTextStyle;
  final TextStyle uncheckedTextStyle;
  final double checkBoxScale;

  MTaskThemeData()
      : this._(
          checkBoxColor: Colors.black,
          checkedTextStyle: const TextStyle(
            fontSize: 21,
            color: Colors.grey,
            decoration: TextDecoration.lineThrough,
            decorationThickness: 1.5,
          ),
          uncheckedTextStyle: const TextStyle(
            fontSize: 21,
          ),
          checkBoxScale: 1.25,
        );

  MTaskThemeData._({
    required this.checkedTextStyle,
    required this.checkBoxColor,
    required this.uncheckedTextStyle,
    required this.checkBoxScale,
  });
}

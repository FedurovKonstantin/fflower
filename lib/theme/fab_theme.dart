import 'package:flutter/material.dart';

class FABThemeData {
  final Color backgroundColor;
  final Color iconColor;

  FABThemeData()
      : this._(
          Colors.black,
          Colors.white,
        );

  FABThemeData._(
    this.backgroundColor,
    this.iconColor,
  );
}

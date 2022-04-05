import 'package:flutter/material.dart';

class MFABThemeData {
  final Color backgroundColor;
  final Color iconColor;

  MFABThemeData()
      : this._(
          Colors.black,
          Colors.white,
        );

  MFABThemeData._(
    this.backgroundColor,
    this.iconColor,
  );
}

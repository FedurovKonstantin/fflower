import 'package:flutter/material.dart';
import 'package:fminimal/theme/m_theme.dart';

class MFAB extends StatelessWidget {
  const MFAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      foregroundColor: MTheme.of(context).fabTheme.iconColor,
      backgroundColor: MTheme.of(context).fabTheme.backgroundColor,
      child: const Icon(
        Icons.add,
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(22),
        ),
      ),
    );
  }
}

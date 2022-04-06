import 'package:flutter/material.dart';
import 'package:fminimal/theme/m_theme.dart';

class MButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;

  const MButton({
    Key? key,
    this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = MTheme.of(context);

    return TextButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          theme.primaryColor,
        ),
        foregroundColor: MaterialStateProperty.all(
          theme.onPrimaryColor,
        ),
      ),
      child: Text(
        text,
      ),
    );
  }
}

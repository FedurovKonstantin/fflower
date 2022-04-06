import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fminimal/theme/common/m_button.dart';

class RetryWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final String error;

  const RetryWidget({
    Key? key,
    this.onTap,
    required this.error,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          error,
          style: TextStyle(
            color: theme.errorColor,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        MButton(
          text: 'Retry',
          onTap: onTap,
        ),
      ],
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fminimal/theme/m_theme.dart';
import 'package:fminimal/theme/m_task/m_task_theme.dart';

enum MTaskState {
  checked,
  unchecked,
}

extension MTaskStateToBool on MTaskState {
  bool toBool() {
    return this == MTaskState.checked;
  }
}

extension MTaskFromBool on bool {
  MTaskState toMTaskState() {
    return this ? MTaskState.checked : MTaskState.unchecked;
  }
}

class MTask extends StatefulWidget {
  MTaskState taskState;
  final String text;

  MTask({
    Key? key,
    required this.taskState,
    required this.text,
  }) : super(key: key);

  @override
  State<MTask> createState() => _MTaskState();
}

class _MTaskState extends State<MTask> {
  @override
  Widget build(BuildContext context) {
    final taskTheme = MTheme.of(context).taskTheme;
    return Row(
      children: [
        Transform.scale(
          scale: taskTheme.checkBoxScale,
          child: Checkbox(
            fillColor: MaterialStateProperty.all(
              taskTheme.checkBoxColor,
            ),
            value: widget.taskState.toBool(),
            onChanged: (bool? flag) {
              if (flag != null) {
                setState(() {
                  widget.taskState = flag.toMTaskState();
                });
              }
            },
          ),
        ),
        Text(
          'Выгулять собаку',
          style: widget.taskState.toBool()
              ? taskTheme.checkedTextStyle
              : taskTheme.uncheckedTextStyle,
        ),
      ],
    );
  }
}

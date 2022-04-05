import 'package:flutter/material.dart';

import '../../../theme/m_task/m_task.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MTask(
          taskState: MTaskState.checked,
          text: "Dsuekznm cj,fre",
        ),
        MTask(
          taskState: MTaskState.unchecked,
          text: "Dsuekznm cj,fre",
        ),
        MTask(
          taskState: MTaskState.checked,
          text: "Dsuekznm cj,fre",
        ),
      ],
    );
  }
}

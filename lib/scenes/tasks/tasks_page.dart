import 'package:flutter/material.dart';
import 'package:fminimal/theme/m_task/m_task.dart';

import '../../theme/m_fab/m_fab.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: MFAB(),
      body: ListView(
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
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fminimal/scenes/tasks/views/tasks_list.dart';

import '../../theme/m_fab/m_fab.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: MFAB(),
      body: TasksList(),
    );
  }
}

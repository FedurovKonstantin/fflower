import 'package:flutter/material.dart';

import '../../theme/widgets/m_fab.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: MFAB(),
    );
  }
}

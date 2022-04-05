import 'dart:async';
import 'package:floor/floor.dart';
import 'package:fminimal/scenes/tasks/api/task_dao.dart';
import 'package:fminimal/scenes/tasks/domain/task.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'app_database.g.dart'; // the generated code will be there

@Database(version: 1, entities: [Task])
abstract class AppDatabase extends FloorDatabase {
  TaskDao get taskDao;
}

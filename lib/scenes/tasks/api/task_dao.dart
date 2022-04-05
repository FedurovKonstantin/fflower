// dao/person_dao.dart

import 'package:floor/floor.dart';
import 'package:fminimal/scenes/tasks/domain/task.dart';

@dao
abstract class TaskDao {
  @Query('SELECT * FROM Task')
  Future<List<Task>> findAllPersons();

  @Query('SELECT * FROM Task WHERE id = :id')
  Future<Task?> findTaskById(int id);

  @insert
  Future<void> insertTask(Task task);

  @delete
  Future<void> deleteTask(Task task);

  @update
  Future<void> updateTask(Task task);
}

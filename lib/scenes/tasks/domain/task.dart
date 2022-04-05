import 'package:floor/floor.dart';

@entity
class Task {
  @primaryKey
  final int id;

  final String title;

  Task(
    this.id,
    this.title,
  );
}

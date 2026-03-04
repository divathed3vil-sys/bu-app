import 'package:drift/drift.dart';

import 'activities_table.dart';

class TasksTable extends Table {
  TextColumn get id => text()();

  TextColumn get title => text()();

  TextColumn get description => text().nullable()();

  TextColumn get status => text().withDefault(const Constant('inbox'))();

  TextColumn get activityId =>
      text().nullable().references(ActivitiesTable, #id)();

  IntColumn get dueDate => integer().nullable()();

  IntColumn get completedAt => integer().nullable()();

  IntColumn get sortOrder => integer().withDefault(const Constant(0))();

  IntColumn get createdAt => integer()();

  IntColumn get updatedAt => integer()();

  @override
  Set<Column> get primaryKey => {id};
}

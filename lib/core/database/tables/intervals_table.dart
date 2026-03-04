import 'package:drift/drift.dart';

import 'activities_table.dart';

class IntervalsTable extends Table {
  TextColumn get id => text()();

  TextColumn get activityId => text().references(ActivitiesTable, #id)();

  IntColumn get startTime => integer()();

  IntColumn get endTime => integer().nullable()();

  IntColumn get durationSeconds => integer().nullable()();

  TextColumn get note => text().nullable()();

  IntColumn get createdAt => integer()();

  @override
  Set<Column> get primaryKey => {id};
}

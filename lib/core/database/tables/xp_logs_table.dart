import 'package:drift/drift.dart';

class XpLogsTable extends Table {
  TextColumn get id => text()();

  IntColumn get amount => integer()();

  TextColumn get source => text()();

  TextColumn get sourceId => text().nullable()();

  TextColumn get description => text()();

  IntColumn get createdAt => integer()();

  @override
  Set<Column> get primaryKey => {id};
}

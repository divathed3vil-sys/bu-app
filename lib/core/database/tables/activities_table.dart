import 'package:drift/drift.dart';

class ActivitiesTable extends Table {
  TextColumn get id => text()();

  TextColumn get name => text()();

  TextColumn get emoji => text().withDefault(const Constant('⏱'))();

  TextColumn get colorHex => text().withDefault(const Constant('#00E5FF'))();

  BoolColumn get isArchived => boolean().withDefault(const Constant(false))();

  IntColumn get sortOrder => integer().withDefault(const Constant(0))();

  IntColumn get createdAt => integer()();

  IntColumn get updatedAt => integer()();

  @override
  Set<Column> get primaryKey => {id};
}

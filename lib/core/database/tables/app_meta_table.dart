import 'package:drift/drift.dart';

class AppMetaTable extends Table {
  TextColumn get key => text()();

  TextColumn get value => text()();

  @override
  Set<Column> get primaryKey => {key};
}

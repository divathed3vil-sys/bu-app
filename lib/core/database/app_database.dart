import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'tables/activities_table.dart';
import 'tables/app_meta_table.dart';
import 'tables/intervals_table.dart';
import 'tables/tasks_table.dart';
import 'tables/xp_logs_table.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [
    ActivitiesTable,
    IntervalsTable,
    TasksTable,
    XpLogsTable,
    AppMetaTable,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (m) async {
      await m.createAll();
    },
    onUpgrade: (m, from, to) async {
      // Future migrations handled here
    },
  );
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'bu_database.sqlite'));
    return NativeDatabase(file);
  });
}

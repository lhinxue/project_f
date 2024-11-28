import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'database.g.dart';

@DataClassName('Transactions')
class Transaction extends Table {
  IntColumn get key => integer().autoIncrement()();
  DateTimeColumn get when => dateTime()();
}

@DataClassName('Items')
class Item extends Table {
  IntColumn get key => integer().autoIncrement()();
  IntColumn get transaction => integer().references(Transaction, #key)();
  IntColumn get category => integer().references(Category, #key)();
  RealColumn get price => real()();
  RealColumn get amount => real().nullable()();
  TextColumn get name => text()();
}

@DataClassName('Categories')
class Category extends Table {
  IntColumn get key => integer().autoIncrement()();
  TextColumn get name => text()();
}

@DriftDatabase(tables: [Transaction, Item, Category])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(name: 'mu_db');
  }
}

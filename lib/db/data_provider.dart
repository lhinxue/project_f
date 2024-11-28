import 'package:drift/drift.dart';
import 'package:project_f/db/database.dart';

class DataProvider {
  final AppDatabase _db;

  DataProvider(this._db);
  // Example: Fetch all transactions
  Future<List<Transactions>> fetchAllTransactions() {
    return _db.select(_db.transaction).get();
  }

  // Example: Add a transaction
  Future<int> addTransaction(DateTime dateTime) {
    return _db.into(_db.transaction).insert(
          TransactionCompanion(when: Value(dateTime)),
        );
  }

  // Example: Fetch items for a transaction
  Future<List<Items>> fetchItemsForTransaction(int transactionId) {
    return (_db.select(_db.item)
          ..where((tbl) => tbl.transaction.equals(transactionId)))
        .get();
  }

  // Example: Add an item
  Future<int> addItem({
    required int transaction,
    required int category,
    required double price,
    double? amount,
    required String name,
  }) {
    return _db.into(_db.item).insert(
          ItemCompanion(
            transaction: Value(transaction),
            category: Value(category),
            price: Value(price),
            amount: Value(amount),
            name: Value(name),
          ),
        );
  }

  // Example: Fetch all categories
  Future<List<Categories>> fetchAllCategories() {
    return _db.select(_db.category).get();
  }

  // Example: Add a category
  Future<int> addCategory(String name) {
    return _db.into(_db.category).insert(
          CategoryCompanion(name: Value(name)),
        );
  }
}

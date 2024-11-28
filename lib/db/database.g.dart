// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $TransactionTable extends Transaction
    with TableInfo<$TransactionTable, Transactions> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TransactionTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<int> key = GeneratedColumn<int>(
      'key', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _whenMeta = const VerificationMeta('when');
  @override
  late final GeneratedColumn<DateTime> when = GeneratedColumn<DateTime>(
      'when', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [key, when];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'transaction';
  @override
  VerificationContext validateIntegrity(Insertable<Transactions> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    }
    if (data.containsKey('when')) {
      context.handle(
          _whenMeta, when.isAcceptableOrUnknown(data['when']!, _whenMeta));
    } else if (isInserting) {
      context.missing(_whenMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  Transactions map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Transactions(
      key: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}key'])!,
      when: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}when'])!,
    );
  }

  @override
  $TransactionTable createAlias(String alias) {
    return $TransactionTable(attachedDatabase, alias);
  }
}

class Transactions extends DataClass implements Insertable<Transactions> {
  final int key;
  final DateTime when;
  const Transactions({required this.key, required this.when});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<int>(key);
    map['when'] = Variable<DateTime>(when);
    return map;
  }

  TransactionCompanion toCompanion(bool nullToAbsent) {
    return TransactionCompanion(
      key: Value(key),
      when: Value(when),
    );
  }

  factory Transactions.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Transactions(
      key: serializer.fromJson<int>(json['key']),
      when: serializer.fromJson<DateTime>(json['when']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<int>(key),
      'when': serializer.toJson<DateTime>(when),
    };
  }

  Transactions copyWith({int? key, DateTime? when}) => Transactions(
        key: key ?? this.key,
        when: when ?? this.when,
      );
  Transactions copyWithCompanion(TransactionCompanion data) {
    return Transactions(
      key: data.key.present ? data.key.value : this.key,
      when: data.when.present ? data.when.value : this.when,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Transactions(')
          ..write('key: $key, ')
          ..write('when: $when')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, when);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Transactions &&
          other.key == this.key &&
          other.when == this.when);
}

class TransactionCompanion extends UpdateCompanion<Transactions> {
  final Value<int> key;
  final Value<DateTime> when;
  const TransactionCompanion({
    this.key = const Value.absent(),
    this.when = const Value.absent(),
  });
  TransactionCompanion.insert({
    this.key = const Value.absent(),
    required DateTime when,
  }) : when = Value(when);
  static Insertable<Transactions> custom({
    Expression<int>? key,
    Expression<DateTime>? when,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (when != null) 'when': when,
    });
  }

  TransactionCompanion copyWith({Value<int>? key, Value<DateTime>? when}) {
    return TransactionCompanion(
      key: key ?? this.key,
      when: when ?? this.when,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<int>(key.value);
    }
    if (when.present) {
      map['when'] = Variable<DateTime>(when.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TransactionCompanion(')
          ..write('key: $key, ')
          ..write('when: $when')
          ..write(')'))
        .toString();
  }
}

class $CategoryTable extends Category
    with TableInfo<$CategoryTable, Categories> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoryTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<int> key = GeneratedColumn<int>(
      'key', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [key, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'category';
  @override
  VerificationContext validateIntegrity(Insertable<Categories> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  Categories map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Categories(
      key: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}key'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $CategoryTable createAlias(String alias) {
    return $CategoryTable(attachedDatabase, alias);
  }
}

class Categories extends DataClass implements Insertable<Categories> {
  final int key;
  final String name;
  const Categories({required this.key, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<int>(key);
    map['name'] = Variable<String>(name);
    return map;
  }

  CategoryCompanion toCompanion(bool nullToAbsent) {
    return CategoryCompanion(
      key: Value(key),
      name: Value(name),
    );
  }

  factory Categories.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Categories(
      key: serializer.fromJson<int>(json['key']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<int>(key),
      'name': serializer.toJson<String>(name),
    };
  }

  Categories copyWith({int? key, String? name}) => Categories(
        key: key ?? this.key,
        name: name ?? this.name,
      );
  Categories copyWithCompanion(CategoryCompanion data) {
    return Categories(
      key: data.key.present ? data.key.value : this.key,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Categories(')
          ..write('key: $key, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Categories && other.key == this.key && other.name == this.name);
}

class CategoryCompanion extends UpdateCompanion<Categories> {
  final Value<int> key;
  final Value<String> name;
  const CategoryCompanion({
    this.key = const Value.absent(),
    this.name = const Value.absent(),
  });
  CategoryCompanion.insert({
    this.key = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<Categories> custom({
    Expression<int>? key,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (name != null) 'name': name,
    });
  }

  CategoryCompanion copyWith({Value<int>? key, Value<String>? name}) {
    return CategoryCompanion(
      key: key ?? this.key,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<int>(key.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoryCompanion(')
          ..write('key: $key, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $ItemTable extends Item with TableInfo<$ItemTable, Items> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<int> key = GeneratedColumn<int>(
      'key', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _transactionMeta =
      const VerificationMeta('transaction');
  @override
  late final GeneratedColumn<int> transaction = GeneratedColumn<int>(
      'transaction', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES "transaction" ("key")'));
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumn<int> category = GeneratedColumn<int>(
      'category', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES category ("key")'));
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
      'price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
      'amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [key, transaction, category, price, amount, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'item';
  @override
  VerificationContext validateIntegrity(Insertable<Items> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    }
    if (data.containsKey('transaction')) {
      context.handle(
          _transactionMeta,
          transaction.isAcceptableOrUnknown(
              data['transaction']!, _transactionMeta));
    } else if (isInserting) {
      context.missing(_transactionMeta);
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  Items map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Items(
      key: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}key'])!,
      transaction: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}transaction'])!,
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}category'])!,
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price'])!,
      amount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}amount']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $ItemTable createAlias(String alias) {
    return $ItemTable(attachedDatabase, alias);
  }
}

class Items extends DataClass implements Insertable<Items> {
  final int key;
  final int transaction;
  final int category;
  final double price;
  final double? amount;
  final String name;
  const Items(
      {required this.key,
      required this.transaction,
      required this.category,
      required this.price,
      this.amount,
      required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<int>(key);
    map['transaction'] = Variable<int>(transaction);
    map['category'] = Variable<int>(category);
    map['price'] = Variable<double>(price);
    if (!nullToAbsent || amount != null) {
      map['amount'] = Variable<double>(amount);
    }
    map['name'] = Variable<String>(name);
    return map;
  }

  ItemCompanion toCompanion(bool nullToAbsent) {
    return ItemCompanion(
      key: Value(key),
      transaction: Value(transaction),
      category: Value(category),
      price: Value(price),
      amount:
          amount == null && nullToAbsent ? const Value.absent() : Value(amount),
      name: Value(name),
    );
  }

  factory Items.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Items(
      key: serializer.fromJson<int>(json['key']),
      transaction: serializer.fromJson<int>(json['transaction']),
      category: serializer.fromJson<int>(json['category']),
      price: serializer.fromJson<double>(json['price']),
      amount: serializer.fromJson<double?>(json['amount']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<int>(key),
      'transaction': serializer.toJson<int>(transaction),
      'category': serializer.toJson<int>(category),
      'price': serializer.toJson<double>(price),
      'amount': serializer.toJson<double?>(amount),
      'name': serializer.toJson<String>(name),
    };
  }

  Items copyWith(
          {int? key,
          int? transaction,
          int? category,
          double? price,
          Value<double?> amount = const Value.absent(),
          String? name}) =>
      Items(
        key: key ?? this.key,
        transaction: transaction ?? this.transaction,
        category: category ?? this.category,
        price: price ?? this.price,
        amount: amount.present ? amount.value : this.amount,
        name: name ?? this.name,
      );
  Items copyWithCompanion(ItemCompanion data) {
    return Items(
      key: data.key.present ? data.key.value : this.key,
      transaction:
          data.transaction.present ? data.transaction.value : this.transaction,
      category: data.category.present ? data.category.value : this.category,
      price: data.price.present ? data.price.value : this.price,
      amount: data.amount.present ? data.amount.value : this.amount,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Items(')
          ..write('key: $key, ')
          ..write('transaction: $transaction, ')
          ..write('category: $category, ')
          ..write('price: $price, ')
          ..write('amount: $amount, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(key, transaction, category, price, amount, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Items &&
          other.key == this.key &&
          other.transaction == this.transaction &&
          other.category == this.category &&
          other.price == this.price &&
          other.amount == this.amount &&
          other.name == this.name);
}

class ItemCompanion extends UpdateCompanion<Items> {
  final Value<int> key;
  final Value<int> transaction;
  final Value<int> category;
  final Value<double> price;
  final Value<double?> amount;
  final Value<String> name;
  const ItemCompanion({
    this.key = const Value.absent(),
    this.transaction = const Value.absent(),
    this.category = const Value.absent(),
    this.price = const Value.absent(),
    this.amount = const Value.absent(),
    this.name = const Value.absent(),
  });
  ItemCompanion.insert({
    this.key = const Value.absent(),
    required int transaction,
    required int category,
    required double price,
    this.amount = const Value.absent(),
    required String name,
  })  : transaction = Value(transaction),
        category = Value(category),
        price = Value(price),
        name = Value(name);
  static Insertable<Items> custom({
    Expression<int>? key,
    Expression<int>? transaction,
    Expression<int>? category,
    Expression<double>? price,
    Expression<double>? amount,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (transaction != null) 'transaction': transaction,
      if (category != null) 'category': category,
      if (price != null) 'price': price,
      if (amount != null) 'amount': amount,
      if (name != null) 'name': name,
    });
  }

  ItemCompanion copyWith(
      {Value<int>? key,
      Value<int>? transaction,
      Value<int>? category,
      Value<double>? price,
      Value<double?>? amount,
      Value<String>? name}) {
    return ItemCompanion(
      key: key ?? this.key,
      transaction: transaction ?? this.transaction,
      category: category ?? this.category,
      price: price ?? this.price,
      amount: amount ?? this.amount,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<int>(key.value);
    }
    if (transaction.present) {
      map['transaction'] = Variable<int>(transaction.value);
    }
    if (category.present) {
      map['category'] = Variable<int>(category.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemCompanion(')
          ..write('key: $key, ')
          ..write('transaction: $transaction, ')
          ..write('category: $category, ')
          ..write('price: $price, ')
          ..write('amount: $amount, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $TransactionTable transaction = $TransactionTable(this);
  late final $CategoryTable category = $CategoryTable(this);
  late final $ItemTable item = $ItemTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [transaction, category, item];
}

typedef $$TransactionTableCreateCompanionBuilder = TransactionCompanion
    Function({
  Value<int> key,
  required DateTime when,
});
typedef $$TransactionTableUpdateCompanionBuilder = TransactionCompanion
    Function({
  Value<int> key,
  Value<DateTime> when,
});

final class $$TransactionTableReferences
    extends BaseReferences<_$AppDatabase, $TransactionTable, Transactions> {
  $$TransactionTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$ItemTable, List<Items>> _itemRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.item,
          aliasName:
              $_aliasNameGenerator(db.transaction.key, db.item.transaction));

  $$ItemTableProcessedTableManager get itemRefs {
    final manager = $$ItemTableTableManager($_db, $_db.item)
        .filter((f) => f.transaction.key($_item.key));

    final cache = $_typedResult.readTableOrNull(_itemRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$TransactionTableFilterComposer
    extends Composer<_$AppDatabase, $TransactionTable> {
  $$TransactionTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get when => $composableBuilder(
      column: $table.when, builder: (column) => ColumnFilters(column));

  Expression<bool> itemRefs(
      Expression<bool> Function($$ItemTableFilterComposer f) f) {
    final $$ItemTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.key,
        referencedTable: $db.item,
        getReferencedColumn: (t) => t.transaction,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemTableFilterComposer(
              $db: $db,
              $table: $db.item,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$TransactionTableOrderingComposer
    extends Composer<_$AppDatabase, $TransactionTable> {
  $$TransactionTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get when => $composableBuilder(
      column: $table.when, builder: (column) => ColumnOrderings(column));
}

class $$TransactionTableAnnotationComposer
    extends Composer<_$AppDatabase, $TransactionTable> {
  $$TransactionTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<DateTime> get when =>
      $composableBuilder(column: $table.when, builder: (column) => column);

  Expression<T> itemRefs<T extends Object>(
      Expression<T> Function($$ItemTableAnnotationComposer a) f) {
    final $$ItemTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.key,
        referencedTable: $db.item,
        getReferencedColumn: (t) => t.transaction,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemTableAnnotationComposer(
              $db: $db,
              $table: $db.item,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$TransactionTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TransactionTable,
    Transactions,
    $$TransactionTableFilterComposer,
    $$TransactionTableOrderingComposer,
    $$TransactionTableAnnotationComposer,
    $$TransactionTableCreateCompanionBuilder,
    $$TransactionTableUpdateCompanionBuilder,
    (Transactions, $$TransactionTableReferences),
    Transactions,
    PrefetchHooks Function({bool itemRefs})> {
  $$TransactionTableTableManager(_$AppDatabase db, $TransactionTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TransactionTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TransactionTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TransactionTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> key = const Value.absent(),
            Value<DateTime> when = const Value.absent(),
          }) =>
              TransactionCompanion(
            key: key,
            when: when,
          ),
          createCompanionCallback: ({
            Value<int> key = const Value.absent(),
            required DateTime when,
          }) =>
              TransactionCompanion.insert(
            key: key,
            when: when,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$TransactionTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({itemRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (itemRefs) db.item],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (itemRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$TransactionTableReferences._itemRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$TransactionTableReferences(db, table, p0)
                                .itemRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.transaction == item.key),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$TransactionTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $TransactionTable,
    Transactions,
    $$TransactionTableFilterComposer,
    $$TransactionTableOrderingComposer,
    $$TransactionTableAnnotationComposer,
    $$TransactionTableCreateCompanionBuilder,
    $$TransactionTableUpdateCompanionBuilder,
    (Transactions, $$TransactionTableReferences),
    Transactions,
    PrefetchHooks Function({bool itemRefs})>;
typedef $$CategoryTableCreateCompanionBuilder = CategoryCompanion Function({
  Value<int> key,
  required String name,
});
typedef $$CategoryTableUpdateCompanionBuilder = CategoryCompanion Function({
  Value<int> key,
  Value<String> name,
});

final class $$CategoryTableReferences
    extends BaseReferences<_$AppDatabase, $CategoryTable, Categories> {
  $$CategoryTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$ItemTable, List<Items>> _itemRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.item,
          aliasName: $_aliasNameGenerator(db.category.key, db.item.category));

  $$ItemTableProcessedTableManager get itemRefs {
    final manager = $$ItemTableTableManager($_db, $_db.item)
        .filter((f) => f.category.key($_item.key));

    final cache = $_typedResult.readTableOrNull(_itemRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$CategoryTableFilterComposer
    extends Composer<_$AppDatabase, $CategoryTable> {
  $$CategoryTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  Expression<bool> itemRefs(
      Expression<bool> Function($$ItemTableFilterComposer f) f) {
    final $$ItemTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.key,
        referencedTable: $db.item,
        getReferencedColumn: (t) => t.category,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemTableFilterComposer(
              $db: $db,
              $table: $db.item,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$CategoryTableOrderingComposer
    extends Composer<_$AppDatabase, $CategoryTable> {
  $$CategoryTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));
}

class $$CategoryTableAnnotationComposer
    extends Composer<_$AppDatabase, $CategoryTable> {
  $$CategoryTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  Expression<T> itemRefs<T extends Object>(
      Expression<T> Function($$ItemTableAnnotationComposer a) f) {
    final $$ItemTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.key,
        referencedTable: $db.item,
        getReferencedColumn: (t) => t.category,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemTableAnnotationComposer(
              $db: $db,
              $table: $db.item,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$CategoryTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CategoryTable,
    Categories,
    $$CategoryTableFilterComposer,
    $$CategoryTableOrderingComposer,
    $$CategoryTableAnnotationComposer,
    $$CategoryTableCreateCompanionBuilder,
    $$CategoryTableUpdateCompanionBuilder,
    (Categories, $$CategoryTableReferences),
    Categories,
    PrefetchHooks Function({bool itemRefs})> {
  $$CategoryTableTableManager(_$AppDatabase db, $CategoryTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CategoryTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CategoryTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CategoryTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> key = const Value.absent(),
            Value<String> name = const Value.absent(),
          }) =>
              CategoryCompanion(
            key: key,
            name: name,
          ),
          createCompanionCallback: ({
            Value<int> key = const Value.absent(),
            required String name,
          }) =>
              CategoryCompanion.insert(
            key: key,
            name: name,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$CategoryTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({itemRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (itemRefs) db.item],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (itemRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$CategoryTableReferences._itemRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$CategoryTableReferences(db, table, p0).itemRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.category == item.key),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$CategoryTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CategoryTable,
    Categories,
    $$CategoryTableFilterComposer,
    $$CategoryTableOrderingComposer,
    $$CategoryTableAnnotationComposer,
    $$CategoryTableCreateCompanionBuilder,
    $$CategoryTableUpdateCompanionBuilder,
    (Categories, $$CategoryTableReferences),
    Categories,
    PrefetchHooks Function({bool itemRefs})>;
typedef $$ItemTableCreateCompanionBuilder = ItemCompanion Function({
  Value<int> key,
  required int transaction,
  required int category,
  required double price,
  Value<double?> amount,
  required String name,
});
typedef $$ItemTableUpdateCompanionBuilder = ItemCompanion Function({
  Value<int> key,
  Value<int> transaction,
  Value<int> category,
  Value<double> price,
  Value<double?> amount,
  Value<String> name,
});

final class $$ItemTableReferences
    extends BaseReferences<_$AppDatabase, $ItemTable, Items> {
  $$ItemTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $TransactionTable _transactionTable(_$AppDatabase db) =>
      db.transaction.createAlias(
          $_aliasNameGenerator(db.item.transaction, db.transaction.key));

  $$TransactionTableProcessedTableManager? get transaction {
    if ($_item.transaction == null) return null;
    final manager = $$TransactionTableTableManager($_db, $_db.transaction)
        .filter((f) => f.key($_item.transaction!));
    final item = $_typedResult.readTableOrNull(_transactionTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $CategoryTable _categoryTable(_$AppDatabase db) => db.category
      .createAlias($_aliasNameGenerator(db.item.category, db.category.key));

  $$CategoryTableProcessedTableManager? get category {
    if ($_item.category == null) return null;
    final manager = $$CategoryTableTableManager($_db, $_db.category)
        .filter((f) => f.key($_item.category!));
    final item = $_typedResult.readTableOrNull(_categoryTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$ItemTableFilterComposer extends Composer<_$AppDatabase, $ItemTable> {
  $$ItemTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get price => $composableBuilder(
      column: $table.price, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get amount => $composableBuilder(
      column: $table.amount, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  $$TransactionTableFilterComposer get transaction {
    final $$TransactionTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.transaction,
        referencedTable: $db.transaction,
        getReferencedColumn: (t) => t.key,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionTableFilterComposer(
              $db: $db,
              $table: $db.transaction,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$CategoryTableFilterComposer get category {
    final $$CategoryTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.category,
        referencedTable: $db.category,
        getReferencedColumn: (t) => t.key,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CategoryTableFilterComposer(
              $db: $db,
              $table: $db.category,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ItemTableOrderingComposer extends Composer<_$AppDatabase, $ItemTable> {
  $$ItemTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get price => $composableBuilder(
      column: $table.price, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get amount => $composableBuilder(
      column: $table.amount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  $$TransactionTableOrderingComposer get transaction {
    final $$TransactionTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.transaction,
        referencedTable: $db.transaction,
        getReferencedColumn: (t) => t.key,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionTableOrderingComposer(
              $db: $db,
              $table: $db.transaction,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$CategoryTableOrderingComposer get category {
    final $$CategoryTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.category,
        referencedTable: $db.category,
        getReferencedColumn: (t) => t.key,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CategoryTableOrderingComposer(
              $db: $db,
              $table: $db.category,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ItemTableAnnotationComposer
    extends Composer<_$AppDatabase, $ItemTable> {
  $$ItemTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<double> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);

  GeneratedColumn<double> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  $$TransactionTableAnnotationComposer get transaction {
    final $$TransactionTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.transaction,
        referencedTable: $db.transaction,
        getReferencedColumn: (t) => t.key,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionTableAnnotationComposer(
              $db: $db,
              $table: $db.transaction,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$CategoryTableAnnotationComposer get category {
    final $$CategoryTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.category,
        referencedTable: $db.category,
        getReferencedColumn: (t) => t.key,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CategoryTableAnnotationComposer(
              $db: $db,
              $table: $db.category,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ItemTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ItemTable,
    Items,
    $$ItemTableFilterComposer,
    $$ItemTableOrderingComposer,
    $$ItemTableAnnotationComposer,
    $$ItemTableCreateCompanionBuilder,
    $$ItemTableUpdateCompanionBuilder,
    (Items, $$ItemTableReferences),
    Items,
    PrefetchHooks Function({bool transaction, bool category})> {
  $$ItemTableTableManager(_$AppDatabase db, $ItemTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ItemTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ItemTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ItemTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> key = const Value.absent(),
            Value<int> transaction = const Value.absent(),
            Value<int> category = const Value.absent(),
            Value<double> price = const Value.absent(),
            Value<double?> amount = const Value.absent(),
            Value<String> name = const Value.absent(),
          }) =>
              ItemCompanion(
            key: key,
            transaction: transaction,
            category: category,
            price: price,
            amount: amount,
            name: name,
          ),
          createCompanionCallback: ({
            Value<int> key = const Value.absent(),
            required int transaction,
            required int category,
            required double price,
            Value<double?> amount = const Value.absent(),
            required String name,
          }) =>
              ItemCompanion.insert(
            key: key,
            transaction: transaction,
            category: category,
            price: price,
            amount: amount,
            name: name,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$ItemTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({transaction = false, category = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (transaction) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.transaction,
                    referencedTable:
                        $$ItemTableReferences._transactionTable(db),
                    referencedColumn:
                        $$ItemTableReferences._transactionTable(db).key,
                  ) as T;
                }
                if (category) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.category,
                    referencedTable: $$ItemTableReferences._categoryTable(db),
                    referencedColumn:
                        $$ItemTableReferences._categoryTable(db).key,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$ItemTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ItemTable,
    Items,
    $$ItemTableFilterComposer,
    $$ItemTableOrderingComposer,
    $$ItemTableAnnotationComposer,
    $$ItemTableCreateCompanionBuilder,
    $$ItemTableUpdateCompanionBuilder,
    (Items, $$ItemTableReferences),
    Items,
    PrefetchHooks Function({bool transaction, bool category})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$TransactionTableTableManager get transaction =>
      $$TransactionTableTableManager(_db, _db.transaction);
  $$CategoryTableTableManager get category =>
      $$CategoryTableTableManager(_db, _db.category);
  $$ItemTableTableManager get item => $$ItemTableTableManager(_db, _db.item);
}

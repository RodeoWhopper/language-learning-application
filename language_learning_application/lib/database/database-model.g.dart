// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database-model.dart';

// ignore_for_file: type=lint
class $DecksTable extends Decks with TableInfo<$DecksTable, Deck> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DecksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _isDeletedMeta =
      const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool> isDeleted = GeneratedColumn<bool>(
      'is_deleted', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_deleted" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [id, name, createdDate, isDeleted];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'decks';
  @override
  VerificationContext validateIntegrity(Insertable<Deck> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    } else if (isInserting) {
      context.missing(_isDeletedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Deck map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Deck(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      isDeleted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_deleted'])!,
    );
  }

  @override
  $DecksTable createAlias(String alias) {
    return $DecksTable(attachedDatabase, alias);
  }
}

class Deck extends DataClass implements Insertable<Deck> {
  final int id;
  final String name;
  final DateTime createdDate;
  final bool isDeleted;
  const Deck(
      {required this.id,
      required this.name,
      required this.createdDate,
      required this.isDeleted});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['is_deleted'] = Variable<bool>(isDeleted);
    return map;
  }

  DecksCompanion toCompanion(bool nullToAbsent) {
    return DecksCompanion(
      id: Value(id),
      name: Value(name),
      createdDate: Value(createdDate),
      isDeleted: Value(isDeleted),
    );
  }

  factory Deck.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Deck(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      isDeleted: serializer.fromJson<bool>(json['isDeleted']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'isDeleted': serializer.toJson<bool>(isDeleted),
    };
  }

  Deck copyWith(
          {int? id, String? name, DateTime? createdDate, bool? isDeleted}) =>
      Deck(
        id: id ?? this.id,
        name: name ?? this.name,
        createdDate: createdDate ?? this.createdDate,
        isDeleted: isDeleted ?? this.isDeleted,
      );
  Deck copyWithCompanion(DecksCompanion data) {
    return Deck(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
      isDeleted: data.isDeleted.present ? data.isDeleted.value : this.isDeleted,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Deck(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('createdDate: $createdDate, ')
          ..write('isDeleted: $isDeleted')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, createdDate, isDeleted);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Deck &&
          other.id == this.id &&
          other.name == this.name &&
          other.createdDate == this.createdDate &&
          other.isDeleted == this.isDeleted);
}

class DecksCompanion extends UpdateCompanion<Deck> {
  final Value<int> id;
  final Value<String> name;
  final Value<DateTime> createdDate;
  final Value<bool> isDeleted;
  const DecksCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.isDeleted = const Value.absent(),
  });
  DecksCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required DateTime createdDate,
    required bool isDeleted,
  })  : name = Value(name),
        createdDate = Value(createdDate),
        isDeleted = Value(isDeleted);
  static Insertable<Deck> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<DateTime>? createdDate,
    Expression<bool>? isDeleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (createdDate != null) 'created_date': createdDate,
      if (isDeleted != null) 'is_deleted': isDeleted,
    });
  }

  DecksCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<DateTime>? createdDate,
      Value<bool>? isDeleted}) {
    return DecksCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      createdDate: createdDate ?? this.createdDate,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool>(isDeleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DecksCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('createdDate: $createdDate, ')
          ..write('isDeleted: $isDeleted')
          ..write(')'))
        .toString();
  }
}

class $LearningCardsTable extends LearningCards
    with TableInfo<$LearningCardsTable, LearningCard> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LearningCardsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _frontSideMeta =
      const VerificationMeta('frontSide');
  @override
  late final GeneratedColumn<String> frontSide = GeneratedColumn<String>(
      'front_side', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumnWithTypeConverter<CardType, String> type =
      GeneratedColumn<String>('type', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<CardType>($LearningCardsTable.$convertertype);
  static const VerificationMeta _backSideMeta =
      const VerificationMeta('backSide');
  @override
  late final GeneratedColumn<String> backSide = GeneratedColumn<String>(
      'back_side', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _isDeletedMeta =
      const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool> isDeleted = GeneratedColumn<bool>(
      'is_deleted', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_deleted" IN (0, 1))'));
  static const VerificationMeta _deckIdMeta = const VerificationMeta('deckId');
  @override
  late final GeneratedColumn<int> deckId = GeneratedColumn<int>(
      'deck_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'REFERENCES decks(id)');
  @override
  List<GeneratedColumn> get $columns =>
      [id, frontSide, type, backSide, createdDate, isDeleted, deckId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'learning_cards';
  @override
  VerificationContext validateIntegrity(Insertable<LearningCard> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('front_side')) {
      context.handle(_frontSideMeta,
          frontSide.isAcceptableOrUnknown(data['front_side']!, _frontSideMeta));
    } else if (isInserting) {
      context.missing(_frontSideMeta);
    }
    context.handle(_typeMeta, const VerificationResult.success());
    if (data.containsKey('back_side')) {
      context.handle(_backSideMeta,
          backSide.isAcceptableOrUnknown(data['back_side']!, _backSideMeta));
    } else if (isInserting) {
      context.missing(_backSideMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    } else if (isInserting) {
      context.missing(_isDeletedMeta);
    }
    if (data.containsKey('deck_id')) {
      context.handle(_deckIdMeta,
          deckId.isAcceptableOrUnknown(data['deck_id']!, _deckIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LearningCard map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LearningCard(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      frontSide: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}front_side'])!,
      type: $LearningCardsTable.$convertertype.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!),
      backSide: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}back_side'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      isDeleted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_deleted'])!,
      deckId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}deck_id']),
    );
  }

  @override
  $LearningCardsTable createAlias(String alias) {
    return $LearningCardsTable(attachedDatabase, alias);
  }

  static TypeConverter<CardType, String> $convertertype =
      const CardTypeConverter();
}

class LearningCard extends DataClass implements Insertable<LearningCard> {
  final int id;
  final String frontSide;
  final CardType type;
  final String backSide;
  final DateTime createdDate;
  final bool isDeleted;
  final int? deckId;
  const LearningCard(
      {required this.id,
      required this.frontSide,
      required this.type,
      required this.backSide,
      required this.createdDate,
      required this.isDeleted,
      this.deckId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['front_side'] = Variable<String>(frontSide);
    {
      map['type'] =
          Variable<String>($LearningCardsTable.$convertertype.toSql(type));
    }
    map['back_side'] = Variable<String>(backSide);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['is_deleted'] = Variable<bool>(isDeleted);
    if (!nullToAbsent || deckId != null) {
      map['deck_id'] = Variable<int>(deckId);
    }
    return map;
  }

  LearningCardsCompanion toCompanion(bool nullToAbsent) {
    return LearningCardsCompanion(
      id: Value(id),
      frontSide: Value(frontSide),
      type: Value(type),
      backSide: Value(backSide),
      createdDate: Value(createdDate),
      isDeleted: Value(isDeleted),
      deckId:
          deckId == null && nullToAbsent ? const Value.absent() : Value(deckId),
    );
  }

  factory LearningCard.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LearningCard(
      id: serializer.fromJson<int>(json['id']),
      frontSide: serializer.fromJson<String>(json['frontSide']),
      type: serializer.fromJson<CardType>(json['type']),
      backSide: serializer.fromJson<String>(json['backSide']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      isDeleted: serializer.fromJson<bool>(json['isDeleted']),
      deckId: serializer.fromJson<int?>(json['deckId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'frontSide': serializer.toJson<String>(frontSide),
      'type': serializer.toJson<CardType>(type),
      'backSide': serializer.toJson<String>(backSide),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'isDeleted': serializer.toJson<bool>(isDeleted),
      'deckId': serializer.toJson<int?>(deckId),
    };
  }

  LearningCard copyWith(
          {int? id,
          String? frontSide,
          CardType? type,
          String? backSide,
          DateTime? createdDate,
          bool? isDeleted,
          Value<int?> deckId = const Value.absent()}) =>
      LearningCard(
        id: id ?? this.id,
        frontSide: frontSide ?? this.frontSide,
        type: type ?? this.type,
        backSide: backSide ?? this.backSide,
        createdDate: createdDate ?? this.createdDate,
        isDeleted: isDeleted ?? this.isDeleted,
        deckId: deckId.present ? deckId.value : this.deckId,
      );
  LearningCard copyWithCompanion(LearningCardsCompanion data) {
    return LearningCard(
      id: data.id.present ? data.id.value : this.id,
      frontSide: data.frontSide.present ? data.frontSide.value : this.frontSide,
      type: data.type.present ? data.type.value : this.type,
      backSide: data.backSide.present ? data.backSide.value : this.backSide,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
      isDeleted: data.isDeleted.present ? data.isDeleted.value : this.isDeleted,
      deckId: data.deckId.present ? data.deckId.value : this.deckId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LearningCard(')
          ..write('id: $id, ')
          ..write('frontSide: $frontSide, ')
          ..write('type: $type, ')
          ..write('backSide: $backSide, ')
          ..write('createdDate: $createdDate, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('deckId: $deckId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, frontSide, type, backSide, createdDate, isDeleted, deckId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LearningCard &&
          other.id == this.id &&
          other.frontSide == this.frontSide &&
          other.type == this.type &&
          other.backSide == this.backSide &&
          other.createdDate == this.createdDate &&
          other.isDeleted == this.isDeleted &&
          other.deckId == this.deckId);
}

class LearningCardsCompanion extends UpdateCompanion<LearningCard> {
  final Value<int> id;
  final Value<String> frontSide;
  final Value<CardType> type;
  final Value<String> backSide;
  final Value<DateTime> createdDate;
  final Value<bool> isDeleted;
  final Value<int?> deckId;
  const LearningCardsCompanion({
    this.id = const Value.absent(),
    this.frontSide = const Value.absent(),
    this.type = const Value.absent(),
    this.backSide = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.deckId = const Value.absent(),
  });
  LearningCardsCompanion.insert({
    this.id = const Value.absent(),
    required String frontSide,
    required CardType type,
    required String backSide,
    required DateTime createdDate,
    required bool isDeleted,
    this.deckId = const Value.absent(),
  })  : frontSide = Value(frontSide),
        type = Value(type),
        backSide = Value(backSide),
        createdDate = Value(createdDate),
        isDeleted = Value(isDeleted);
  static Insertable<LearningCard> custom({
    Expression<int>? id,
    Expression<String>? frontSide,
    Expression<String>? type,
    Expression<String>? backSide,
    Expression<DateTime>? createdDate,
    Expression<bool>? isDeleted,
    Expression<int>? deckId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (frontSide != null) 'front_side': frontSide,
      if (type != null) 'type': type,
      if (backSide != null) 'back_side': backSide,
      if (createdDate != null) 'created_date': createdDate,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (deckId != null) 'deck_id': deckId,
    });
  }

  LearningCardsCompanion copyWith(
      {Value<int>? id,
      Value<String>? frontSide,
      Value<CardType>? type,
      Value<String>? backSide,
      Value<DateTime>? createdDate,
      Value<bool>? isDeleted,
      Value<int?>? deckId}) {
    return LearningCardsCompanion(
      id: id ?? this.id,
      frontSide: frontSide ?? this.frontSide,
      type: type ?? this.type,
      backSide: backSide ?? this.backSide,
      createdDate: createdDate ?? this.createdDate,
      isDeleted: isDeleted ?? this.isDeleted,
      deckId: deckId ?? this.deckId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (frontSide.present) {
      map['front_side'] = Variable<String>(frontSide.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(
          $LearningCardsTable.$convertertype.toSql(type.value));
    }
    if (backSide.present) {
      map['back_side'] = Variable<String>(backSide.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool>(isDeleted.value);
    }
    if (deckId.present) {
      map['deck_id'] = Variable<int>(deckId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LearningCardsCompanion(')
          ..write('id: $id, ')
          ..write('frontSide: $frontSide, ')
          ..write('type: $type, ')
          ..write('backSide: $backSide, ')
          ..write('createdDate: $createdDate, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('deckId: $deckId')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $DecksTable decks = $DecksTable(this);
  late final $LearningCardsTable learningCards = $LearningCardsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [decks, learningCards];
}

typedef $$DecksTableCreateCompanionBuilder = DecksCompanion Function({
  Value<int> id,
  required String name,
  required DateTime createdDate,
  required bool isDeleted,
});
typedef $$DecksTableUpdateCompanionBuilder = DecksCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<DateTime> createdDate,
  Value<bool> isDeleted,
});

final class $$DecksTableReferences
    extends BaseReferences<_$AppDatabase, $DecksTable, Deck> {
  $$DecksTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$LearningCardsTable, List<LearningCard>>
      _learningCardsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.learningCards,
              aliasName:
                  $_aliasNameGenerator(db.decks.id, db.learningCards.deckId));

  $$LearningCardsTableProcessedTableManager get learningCardsRefs {
    final manager = $$LearningCardsTableTableManager($_db, $_db.learningCards)
        .filter((f) => f.deckId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_learningCardsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$DecksTableFilterComposer extends Composer<_$AppDatabase, $DecksTable> {
  $$DecksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isDeleted => $composableBuilder(
      column: $table.isDeleted, builder: (column) => ColumnFilters(column));

  Expression<bool> learningCardsRefs(
      Expression<bool> Function($$LearningCardsTableFilterComposer f) f) {
    final $$LearningCardsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.learningCards,
        getReferencedColumn: (t) => t.deckId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$LearningCardsTableFilterComposer(
              $db: $db,
              $table: $db.learningCards,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$DecksTableOrderingComposer
    extends Composer<_$AppDatabase, $DecksTable> {
  $$DecksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isDeleted => $composableBuilder(
      column: $table.isDeleted, builder: (column) => ColumnOrderings(column));
}

class $$DecksTableAnnotationComposer
    extends Composer<_$AppDatabase, $DecksTable> {
  $$DecksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);

  GeneratedColumn<bool> get isDeleted =>
      $composableBuilder(column: $table.isDeleted, builder: (column) => column);

  Expression<T> learningCardsRefs<T extends Object>(
      Expression<T> Function($$LearningCardsTableAnnotationComposer a) f) {
    final $$LearningCardsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.learningCards,
        getReferencedColumn: (t) => t.deckId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$LearningCardsTableAnnotationComposer(
              $db: $db,
              $table: $db.learningCards,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$DecksTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DecksTable,
    Deck,
    $$DecksTableFilterComposer,
    $$DecksTableOrderingComposer,
    $$DecksTableAnnotationComposer,
    $$DecksTableCreateCompanionBuilder,
    $$DecksTableUpdateCompanionBuilder,
    (Deck, $$DecksTableReferences),
    Deck,
    PrefetchHooks Function({bool learningCardsRefs})> {
  $$DecksTableTableManager(_$AppDatabase db, $DecksTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DecksTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DecksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DecksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<bool> isDeleted = const Value.absent(),
          }) =>
              DecksCompanion(
            id: id,
            name: name,
            createdDate: createdDate,
            isDeleted: isDeleted,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required DateTime createdDate,
            required bool isDeleted,
          }) =>
              DecksCompanion.insert(
            id: id,
            name: name,
            createdDate: createdDate,
            isDeleted: isDeleted,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$DecksTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({learningCardsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (learningCardsRefs) db.learningCards
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (learningCardsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$DecksTableReferences._learningCardsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$DecksTableReferences(db, table, p0)
                                .learningCardsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.deckId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$DecksTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $DecksTable,
    Deck,
    $$DecksTableFilterComposer,
    $$DecksTableOrderingComposer,
    $$DecksTableAnnotationComposer,
    $$DecksTableCreateCompanionBuilder,
    $$DecksTableUpdateCompanionBuilder,
    (Deck, $$DecksTableReferences),
    Deck,
    PrefetchHooks Function({bool learningCardsRefs})>;
typedef $$LearningCardsTableCreateCompanionBuilder = LearningCardsCompanion
    Function({
  Value<int> id,
  required String frontSide,
  required CardType type,
  required String backSide,
  required DateTime createdDate,
  required bool isDeleted,
  Value<int?> deckId,
});
typedef $$LearningCardsTableUpdateCompanionBuilder = LearningCardsCompanion
    Function({
  Value<int> id,
  Value<String> frontSide,
  Value<CardType> type,
  Value<String> backSide,
  Value<DateTime> createdDate,
  Value<bool> isDeleted,
  Value<int?> deckId,
});

final class $$LearningCardsTableReferences
    extends BaseReferences<_$AppDatabase, $LearningCardsTable, LearningCard> {
  $$LearningCardsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $DecksTable _deckIdTable(_$AppDatabase db) => db.decks
      .createAlias($_aliasNameGenerator(db.learningCards.deckId, db.decks.id));

  $$DecksTableProcessedTableManager? get deckId {
    if ($_item.deckId == null) return null;
    final manager = $$DecksTableTableManager($_db, $_db.decks)
        .filter((f) => f.id($_item.deckId!));
    final item = $_typedResult.readTableOrNull(_deckIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$LearningCardsTableFilterComposer
    extends Composer<_$AppDatabase, $LearningCardsTable> {
  $$LearningCardsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get frontSide => $composableBuilder(
      column: $table.frontSide, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<CardType, CardType, String> get type =>
      $composableBuilder(
          column: $table.type,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get backSide => $composableBuilder(
      column: $table.backSide, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isDeleted => $composableBuilder(
      column: $table.isDeleted, builder: (column) => ColumnFilters(column));

  $$DecksTableFilterComposer get deckId {
    final $$DecksTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.deckId,
        referencedTable: $db.decks,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DecksTableFilterComposer(
              $db: $db,
              $table: $db.decks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$LearningCardsTableOrderingComposer
    extends Composer<_$AppDatabase, $LearningCardsTable> {
  $$LearningCardsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get frontSide => $composableBuilder(
      column: $table.frontSide, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get backSide => $composableBuilder(
      column: $table.backSide, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isDeleted => $composableBuilder(
      column: $table.isDeleted, builder: (column) => ColumnOrderings(column));

  $$DecksTableOrderingComposer get deckId {
    final $$DecksTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.deckId,
        referencedTable: $db.decks,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DecksTableOrderingComposer(
              $db: $db,
              $table: $db.decks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$LearningCardsTableAnnotationComposer
    extends Composer<_$AppDatabase, $LearningCardsTable> {
  $$LearningCardsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get frontSide =>
      $composableBuilder(column: $table.frontSide, builder: (column) => column);

  GeneratedColumnWithTypeConverter<CardType, String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get backSide =>
      $composableBuilder(column: $table.backSide, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);

  GeneratedColumn<bool> get isDeleted =>
      $composableBuilder(column: $table.isDeleted, builder: (column) => column);

  $$DecksTableAnnotationComposer get deckId {
    final $$DecksTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.deckId,
        referencedTable: $db.decks,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DecksTableAnnotationComposer(
              $db: $db,
              $table: $db.decks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$LearningCardsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LearningCardsTable,
    LearningCard,
    $$LearningCardsTableFilterComposer,
    $$LearningCardsTableOrderingComposer,
    $$LearningCardsTableAnnotationComposer,
    $$LearningCardsTableCreateCompanionBuilder,
    $$LearningCardsTableUpdateCompanionBuilder,
    (LearningCard, $$LearningCardsTableReferences),
    LearningCard,
    PrefetchHooks Function({bool deckId})> {
  $$LearningCardsTableTableManager(_$AppDatabase db, $LearningCardsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LearningCardsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LearningCardsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LearningCardsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> frontSide = const Value.absent(),
            Value<CardType> type = const Value.absent(),
            Value<String> backSide = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<bool> isDeleted = const Value.absent(),
            Value<int?> deckId = const Value.absent(),
          }) =>
              LearningCardsCompanion(
            id: id,
            frontSide: frontSide,
            type: type,
            backSide: backSide,
            createdDate: createdDate,
            isDeleted: isDeleted,
            deckId: deckId,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String frontSide,
            required CardType type,
            required String backSide,
            required DateTime createdDate,
            required bool isDeleted,
            Value<int?> deckId = const Value.absent(),
          }) =>
              LearningCardsCompanion.insert(
            id: id,
            frontSide: frontSide,
            type: type,
            backSide: backSide,
            createdDate: createdDate,
            isDeleted: isDeleted,
            deckId: deckId,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$LearningCardsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({deckId = false}) {
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
                if (deckId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.deckId,
                    referencedTable:
                        $$LearningCardsTableReferences._deckIdTable(db),
                    referencedColumn:
                        $$LearningCardsTableReferences._deckIdTable(db).id,
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

typedef $$LearningCardsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LearningCardsTable,
    LearningCard,
    $$LearningCardsTableFilterComposer,
    $$LearningCardsTableOrderingComposer,
    $$LearningCardsTableAnnotationComposer,
    $$LearningCardsTableCreateCompanionBuilder,
    $$LearningCardsTableUpdateCompanionBuilder,
    (LearningCard, $$LearningCardsTableReferences),
    LearningCard,
    PrefetchHooks Function({bool deckId})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$DecksTableTableManager get decks =>
      $$DecksTableTableManager(_db, _db.decks);
  $$LearningCardsTableTableManager get learningCards =>
      $$LearningCardsTableTableManager(_db, _db.learningCards);
}

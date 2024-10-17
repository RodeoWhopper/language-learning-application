import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:language_learning_application/models/constants/card-type.dart';
import 'package:language_learning_application/utils/converters/card-type-converter.dart';

part 'database-model.g.dart';

@DataClassName('Deck')
class Decks extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().unique()();
  DateTimeColumn get createdDate => dateTime()();
  BoolColumn get isDeleted => boolean()();
}

class LearningCards extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get frontSide => text()();
  TextColumn get type => text().map(const CardTypeConverter())();
  TextColumn get backSide => text()();
  DateTimeColumn get createdDate => dateTime()();
  BoolColumn get isDeleted => boolean()();
  IntColumn get deckId => integer().nullable().customConstraint('REFERENCES decks(id)')();
}


@DriftDatabase(tables: [Decks, LearningCards])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  // TODO: implement schemaVersion
  int get schemaVersion => 1;

  static QueryExecutor _openConnection(){
    return driftDatabase(name: 'learning_app_database');
  }
}

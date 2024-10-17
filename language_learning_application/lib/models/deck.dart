import 'package:language_learning_application/models/learning-card.dart';


class Deck {
  int id = 0;
  String name;
  DateTime createdDate = DateTime.now();
  bool isDeleted = false;
  List<LearningCard> cards;

  Deck({required this.name, required this.cards});
}

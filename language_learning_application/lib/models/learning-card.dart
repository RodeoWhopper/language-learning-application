import 'package:language_learning_application/models/constants/card-type.dart';

class LearningCard{
  int id = 0;
  String frontSide;
  CardType type;
  String backSide;//burası hem link olabilir hem de cevap yani text
  DateTime createdDate = DateTime.now();
  bool isDeleted = false;
  int deckId;

  LearningCard({required this.frontSide, required this.type, required this.backSide, required this.deckId});
}
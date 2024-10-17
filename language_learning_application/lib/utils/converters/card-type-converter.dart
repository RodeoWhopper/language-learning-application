import 'package:drift/drift.dart';
import 'package:language_learning_application/contants/messages.dart';
import 'package:language_learning_application/models/constants/card-type.dart';

class CardTypeConverter extends TypeConverter<CardType, String> {

  const CardTypeConverter();

  @override
  CardType fromSql(String fromDb) {
    if(fromDb == null){
      throw InvalidDataException(TypeConversationErrorMessage);
    }
    switch(fromDb){
      case "video":
        return CardType.video;
      case "photo":
        return CardType.photo;
      case "text":
        return CardType.text;
      default:
        throw InvalidDataException(TypeConversationErrorMessage);
    }
  }

  @override
  String toSql(CardType value) {
    if(value == null){
      throw InvalidDataException(TypeConversationErrorMessage);
    }
    switch(value){
      case CardType.video:
        return "video";
      case CardType.photo:
        return "photo";
      case CardType.text:
        return "text";
      default:
        throw InvalidDataException(TypeConversationErrorMessage);

    }
  }

}
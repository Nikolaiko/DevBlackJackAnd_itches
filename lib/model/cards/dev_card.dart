import 'package:dev_cards_game/model/cards/enums/card_suit.dart';
import 'package:dev_cards_game/model/cards/enums/card_value.dart';
import 'package:dev_cards_game/model/cards/enums/suit_color.dart';

class DevCard {
  final CardSuit suit;
  final SuitColor color;
  final CardValue value;
  
  DevCard(
    {
      required this.suit,
      required this.color,
      required this.value
    }
  );
}
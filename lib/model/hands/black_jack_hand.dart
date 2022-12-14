import 'package:dev_cards_game/model/cards/enums/card_value.dart';
import 'package:dev_cards_game/model/hands/player_hand.dart';

class BlackJackHand extends PlayerHand {
  int getCardsValue() {
    int cardsValue = 0;
    for (var card in cardsInHand) {
      cardsValue += _cardValueToInt(card.value);
    }
    return cardsValue;
  }

  int _cardValueToInt(CardValue value) {
    switch (value) {
      case CardValue.ace: {
        return 11;        
      }
      case CardValue.king: {
        return 10;        
      }
      case CardValue.queen: {
        return 10;        
      }
      case CardValue.jack: {
        return 10;      
      }
      case CardValue.ten: {
        return 10;
      }
      case CardValue.nine: {
        return 9;
      }
      case CardValue.eight: {
        return 8;
      }
      case CardValue.seven: {
        return 7;
      }
      case CardValue.six: {
        return 6;
      }      
      case CardValue.five: {
        return 5;
      }  
      case CardValue.four: {
        return 4;
      }
      case CardValue.three: {
        return 3;
      }
      case CardValue.two: {
        return 2;
      }
    }
  }
}
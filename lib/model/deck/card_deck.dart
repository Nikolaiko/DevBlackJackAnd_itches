import 'package:dev_cards_game/extensions/list_extensions.dart';
import 'package:dev_cards_game/model/cards/dev_card.dart';

class CardDeck {
  final List<DevCard> _cards;

  CardDeck(this._cards);

  void shuffleDeck() {
    _cards.shuffle();
  }

  bool isEmpty() {
    return _cards.isEmpty;
  }

  DevCard? getRandomCard() {
    return isEmpty()
      ? null
      : _cards.removeRandomItem();
  }
}
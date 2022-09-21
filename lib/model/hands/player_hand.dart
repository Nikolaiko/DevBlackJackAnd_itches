import 'package:dev_cards_game/model/cards/dev_card.dart';

abstract class PlayerHand {
  final List<DevCard> _cardsInHand = List.empty(growable: true);

  List<DevCard> get cardsInHand => List.from(_cardsInHand, growable: false);

  void addCard(DevCard newCard) {
    if (!_cardsInHand.contains(newCard)) {
      _cardsInHand.add(newCard);
    }
  }

  void clearHand() => _cardsInHand.clear();
}
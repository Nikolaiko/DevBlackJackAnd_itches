import 'package:dev_cards_game/model/cards/dev_card.dart';
import 'package:dev_cards_game/model/cards/enums/card_suit.dart';
import 'package:dev_cards_game/model/cards/enums/card_value.dart';
import 'package:dev_cards_game/model/cards/enums/suit_color.dart';
import 'package:dev_cards_game/model/deck/builders/deck_builder.dart';
import 'package:dev_cards_game/model/deck/card_deck.dart';

class SimpleDeckBuilder extends DeckBuilder {
  
  @override
  CardDeck buildDeck() {
    List<DevCard> cards = List.empty(growable: true);

    for (CardSuit suit in CardSuit.values) {
      for (CardValue value in CardValue.values) {
        for (SuitColor color in SuitColor.values) {
          cards.add(
            DevCard(suit: suit, color: color, value: value)
          );
        }
      }
    }
    return CardDeck(cards);
  }
}
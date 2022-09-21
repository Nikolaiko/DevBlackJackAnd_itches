import 'package:dev_cards_game/model/cards/dev_card.dart';
import 'package:dev_cards_game/model/data/display_data/black_jack_display_data.dart';
import 'package:dev_cards_game/model/data/enums/black_jack_player_status.dart';
import 'package:dev_cards_game/model/deck/builders/deck_builder.dart';
import 'package:dev_cards_game/model/deck/card_deck.dart';
import 'package:dev_cards_game/model/hands/black_jack_hand.dart';
import 'package:flutter/material.dart';

class BlackJackState extends ChangeNotifier {
  static const int winPoints = 21;

  BlackJackDisplayData userDisplayData = BlackJackDisplayData();

  final DeckBuilder _deckBuilder;
  final BlackJackHand _userHand;

  CardDeck? _deck;

  BlackJackState(
    this._deckBuilder,
    this._userHand
  );

  void prepareGame() {
    _deck = _deckBuilder.buildDeck();
    _deck?.shuffleDeck();
  }

  void addCardToUserHand() {
    final DevCard? randomCard = _deck?.getRandomCard();
    if (randomCard == null) {
      _handleError();
    } else {
      _userHand.addCard(randomCard);
    }
    
    _checkHandCondition(_userHand, userDisplayData);
    notifyListeners();
  }

  void _checkHandCondition(BlackJackHand hand, BlackJackDisplayData data) {
    int cardsValue = hand.getCardsValue();
    BlackJackPlayerStatus status = cardsValue > winPoints
      ? BlackJackPlayerStatus.busted
      : BlackJackPlayerStatus.playing;

    data = BlackJackDisplayData(cardsValue: cardsValue, status: status);
  }

  void _handleError() {
    //TODO
  }
}
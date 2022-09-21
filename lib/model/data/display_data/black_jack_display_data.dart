import 'package:dev_cards_game/model/data/enums/black_jack_player_status.dart';

class BlackJackDisplayData {
  final int cardsValue;
  final BlackJackPlayerStatus status;

  BlackJackDisplayData({
    this.cardsValue = 0, 
    this.status = BlackJackPlayerStatus.waiting
  });
}


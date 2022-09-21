import 'package:dev_cards_game/model/data/enums/game_type.dart';

extension GameTypeName on GameType {
  String get name {
    switch(this) {
      case GameType.blackJack:
        return "blackJack";
      case GameType.fool:
        return "fool";
    }
  }
}
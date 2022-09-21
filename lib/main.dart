import 'package:dev_cards_game/games/black_jack/black_jack_init_widget.dart';
import 'package:dev_cards_game/games/black_jack/black_jack_navigator.dart';
import 'package:dev_cards_game/main_screen/main_screen_widget.dart';
import 'package:dev_cards_game/model/data/enums/game_type.dart';
import 'package:dev_cards_game/model/deck/builders/deck_builder.dart';
import 'package:dev_cards_game/model/deck/builders/simple_deck_builder.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {
  GetIt.instance.registerSingleton<DeckBuilder>(
    SimpleDeckBuilder(), 
    instanceName: GameType.blackJack.name
  );


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/black_jack" : (context) => BlackJackNavigator(),
        "/" :(context) => MainScreenWidget()        
      }
    );
  }
}
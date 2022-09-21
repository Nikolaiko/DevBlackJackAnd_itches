
import 'package:dev_cards_game/games/black_jack/black_jack_navigator.dart';
import 'package:flutter/material.dart';

class BlackJackInitWidget extends StatelessWidget {
  const BlackJackInitWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: () { showMenu(context); }, child: Text("Menu")),
        ElevatedButton(onPressed: () { Navigator.of(context).pushNamed(settings); }, child: Text("Settings")),    
      ],
    );
  }

  void showMenu(BuildContext context) {
    Navigator.of(context).pop();
  }
}

import 'package:dev_cards_game/common_widgets/simple_button.dart';
import 'package:dev_cards_game/themes/dark_theme_consts.dart';
import 'package:flutter/material.dart';

class MainScreenWidget extends StatelessWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: mainBackgroundColor,
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/black_jack");

                    },                
                    child: Text("Route")
                  ),
                  SimpleButton(title: "Black Jack"),
                  SimpleButton(title: "Settings"),
                ],
              )
            )
          ],
        )
      )
    );
    
  }
}
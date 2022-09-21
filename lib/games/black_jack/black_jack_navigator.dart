import 'package:dev_cards_game/common_widgets/unknown_page_widget.dart';
import 'package:dev_cards_game/games/black_jack/black_jack_init_widget.dart';
import 'package:dev_cards_game/games/black_jack/black_jack_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

const String init = "init";
const String settings = "settins";

class BlackJackNavigator extends StatelessWidget {
  const BlackJackNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: init,      
      onGenerateRoute: _buildRoute,
      onUnknownRoute: _buildUnknown,
    );
  }

  Route _buildRoute(RouteSettings setting) {
    Route route = _buildUnknown(setting);

      switch(setting.name) {
        case init: {
          route = PageRouteBuilder(
            settings: setting,
            pageBuilder: (context, animation, secondaryAnimation) =>
              BlackJackInitWidget(),
            transitionsBuilder: _buildTransition
          );
          break;
        }
        case settings: {
          route = PageRouteBuilder(
            settings: setting,
            pageBuilder: (context, animation, secondaryAnimation) =>
              BlackJackSettings(),
            transitionsBuilder: _buildTransition
          );
          break;
        }
      }
    return route;
  }

  Route _buildUnknown(RouteSettings setting) {
    return PageRouteBuilder(
            settings: setting,
            pageBuilder: (context, animation, secondaryAnimation) =>
              UnknownRouteScreen(),
            transitionsBuilder: _buildTransition
          );
  }

  Widget _buildTransition(BuildContext context, Animation animation, Animation secondaryAnimation, Widget child) {
    var begin = const Offset(1.0, 0.0);
    var end = Offset.zero;
    var tween = Tween(begin: begin, end: end);
    var offsetAnimation = animation.drive(tween);

    return SlideTransition(
        position: offsetAnimation,
        child: child
    );
  }
}
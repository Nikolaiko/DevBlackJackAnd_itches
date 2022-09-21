import 'package:dev_cards_game/themes/dark_theme_consts.dart';
import 'package:flutter/material.dart';

class SimpleButton extends StatelessWidget {
  final String title;

  const SimpleButton(
    {
      required this.title,
      Key? key
    }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 4),
      decoration: BoxDecoration(
        color: buttonBackgroundColor,
        border: Border.all(
          color: buttonBorderColor,
          width: 1.0,
          style: BorderStyle.solid
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(5.0)
        )
      ),
      child: Text(
        title,
        style: TextStyle(
          color: buttonTextColor,
          fontSize: 25.0
        ),
      )
    );
  }
}
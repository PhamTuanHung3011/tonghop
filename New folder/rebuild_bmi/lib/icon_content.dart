import 'package:flutter/material.dart';
import 'package:rebuild_bmi/constants.dart';

class choiceGeneral extends StatelessWidget {
  final IconData choiceIcon;
  final String choiceText;
  choiceGeneral({required this.choiceIcon, required this.choiceText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          choiceIcon,
          size: 80.0,
        ),
        SizedBox(height: 15.0),
        Text(
          choiceText,
          style: kLableTextStyle,
        ),
      ],
    );
  }
}

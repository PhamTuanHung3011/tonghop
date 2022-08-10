import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';


class IconContent extends StatelessWidget {
  
  final IconData iconData;
  final String lable;
  IconContent({required this.iconData,required this.lable});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  <Widget>[
        Icon(
          iconData,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(lable,
          style: lableTextStyle,)
      ],
    );
  }
}
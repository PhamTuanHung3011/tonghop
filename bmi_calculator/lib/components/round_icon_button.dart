import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {

  final IconData icons;
  final VoidCallback onPressed;


  RoundIconButton({required this.icons, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icons),
      elevation: 6.0,
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
import 'package:flutter/material.dart';


class RoundIconButton extends StatelessWidget {
     IconData iconData;
     final void function() onPressed;
     RoundIconButton({required this.iconData});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor:const Color(0xFF1CF32),
      shape:const CircleBorder(),
      constraints: const BoxConstraints.tightFor(
        width:56.0,
        height:56.0,
      ),
      child:Icon(
        iconData,
        size:30,
        ),
    
      );
    
  }
}
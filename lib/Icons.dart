import 'package:flutter/material.dart';
import 'cons.dart';

class IconContent extends StatelessWidget {

  final IconData iconData;

  final String label; 

     IconContent({required this.iconData, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       Icon(
        IconData,
       size:65,
       color: Color(0xFF868892),
       ),
       SizedBox(
        height:10,
        ),
       Text(
        'label',
        style:labelstyle,
       ),
      ],

    );
  }
}
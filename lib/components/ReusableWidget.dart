import 'package:flutter/material.dart';
class ReusableWidget extends StatelessWidget {
  ReusableWidget({required this.color,this.child,this.onPressed});
  final Color color;
  final Widget? child;
  final void function()? onPressed;

  @override  
  Widget build(BuildContext context) {
    return Expanded(
       child: InkWell(
        onTap:onPressed,
         child: Container(
             width: double.infinity,   
                color: color,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                ),
       ),
    
    );
  }
}
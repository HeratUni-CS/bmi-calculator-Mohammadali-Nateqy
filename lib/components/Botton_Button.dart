import 'package:flutter/material.dart';
import 'cons.dart';


class BottomBottom extends StatelessWidget {
  void Function() onPresed;
   late String label;
   BottonButton({required this.onPresed,required this.label})
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
       onTap: onPressed,
      },
      child: Container(
        width: double.infinity,
        height: 80, 
        color: KBottomcontainerColor,
        margin: EdgeInsets.only(top:10),
        child:Center(
          child: Text(
            label,
            style:KlargeButtonStyle,
            ),
          ),
      ),
    );
  }
}
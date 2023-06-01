import 'package:flutter/material.dart';
import 'package:flutter/material.dart';


class ResultPage extends StatelessWidget {
      late String result;
      late String bmi;
      late String interpretation;
      ResultPage({required this.result,required this.bmi,required this.interpretation})
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(
          result,
          ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
              child:Container(
                margin:EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child:Text(
                  bmi,
                  style: KTitleTextStyle,
                ),
              ),
              ),
          ),
            BottomBottom(
              onPressed: (){
                Navigator.pop(context);
              },
               label: 'RECALCULATE',
               ), 
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../srcreen/input_page.dart';
import 'Icons.dart';
import 'components/ReusableWidget.dart';
import 'result_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark( ).copyWith(
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF0A0D22)),
        scaffoldBackgroundColor: Color(0xFF0A0D22),
        textTheme: TextTheme(bodyMedium: TextStyle(color:Colors.black))
      ),
      home: InputPage(), 
    );
  }
}


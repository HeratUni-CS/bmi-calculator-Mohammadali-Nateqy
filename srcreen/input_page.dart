import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../lib/components/ReusableWidget.dart';
import '../lib/Icons.dart';
import '../lib/cons.dart';
import '../lib/result_page.dart';
import '../lib/Botton_Button.dart';
import '../lib/components/round_icon_button.dart';
import 'bmi_brain.dart';


enum Gender{
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
    Gender? selectedGender;   
     int height = 175;
    int Weight= 70;
    int age = 20;

  @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row( 
            children: [
              ReusableWidget(
                onPressed: (){
                  setState(() {
                  selectedGender = Gender.male;  
                  });
                },
                    color: (selectedGender == Gender.male) ? activecardColor: inactiveCardColor,
                    child: IconContent(
                      iconData: fontAwesomeIcons.mars,
                      label: 'MALE',
                      ),
                    ),
                  ],
                ),
              ),
             ReusableWidget(
              onPressed: (){
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
              color:(selectedGender == Gender.female) ? activecardColor: inactiveCardColor,
              child:IconContent(
                iconData: fontAwesomeIcons.venus,
                label: 'FEMALE',
              ) ,
              ),
              ],
         
         ReusableWidget(
          color: KActivecardColor,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Text(
              'HEIGHT',
              style: KLabelstyle,
              ), 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                 Text(
                  height.toString(),
                  style: KNumberstyle,
                  ),
                 Text(
                  'cm',
                 style: KLabelstyle,
                 ),
                ],
              ),
              SliderTheme( 
                data:SliderThemeData( 
                  trackHeight:1,
                   thumbShape: RoundSliderThumbShape(enabledThumbRadius:15),
                   overlayShape:RoundSliderOverlayShape(overlayRadius: 30), 
                   activeTrackColor: Colors.white,
                   inactiveTrackColor:Color(0xFF88993),
                   thumbColor: Color(0xFFE1555),
                     overlayColor: Color(0x27EB1555),
                    ),
                child: Slider(
                  value: height.toDouble(), 
                  onChanged: (double value){
                    setState(() {
                      height=value.round();
                    });
                  },
                  min: 120,
                  max: 220,
      
                  ),
              ),
            ],
          ), 
          ),
          Expanded(
            child: Row( 
            children: [
              ReusableWidget(
                color: KActivecardColor,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'AGE',
                      style:KLabelstyle,
                    ),
                    Text(
                      age.toString(),
                      style:KNumberstyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        RoundIconButton(
                          onPressed:(){
                            setState(() {
                              age--;
                            }); 
                          },
                          iconData:Icons.remove,
                          ),
                        SizedBox(
                          width: 10,
                        ),
                        RoundIconButton(
                          iconData: Icons.add, onPresed:onPressed (){
                            setState(() {
                              age++;
                            });
                          }),
                      ],
                    ),
                  ],
                ) ,
                ),
              ReusableWidget(
                color: KActivecardColor,
                child: Column(

                ),
                ),
                ],
          )),
          BottonButton(
            onPresed: (){
        BMIBrain bmiBrain = BMIBrain(Weight: , height: height);
            
            },
            ),
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder:(context){
          return ResultPage(
            result: BMIBrain.getResult(),
            bmi: BMIBrain.getBMI(),
            interpretation:BMIBrain.getInterpretation(), 

          );
          },
          ),
          );
            };
           label:('CALCULATE YOUR BMI',);
          },
      ),
    ),
    );
}
}




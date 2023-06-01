class BMIBrain{
  late int Weight;
  late int height;
  late double bmi=0;

  BMIBrain({required this.Weight,required this.height,required this.bmi}){
        bmi = Weight/pow(height/100,2);
  }
  String getResult(){
    if (bmi<18.5){
      return 'UNDERWEIGHT';
    }else if(bmi<25){

      return 'NORMAL';
    }else if(bmi<30){
       return 'OVERWEIGHT';
    }else{
      return 'OBASE';
    }
  }
  String getBMI(){
    return bmi.toStringAsFixed(2);
  }
  String getInterpretation(){
     if (bmi<18.5){
      return 'you are dying eat something';
    }else if(bmi<25){

      return 'you are good to go';
    }else if(bmi<30){
       return 'you are getting fact, take exercise more';
    }else{
      return 'you are exploding';
    }
  } 
}
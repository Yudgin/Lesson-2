
import 'dart:io';
import 'dart:math';

void Task1(){
  print('Pleeas input value');
  String? line =stdin.readLineSync();
  if (line==null) {
    print('Value  не ввели');
    return;
  }
  int? value = int.tryParse(line);
  print(value);
  if (value==null) {
    print('Value incorrect');
    return;
    }
    if (value>90){
      print('Rate A');
    }else if (value>80){
      print('Rate B');
    }else if (value>70){
      print('Rate C');
    }else if (value>60){
      print('Rate D');
    }else {
      print('Rate F');
    }


}
void Task2(){
  final int SecketValue  = Random().nextInt(100);
  String? line;
  int? PeopleValue = 0;
  while (SecketValue!=PeopleValue){
    print('Input Value or x for exit');
    if (line=='x') break;
    line = stdin.readLineSync();
    if (line==null){
      print('Error: You no input value');
      continue;
    }
    PeopleValue = int.tryParse(line);
    if (PeopleValue==null){
      print('Error: You no input number');
      continue;
    }else if (PeopleValue<0||PeopleValue>100){
      print('Error: You value need 0 to 100');
      continue;
    }
    if (SecketValue==PeopleValue){
      print('Very good');
    }else if(SecketValue>PeopleValue){
      print('You value to low');
    } else if(SecketValue<PeopleValue){
      print('You value to big');
    }
  }
}
void Task3(){
print('Pleas input Value for find factorial');
String? line;
int? PeopleValue = 0;
line = stdin.readLineSync();
if (line==null){
  print('Error: You no input value');
  return;
}
PeopleValue = int.tryParse(line);
if (PeopleValue==null){
  print('Error: You no input number');
  return;
}else if (PeopleValue<0){
  print('Error: You value need >0');
  return;
}
int finish =1;
int FinalValue = 1;
while(finish!=PeopleValue){
  finish++;
  FinalValue = FinalValue*finish;
}
print(FinalValue);
}
double celsiusToFahrenheit(double celsius){
  return celsius*9/5+32;
}
double fahrenheitToCelsius(double celsius){
  return (celsius-32)*5/9;
}
void Task4(){
  print('Hello.');
  print('Choice variant convertation');
  print('1 - for celsius to fahrenheit');
  print('2 - for fahrenheit to celsius');
  String? line;
  double? InputVariant = 0;
  double? ConvertValue = 0;
  while (1==1){
    line = stdin.readLineSync();
    if (line==null){
      print('Error: You no input number');
      continue;
    }else if (line=='x'){
      return;
    }else if (line=='1'){
      print('Ok. please input celsius');
      InputVariant = 1;
      break;
    }else if (line=='2'){
      print('Ok. please input fahrenheit');
      InputVariant=2;
      break;
    }else{
      print('You value no correct. Pleas write correct falue or input x for return');
      continue;
    }
  }
  while(1==1) {
    print('Pleas Input value to convert');
    line = stdin.readLineSync();
    if (line==null){
      print('Error: You no input number');
      continue;
    }
    InputVariant = double.tryParse(line);
    if (InputVariant==null){
      print('Error: You no input number');
      continue;
    }else if (InputVariant == 1) {
      ConvertValue = celsiusToFahrenheit(InputVariant);
      print('$InputVariant C = $ConvertValue F');
      return;
    } else {
      ConvertValue = fahrenheitToCelsius(InputVariant);
      print('$InputVariant F = $ConvertValue C');
      return;
    }
  }
}

void add(int  x, int y){
  int c = x+y;
  print(c);
}
void subtract(int  x, int y){
  int c = x-y;
  print(c);
}
void MyMultiply(int  x, int y){
  int c = x*y;
  print(c);
}
void MyDivide(int  x, int y){
  if (y == 0){
    print('Error divide /0');
    return;
  }
  double c = x / y;
  print(c);
}

void Task5() {


  String? line;
  double? InputVariant = 0;
  double? ConvertValue = 0;
  const String Add = '+';
  const String Subtract = '-';
  const String multiply = '*';
  const String divide = '/';
  int? x = 0;
  int? y = 0;
  String Xstr = '';
  String Ystr = '';
  int TypeOfCalc = 0;
  int IndexOPeration = 0;

  while (1 == 1) {
    print('Plees input Formula');
    print('Good format:');
    print('x + y');
    print('x - y');
    print('x * y');
    print('x / y');
    print('_____');
    print('Write x for exit');
    line = stdin.readLineSync();
    if (line=='x'){
      return;}

    if (line == null) {
      print('Error: You no input string');
      continue;
    }
    // finfd +
    IndexOPeration = line.indexOf(Add);
    if (IndexOPeration > 0) TypeOfCalc = 1;
    else if (line.indexOf(Subtract)>0) {
      TypeOfCalc=2;
      IndexOPeration = line.indexOf(Subtract);
    }else if (line.indexOf(multiply)>0) {
      TypeOfCalc=3;
      IndexOPeration = line.indexOf(multiply);
    }else if (line.indexOf(divide)>0) {
      TypeOfCalc=4;
      IndexOPeration = line.indexOf(divide);
    }else {
      print('Error: in string no find operation');
      continue;
    }
    if (IndexOPeration==line.length){
      print('String no have Y');
    }
    Xstr = line.substring(0, IndexOPeration);
    Ystr = line.substring(IndexOPeration+1,line.length);
    x = int.tryParse(Xstr);
    y = int.tryParse(Ystr);
    if (x==null){
      print('Error: Value x no correct');
      continue;
    }
    if (y==null){
      print('Error: Value y no correct');
      continue;
    }
    switch (TypeOfCalc){
      case 1:
        add(x,y);
      case 2:
        subtract(x,y);
       case 3:
         MyMultiply(x,y);
       case 4:
         MyDivide(x,y);
    }




  }
}
void main(){
Task5();
}
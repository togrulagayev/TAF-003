import 'dart:io';

void main() {
  // ! Istifadəçinin adını və yaşını teleb edin.
  // ! Nece il sonra 100 yasi olacagini mueyyen edin
  stdout.writeln('What is your name?');
  var name = stdin.readLineSync();
  stdout.write('Your age:\t');
  var age = int.parse(stdin.readLineSync().toString());
  var yearsToHundred = 100 - age;
  print('Hello $name, you will be 100 years old in $yearsToHundred years.');
}

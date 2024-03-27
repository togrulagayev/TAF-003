import 'dart:io';

void main() {
  // * Iki eded teleb ele  , birinci eden boyukdurse birinciden 2cini cix, yox 2ci boyukdurse 1-ci ve 2-ci topla
  // calculate();

  // print('Enter one word: ');
  // var word = stdin.readLineSync().toString();
  // reverseFun('salam');

  int num1 = 30;
  int num2 = 20;

  print(num1 + num2);
  print(90 + 38);

  sum(num1, num2);
  sum(90, 38);
}

sum(int a, int b) {
  print(a + b);
}

reverseFun(String param) {
  var reversedWord = param.split('').reversed.join();
  print(reversedWord);
}

calculate() {
  print('Enter first number: ');
  var firstNumber = int.parse(stdin.readLineSync().toString());

  print('Enter second number: ');
  var secondNumber = int.parse(stdin.readLineSync().toString());

  if (firstNumber > secondNumber)
    print(firstNumber - secondNumber);
  else if (secondNumber > firstNumber) print(firstNumber + secondNumber);
}

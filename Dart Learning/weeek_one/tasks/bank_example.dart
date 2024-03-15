import 'dart:io';

void main() {
  var customerIDs = {111, 222, 333, 444, 555, 666};
  double balance = 0;
  // *  Istifadeciden ID teleb edin
  // * Istifadecinin ID-si musteri siyahisinda varsa, balansa medaxil etmek imkanini verin
  stdout.writeln('What is your ID?');
  var customerID = int.parse(stdin.readLineSync()!);
  if (customerIDs.contains(customerID)) {
    stdout.writeln('How much do you want to deposit?');
    var deposit = double.parse(stdin.readLineSync().toString());
    balance += deposit;
    print('Your balance: \$$balance');
  } else {
    print('Invalid ID');
  }
}

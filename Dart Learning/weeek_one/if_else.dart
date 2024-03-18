void main() {
  // ! if, else if , else

  int a = 100;
  int b = 30;
  // int c = 10;
  // b += a += c;
  // print(a);
  // print(b);

  // if (a > b) {
  //   print(a);
  // } else {
  //   print(b);
  // }

  // * şərt ? nəticə 1 : nəticə 2

  bool isStudent = false;

  // isStudent ? print('telebedir') : print('telebe deyil');

  // // *
  // String gender = 'Male';
  // String gender1 = 'Female';
  // int age = 16;

  // if (gender == 'Male') {
  //   if (age >= 18) {
  //     print('Getdin xidmete');
  //   } else {
  //     print('Hele vaxta var');
  //   }
  // } else {
  //   print('Herbi mukellefiyeti yoxdur');
  // }

  // * Balansda 1000 azn ve daha cox varsa , 10% azaltsin
  // * Balansda 500 azn ve daha cox varsa , 5% azaltsin
  // * Balansda 100 azn ve daha cox varsa , 5% artirsin
  // * Balansda 0 azn  ve daha cox varsa , 10% artirsin
  // * Eger 0dirsa 10 azn elave et

  // double balance = 50;

  // if (balance >= 1000) {
  //   // balance = balance - balance * 10 / 100;
  //   balance = balance * 0.9;
  //   print('Balansinizdan 10% azaldildi. Yeni balans: $balance');
  // } else if (balance >= 500) {
  //   balance -= balance * 5 / 100;
  //   print(balance);
  // } else if (balance >= 100) {
  //   // balance += balance * 5 / 100;
  //   balance = balance * 1.05;
  //   print(balance);
  // } else if (balance >= 0) {
  //   if (balance == 0) {
  //     balance += 10;
  //   } else {
  //     balance = balance * 1.1;
  //   }
  //   print(balance);
  // } else {
  //   print(balance);
  // }

  String name1 = 'Ruslan';
  String name2 = 'Suat';

  if (name1 == 'Ruslan' ||
      name2 == 'Ruslan' && name2 == 'suat' ||
      name1 == 'Suat') {
    print('Valid');
  } else {
    print('Invalid');
  }
}

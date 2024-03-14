void main() {
  String name = 'Kerim';
  String surname = 'Agayev';
  int age = 26;
  // print(name + ' ' + surname);
  print('$name $surname Yasiniz: $age');

  DateTime now = DateTime.now();
  print('Gun : ${now.day}\nAy : ${now.month}\nIl : ${now.year}');

  // print('a' * 30);

  // ! Arithmetic Operators

  int a = 30;
  int b = 20;
  int c = a + b;
  print(c);

// ! Relational Operators
  print(a <= b);
}

void main() {
  // ! Comment line
  // * 1- Single line comment
  /* 2- Multi line comment */
  /// 3- Documentation comment

  // print("Hello, World!");

  // * Data Types
  //! 1- String  '' or ""

// !    data type   variable name        Assignment operator            value
// !     String        name                       =                     'ALI';
  String name = 'Ali';
  print(name);
  name = '15344347646732';
  // print(name);

  // ! numbers
  // * 1- int - tam ededler
  int a = 20;
  a = 30;
  print(a);

  // * 2- double - kesr ededler
  double b = 30.6;
  b = 40;
  print(b);

  // * 3- num - int ve ya double
  num num1 = 15;
  num num2 = 50.9;
  print(num1 + num2);

  // ! Boolean
  bool isStudent = true;
  print(isStudent);

  // ! var

  var brand = 'Apple';
  print(brand);
  brand = '';

  // ! dynamic

  // dynamic z = 10;
  // print(z.runtimeType);
  // z = 'Hello';
  // print(z.runtimeType);
  // print(z);

  // ! DateTime
  DateTime date = DateTime(1945, 3, 11);
  print(date);
  DateTime now = DateTime.now();
  print(now);
}

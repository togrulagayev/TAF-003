typedef MyRecord = (
  Null, {
  String name,
  int age,
  double height,
  bool isSdutent,
  DateTime dateOfBirth,
  List<String> skills,
  Map<String, String> address,
  Set<int> luckyNumbers,
});
void main() {
  Record record = ('John', 25);
  print(record);

  Map<String, dynamic> record2 = {
    'name': 'John',
    'age': 25,
  };
  print(record2);

  MyRecord record1 = (
    null, //null
    name: 'Doe', // string
    age: 30, // int
    height: 1.85, // double
    isSdutent: true, // bool
    dateOfBirth: DateTime(1990, 1, 1), //DateTime
    skills: ['Dart', 'Flutter'], //List
    address: {'city': 'New York', 'country': 'USA'}, //Map
    luckyNumbers: {14, 25, 30}, //Set
  );

  print(record1.name);
  print(record1.age);
  print(record1.height);
  print(record1.isSdutent);
  print(record1.dateOfBirth);
  print(record1.skills);
  print(record1.address);
  print(record1.luckyNumbers);
  print(record1.$1);
  print(swap((4, 5)));

  print(calculate((4, 5)));

  ({int a, int b}) recordAB = (a: 1, b: 2);
  ({int x, int y}) recordXY = (x: 3, y: 4);
  print(recordAB);
  print(recordXY);

// Compile error! These records don't have the same type.
// recordAB = recordXY;
}

(int, int) swap((int, int) record3) {
  var (x, y) = record3;
  return (y, x);
}

int calculate((int, int) record) {
  var (x, y) = record;
  if (x > y) {
    return x - y;
  } else {
    return x + y;
  }
}

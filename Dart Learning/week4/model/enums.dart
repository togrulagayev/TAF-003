// ignore_for_file: public_member_api_docs, sort_constructors_first
enum Weekdays {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
}

enum Gender { male, female }

class Person {
  String name;
  int age;
  Gender gender;
  Person({
    required this.name,
    required this.age,
    required this.gender,
  });
}

main() {
  Person person1 = Person(name: 'John', age: 30, gender: Gender.male);
  print(person1.name);

  var day = Weekdays.sunday;
  print(day.name);

  double price = 100;

  switch (day) {
    case Weekdays.monday:
      price *= 1.1;
      print('Today is Monday, price is \$$price');
    case Weekdays.tuesday:
      print('Today is Tuesday, price is \$$price');
    case Weekdays.wednesday:
      price *= 0.9;
      print('Today is Wednesday, price is \$$price');
    case Weekdays.thursday:
      price *= 0.8;
      print('Today is Thursday, price is \$$price');

    case Weekdays.friday:
      price *= 0.7;
      print('Today is Friday, price is \$$price');
    case Weekdays.saturday:
      price *= 1.2;
      print('Today is Saturday, price is \$$price');
    case Weekdays.sunday:
      price *= 1.5;
      print('Today is Sunday, price is \$$price');
  }
}

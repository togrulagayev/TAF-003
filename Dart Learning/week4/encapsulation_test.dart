import 'model/encapsulation.dart';

void main() {
  Person person1 = Person(
    'John',
    30,
  );
  person1.name = 'Doe';
  person1.age = 40;
  person1.changePhoneNumber = "2000";

  print(person1.phoneNumber);
}

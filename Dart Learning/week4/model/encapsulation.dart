void main() {
  Person person1 = Person(
    'John',
    30,
  );
  person1.name = 'Doe';
}

class Person {
  String name;
  int age;
  String? _phoneNumber;
  Person(
    this.name,
    this.age,
  );

  String? get phoneNumber {
    if (_phoneNumber == null) {
      return "No phone number";
    } else {
      return _phoneNumber;
    }
  }

  set changePhoneNumber(String newPhoneNumber) {
    _phoneNumber = _phoneNumber;
  }
}

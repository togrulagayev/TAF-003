class Human {
  String name;
  String surname;
  int age;
  int id;
  String email;
  String phone;

  Human({
    required this.name,
    required this.age,
    required this.email,
    required this.id,
    required this.phone,
    required this.surname,
  });

  void showInfo() {
    print(
        'Name: $name, Surname: $surname, Age: $age, Email: $email, Phone: $phone, ID: $id');
  }

  void eat() {
    print('$name is eating');
  }

  void sleep() {
    print('$name is sleeping');
  }

  void walk() {
    print('$name is walking');
  }
}

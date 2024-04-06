import 'model/classes.dart';
import 'model/classes_2.dart';

void main() {
  // Person person2 = Person('John', 30, 'Black', 5.6, true);
  Person person1 = Person(
    name: 'Jane',
    age: 25,
    skinColor: 'White',
    height: 5.2,
    isMarried: false,
  );

  // Person person1 = Person();

  print('${person1.name} is ${person1.age} years old, ${person1.isMarried}');

  testSmth();
}

void testSmth() {
  Human human1 = Human(
    id: 1,
    name: 'Jane',
    surname: 'Doe',
    age: 25,
    email: '  jane@gmail.comn',
    phone: '123456',
  );

  Human human2 = Human(
      id: 2, name: 'John', surname: 'Doe', age: 30, email: '  ', phone: '');

  human1.showInfo();
  human2.showInfo();
}

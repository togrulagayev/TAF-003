void main() {
  var age2 = 60;
  printName();
  String surname = printLastName();
  // print(surname);
  bool adult = isAdult(age2);
  print(isAdult(age2));
  printAge(age2);
}

// ! No Parameter And No Return Type
void printName() {
  var name = 'John';
  print(name);
}

// ! Parameter And No Return Type
void printAge(int age) {
  print(age);
}

// ! No Parameter And Return Type

String printLastName() {
  return 'Doe';
}

// ! Parameter And Return Type

bool isAdult(int age) {
  if (age >= 18) {
    return true;
  } else {
    return false;
  }
}

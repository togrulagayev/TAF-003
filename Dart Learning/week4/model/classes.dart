class Person {
  String name;
  int age;
  String skinColor;
  double height;
  bool isMarried;

// ! Constructor 1
  // Person(String name1, int age1, String skinColor1, double height1,
  //     bool isMarried1) {
  //   name = name1;
  //   age = age1;
  //   skinColor = skinColor1;
  //   height = height1;
  //   isMarried = isMarried1;
  // }
// ! Constructor 2
  // Person(
  //     String name, int age, String skinColor, double height, bool isMarried) {
  //   this.name = name;
  //   this.age = age;
  //   this.skinColor = skinColor;
  //   this.height = height;
  //   this.isMarried = isMarried;
  // }

  // ! Constructor 3
  // Person(this.name, this.age, this.skinColor, this.height, this.isMarried);

  // ! Constructor 4

  Person({
    required this.name,
    required this.age,
    required this.skinColor,
    required this.height,
    required this.isMarried,
  });
}

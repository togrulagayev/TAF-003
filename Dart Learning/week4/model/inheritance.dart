void main() {
  People person = People(name: "John", age: 30, height: 1.8, weight: 70.0);
  person.display();
  person.sleep();
  person.eat();
  person.breathe();

  print('-' * 50);
  Employee employee = Employee(
    name: "Jane",
    age: 25,
    height: 1.6,
    weight: 50.0,
    salary: 50000.0,
    skills: ["flexible", "social", "hardworking", "team player"],
    experiance: 5,
  );
  employee.display();
  employee.sleep();
  employee.eat();
  employee.breathe();
  employee.work(9, 5);

  People people2 = Employee(
    salary: 0,
    skills: [],
    experiance: 0,
    name: 'name',
    age: 0,
    height: 0,
    weight: 0,
  );

  people2.display();
}

class People {
  String name;
  int age;
  double height;
  double weight;

  People({
    required this.name,
    required this.age,
    required this.height,
    required this.weight,
  });

  void display() {
    print("Name: $name");
    print("Age: $age");
    print("Height: $height");
    print("Weight: $weight");
  }

  void sleep() {
    print("$name is sleeping");
  }

  void eat() {
    print("$name is eating");
  }

  void breathe() {
    print("$name is breathing");
  }
}

class Employee extends People {
  double salary;
  List<String> skills;
  int experiance;

  Employee({
    required this.salary,
    required this.skills,
    required this.experiance,
    required super.name,
    required super.age,
    required super.height,
    required super.weight,
  });

  void work(int from, int to) {
    print("$name is working from $from to $to");
  }
}

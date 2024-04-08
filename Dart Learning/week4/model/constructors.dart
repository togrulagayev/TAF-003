class Employee {
  String? name;
  int? age;
  String? subject;
  double? salary;

  // Constructor
  Employee(this.name, this.age, [this.subject = "N/A", this.salary = 0]);

  Employee.displayConstructor({required this.name, required this.age}) {
    print("Name: $name");
    print("Age: $age");
  }

  // Method
  void display() {
    print("Name: ${this.name}");
    print("Age: ${this.age}");
    print("Subject: ${this.subject}");
    print("Salary: ${this.salary}");
  }
}

class Chair {
  final String name;
  final String color;

// Constructor
  const Chair(this.name, this.color);

// Method
  void display() {
    print("Name: ${this.name}");
    print("Color: ${this.color}");
  }
}

void main() {
  Employee employee = Employee("John", 30, "Math", 50000.0);
  employee.display();

  // Employee employee2 = Employee.displayConstructor(name: "Jane", age: 25);

  Chair chair = Chair("Chair1", "Red");
  chair.display();
}

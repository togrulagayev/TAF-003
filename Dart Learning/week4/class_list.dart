import 'model/student_class.dart';

void main() {
  Student student1 = Student(name: 'John', surname: 'Doe', age: 25);
  Student student2 = Student(name: 'Jane', surname: 'Doe', age: 22);
  Student student3 = Student(name: 'Alice', surname: 'Smith', age: 30);

  List<Student> students = [student1, student2, student3];
  for (var i = 0; i < students.length; i++) {
    print(students[i].name);
  }

  for (var e in students) {
    print(e.name);
  }

  Map<String, Student> studentsMap = {
    'student1': student1,
    'student2': student2,
    'student3': student3,
  };

  print(studentsMap['student1']?.name);
}

import "dart:io";

void main() {
  // *  ?  null-aware operator
  // *  !  null check operator
  // print(name!.length);

  stdout.writeln('What is your name?');
  var name = stdin.readLineSync();
  stdout.write('Your age:\t');
  var age = int.parse(stdin.readLineSync().toString());
  print('Hello $name, you are $age years old');
}

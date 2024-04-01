void main() {
  String age = '60';
  int res = age.toInt();
  print(res);
  // var age2 = int.parse(age);
  // print(age2.runtimeType);
}

extension on String {
  int toInt() {
    return int.parse(this);
  }
}

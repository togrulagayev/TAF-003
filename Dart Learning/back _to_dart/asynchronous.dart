void main() async {
  Future.delayed(Duration(seconds: 3), () {
    print(add());
  });
  var result = await subtract(10, 5);
  print(result);
  Future.delayed(Duration(seconds: 3), () {
    print(multiply(10, 5));
  });
}

// ! Future
int add() {
  var sum = 0;
  for (var i = 0; i < 100000; i++) {
    // print(i);
    sum += i;
  }

  return sum;
}

Future<int> subtract(int a, int b) async {
  return a - b;
}

int multiply(int a, int b) {
  return a * b;
}

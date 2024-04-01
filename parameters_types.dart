void main() {
  int a = 100;
  int b = 60;

  // minus(a, b);
//   // * x =b
//   // * y = a

  // sum(1);

  multiply(num1: b);
  multiply2(num2: b, num1: a);
  divide(x: a, y: b);
}

// ! Positional parameters
void minus(int x, int y) {
  print(x - y);
}

// ! Optional parameters
/// * 10 + 20 + 30 = 60
void sum(int y, [int x = 10, int? z]) {
  print(x + y + z!);
}

// ! Named parameters

// * Optional named parameters
void multiply({int? num1, int? num2}) {
  print(num1! * num2!);
}

// * Default named parameters
void multiply2({int num1 = 0, int num2 = 0}) {
  print((num1 * num2));
}

// * Required named parameters

void divide({required int x, required int y}) {
  print((x / y).toStringAsFixed(2));
}

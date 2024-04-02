typedef Operation = double Function(double, double);
void main() {
  var sum = calculate(1)?.call(15, 30);
  var sub = calculate(2)?.call(15, 30);
  var mul = calculate(3)?.call(15, 30);
  var div = calculate(4)?.call(15, 30);
  var invalid = calculate(5)?.call(15, 30);
  print(sum);
  print(sub);
  print(mul);
  print(div);
  print(invalid);
}
// * 1 - toplama
// * 2 - çıxma
// * 3 - vurma
// * 4 - bölme

// ? ------------------ Function ------------------
Operation? calculate(int choice) {
  Operation? operation;
  switch (choice) {
    case 1:
      operation = (x, y) {
        return x + y;
      };
    case 2:
      operation = (x, y) => x - y;
    case 3:
      operation = (x, y) => x * y;
    case 4:
      operation = (x, y) => x / y;
  }

  return operation;
}

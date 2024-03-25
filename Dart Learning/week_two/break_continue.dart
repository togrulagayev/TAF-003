void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  for (var i = 0; i < numbers.length; i++) {
    switch (numbers[i]) {
      case 4:
        // print('four skipped');

        break;
      default:
        print(numbers[i]);
    }
  }
}

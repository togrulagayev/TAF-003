import '../weeek_one/collections.dart';

void main() {
  // int num1 = int.parse(number);
  // print(num1);

  try {
    int num1 = int.parse(number);
    print(num1);
  } catch (e) {
    print('Int parse sehv geldi');
  }

  String text = 'Lorem impsum';
  print(text);
}

void main() {
  int month = 1;

  // var month2 = DateTime(1883, 9).month;

  switch (month) {
    case 1:
    case 2:
      print('Fevral');
    case 3:
      print('Mart');
    case 4:
      print('Aprel');
    case 5:
      print('May');

    default:
  }

  var x = switch (month) {
    >= 1 || <= 3 => 'Yanvar',
    4 => 'Aprel',
    _ => 'Bele ay yoxdur',
  };
  print(x);
}

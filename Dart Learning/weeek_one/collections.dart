void main() {
  List<String> studentList = [
    'Vuqar',
    'Ruslan',
    'Suat',
    'Perviz', //true
    'Kerim',
    'Nicat',
    'Zeyneb',
    'Perviz'
  ];

  List<String> user = [
    'Veli',
    'Ali',
    'Mehemmed',
    'Hesen',
    'Huseyn',
    'Seymur',
    'Nadir'
  ];
  // studentList.add('Ali'); //! tek element

  studentList.addAll(user); //! bir nece element
  // print(studentList);
  // print(studentList.length);

  // studentList.remove('Perviz'); //! tek element silir.
  // studentList.removeAt(7); //! indexe gore silir.
  // studentList.clear(); //! butun elementleri silir.

  // studentList.shuffle(); //! elementlerin yerini qarishdirir.
  // print(studentList);
  studentList.insert(3, 'Ali'); //! indexe gore element elave edir.

  // print(studentList.contains(
  //     'Perviz'.toLowerCase())); //! elementin olub olmadigini yoxlayir.
  // print(studentList);
  // print(studentList.length);

  List<int> numberList = List.filled(10, 9);

  // List.empty(growable: true);  //! bos list yaradir.
  // numberList.add(1);

  numberList[6] = 5;
  numberList[4] = 7;
  numberList[0] = 111;
  //! indexe gore elementi deyishir.
  // print(numberList);
}
